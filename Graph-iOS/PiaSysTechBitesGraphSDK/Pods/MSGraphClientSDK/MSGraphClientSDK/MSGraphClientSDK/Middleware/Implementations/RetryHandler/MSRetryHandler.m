//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSRetryHandler.h"
#import "MSURLSessionTask.h"
#import "MSConstants.h"
#import "MSRetryHandlerOptions.h"

NSString * const RETRY_AFTER = @"Retry-After";
NSString * const RETRY_ATTEMPT = @"Retry-Attempt";
NSString * const TRANSFER_ENCODING = @"Transfer-Encoding";

@interface MSURLSessionTask()

-(void)setRequest:(NSMutableURLRequest *)request;

@end

@interface MSRetryHandler()

@property (nonatomic, strong) id<MSGraphMiddleware> nextMiddleware;
@property (nonatomic, strong) MSRetryHandlerOptions *retryHandlerOptions;

@end

@implementation MSRetryHandler

- (instancetype)init
{
    return [self initWithOptions:[[MSRetryHandlerOptions alloc] init]];
}

- (instancetype)initWithOptions:(MSRetryHandlerOptions *)retryHandlerOptions
{
    self = [super init];
    if(self)
    {
        _retryHandlerOptions = retryHandlerOptions;
    }
    return self;
}

#pragma mark - MSGraphMiddleware method implmentation
- (void)execute:(MSURLSessionTask *)task withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler
{
    [self execute:task retriesAttempted:0 withCompletionHandler:completionHandler];
}

- (void)setNext:(id<MSGraphMiddleware>)nextMiddleware
{
    if(_nextMiddleware)
    {
        [nextMiddleware setNext:_nextMiddleware];
    }
    _nextMiddleware = nextMiddleware;

}

#pragma mark - Retry Handler methods
- (void)execute:(MSURLSessionTask *)task retriesAttempted:(NSInteger)retriesAttempted withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler
{
    __block NSInteger localRetriesAttempted = retriesAttempted;
    __block MSURLSessionTask *blockTask = task;
    __block MSRetryHandlerOptions *localRetryHandlerOptions = [task getMiddlewareOptionWithType:MSMiddlewareOptionsTypeRetry];

    if(!localRetryHandlerOptions)
    {
        localRetryHandlerOptions = _retryHandlerOptions;
    }

    [self.nextMiddleware execute:blockTask withCompletionHandler:^(id data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(response && [response isKindOfClass:[NSHTTPURLResponse class]])
        {
            if([self isRetry:[(NSHTTPURLResponse *)response statusCode]] && [self isBuffered:blockTask.request forResponse:(NSHTTPURLResponse *)response])
            {
                //Return the response if maxRetries allowed are 0 i.e. consumer does not want to retry
                if(localRetryHandlerOptions.maxRetries==0)
                {
                    completionHandler(data, response, error);
                    return ;
                }
                //Return an error if maximum retry attempt limit is reached
                if(localRetriesAttempted==localRetryHandlerOptions.maxRetries)
                {
                    NSDictionary *userInfo = @{
                                               NSLocalizedDescriptionKey: MSErrorTooManyRetries,
                                               NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorTooManyRetriesFormatString,(long)localRetriesAttempted]
                                               };
                    completionHandler(data, response, [NSError errorWithDomain:MSErrorDomain code:[(NSHTTPURLResponse *)response statusCode] userInfo:userInfo]);
                    return ;
                }

                //Get the delay before next retry attempt
                double delay = [self retryDelay:(NSHTTPURLResponse *)response andRetryCount:localRetriesAttempted forOptionsDelay:localRetryHandlerOptions.delay];

                localRetriesAttempted++;

                //Set Retry-Attempt header on request to track how many requests were made via retry handler
                [blockTask setRequest:[self updateRetryAttemptHeader:blockTask.request withRetryAttemptCount:localRetriesAttempted]];

                BOOL shouldRetry = YES;
                if(localRetryHandlerOptions.retryHandlerDelegate && [localRetryHandlerOptions.retryHandlerDelegate respondsToSelector:@selector(task:shouldRetryAfter:retryAttempt:forResponse:)]){
                    shouldRetry = [localRetryHandlerOptions.retryHandlerDelegate task:blockTask shouldRetryAfter:delay retryAttempt:localRetriesAttempted forResponse:response];
                }
                if(shouldRetry){
                //Dispatch the execution of next retry on Global queue after the delay
                dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
                dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
                    //code to be executed on the global queue after delay
                    [self execute:blockTask retriesAttempted:localRetriesAttempted withCompletionHandler:completionHandler];
                });
                }
                else{
                    completionHandler(data,response,error);
                }
            }
            else
            {
                completionHandler(data, response, error);
            }
        }
        else
        {
            completionHandler(data, response, error);
        }
    }];
}

- (BOOL)isRetry:(NSInteger)statusCode
{
    if (statusCode == MSClientErrorCodeTooManyRequests ||
        statusCode == MSClientErrorCodeServiceUnavailable ||
        statusCode == MSClientErrorCodeGatewayTimeout)
    {
        return true;
    }
    return false;
}

- (BOOL)isBuffered:(NSURLRequest *)request forResponse:(NSHTTPURLResponse *)response
{
    NSData *requestBody = request.HTTPBody;

    BOOL isTransferEncodingChunked = [response.allHeaderFields valueForKey:TRANSFER_ENCODING] && [[response.allHeaderFields valueForKey:TRANSFER_ENCODING] isEqualToString:@"chunked"];

    BOOL isHTTPMethodPutPatchOrPost = ([request.HTTPMethod isEqualToString:HTTPMethodPut] || [request.HTTPMethod isEqualToString:HTTPMethodPatch] || [request.HTTPMethod isEqualToString:HTTPMethodPost]);

    if(isHTTPMethodPutPatchOrPost && requestBody && isTransferEncodingChunked)
    {
        return false;
    }
    return true;
}

- (double)retryDelay:(NSHTTPURLResponse *)response andRetryCount:(NSInteger)retryCount forOptionsDelay:(NSInteger)optionsDelay
{
    double delay = 0;

    NSDictionary *responseHeaders = [response allHeaderFields];
    if(responseHeaders && [responseHeaders objectForKey:RETRY_AFTER])
    {
        delay = [[responseHeaders objectForKey:RETRY_AFTER] doubleValue];
    }
    else
    {
        delay = retryCount==0 ? optionsDelay : pow(2, retryCount)+optionsDelay;
        delay = delay>180 ? 180 : delay;
    }
    return delay;
}

- (NSMutableURLRequest *)updateRetryAttemptHeader:(NSMutableURLRequest *)request withRetryAttemptCount:(NSInteger)retryAttempt
{
    [request setValue:[NSString stringWithFormat:@"%ld",(long)retryAttempt] forHTTPHeaderField:RETRY_ATTEMPT];
    return request;
}

@end
