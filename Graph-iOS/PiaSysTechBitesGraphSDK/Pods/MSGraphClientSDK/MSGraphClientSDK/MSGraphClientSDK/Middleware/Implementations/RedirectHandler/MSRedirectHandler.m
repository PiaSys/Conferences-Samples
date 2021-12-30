//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSRedirectHandler.h"
#import "MSURLSessionTask.h"
#import "MSConstants.h"
#import "MSRedirectHandlerOptions.h"

@interface MSURLSessionTask()

-(void)setRequest:(NSMutableURLRequest *)request;

@end


@interface MSRedirectHandler()

@property (nonatomic, strong) id<MSGraphMiddleware> nextMiddleware;
@property (nonatomic, strong) MSRedirectHandlerOptions *redirectHandlerOptions;
@end

@implementation MSRedirectHandler

- (instancetype)init
{
    return [self initWithOptions:[[MSRedirectHandlerOptions alloc] init]];
}

- (instancetype)initWithOptions:(MSRedirectHandlerOptions *)redirectHandlerOptions
{
    self = [super init];
    if(self)
    {
        _redirectHandlerOptions = redirectHandlerOptions;
    }
    return self;
}

#pragma mark - MSGraphMiddleware method implmentation
- (void)execute:(MSURLSessionTask *)task withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler
{
    [self execute:task redirectsAttempted:0 withCompletionHandler:completionHandler];
}

- (void)setNext:(id<MSGraphMiddleware>)nextMiddleware
{
    if(_nextMiddleware)
    {
        [nextMiddleware setNext:_nextMiddleware];
    }
    _nextMiddleware = nextMiddleware;
}

#pragma mark - Redirect handler methods
- (void)execute:(MSURLSessionTask *)task redirectsAttempted:(NSInteger)redirectsAttempted withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler
{
    __block NSInteger localRedirectsAttempted = redirectsAttempted;
    __block MSURLSessionTask *blockTask = task;
    __block MSRedirectHandlerOptions *localRedirectHandlerOptions = [task getMiddlewareOptionWithType:MSMiddlewareOptionsTypeRedirect];

    if(!localRedirectHandlerOptions)
    {
        localRedirectHandlerOptions = _redirectHandlerOptions;
    }
    [self.nextMiddleware execute:blockTask withCompletionHandler:^(id data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if(response && [response isKindOfClass:[NSHTTPURLResponse class]])
        {
            if([self isRedirect:[(NSHTTPURLResponse *)response statusCode]])
            {
                //Return the response if maxRedirects allowed are 0 i.e. consumer does not want to redirect
                if(localRedirectHandlerOptions.maxRedirects==0)
                {
                    completionHandler(data, response, error);
                    return ;
                }

                if(localRedirectsAttempted==localRedirectHandlerOptions.maxRedirects)
                {
                    NSDictionary *userInfo = @{
                                               NSLocalizedDescriptionKey: MSErrorOperationUnsuccessfulString,
                                               NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorTooManyRedirectsFormatString,localRedirectsAttempted]
                                               };
                    completionHandler(data, response, [NSError errorWithDomain:MSErrorDomain code:[(NSHTTPURLResponse *)response statusCode] userInfo:userInfo]);
                    return ;
                }
                NSMutableURLRequest *originalRequest = blockTask.request;
                NSDictionary *headerDictionary =[(NSHTTPURLResponse *)response allHeaderFields];

                NSString *newUrlString =[headerDictionary valueForKey:@"Location"];
                if(!newUrlString)
                {
                    NSDictionary *userInfo = @{
                                               NSLocalizedDescriptionKey: MSErrorOperationUnsuccessfulString,
                                               NSLocalizedFailureReasonErrorKey: MSErrorLocationHeaderNotFoundString
                                               };
                    completionHandler(data, response, [NSError errorWithDomain:MSErrorDomain code:[(NSHTTPURLResponse *)response statusCode] userInfo:userInfo]);
                    return ;
                }

                NSMutableURLRequest *newRequest = [originalRequest mutableCopy];
                [newRequest setURL:[NSURL URLWithString:newUrlString]];

                //If the authority of request has changed then we need to remove access token from request headers.
                BOOL shouldRemoveAccessToken =  [self shouldRemoveAccessTokenOfRequest:newRequest withRespectToOriginalRequest:originalRequest];
                if (shouldRemoveAccessToken)
                {
                    [newRequest setValue:nil forHTTPHeaderField:@"Authorization"];
                }
                // status code == 303: change request method from post to get and content to be null
                if([(NSHTTPURLResponse *)response statusCode]==MSExpectedResponseCodesSeeOther)
                {
                    [newRequest setHTTPBody:nil];
                    [newRequest setHTTPMethod:@"GET"];
                }
                [blockTask setRequest:newRequest];
                localRedirectsAttempted++;
                BOOL shouldRedirect = YES;
                if(localRedirectHandlerOptions.redirectHandlerDelegate && [localRedirectHandlerOptions.redirectHandlerDelegate respondsToSelector:@selector(task:shouldRedirectForResponse:)])
                {
                    shouldRedirect = [localRedirectHandlerOptions.redirectHandlerDelegate task:blockTask shouldRedirectForResponse:response];
                }
                if(shouldRedirect)
                {
                    [self execute:blockTask redirectsAttempted:localRedirectsAttempted withCompletionHandler:completionHandler];
                }else
                {
                    completionHandler(data, response, error);
                }
            }
            else
            {
                completionHandler(data, response, error);
            }

        }
        else{
            completionHandler(data, response, error);
        }
    }];
}

- (BOOL)isRedirect:(NSInteger)statusCode
{
    if (statusCode == MSExpectedResponseCodesMovedPermanantly ||
        statusCode == MSExpectedResponseCodesFound ||
        statusCode == MSExpectedResponseCodesSeeOther ||
        statusCode == MSExpectedResponseCodesTemporaryRedirect ||
        statusCode == 308)
    {
        return true;
    }
    return false;
}

- (BOOL)shouldRemoveAccessTokenOfRequest:(NSMutableURLRequest *)newRequest withRespectToOriginalRequest:(NSURLRequest *)originalRequest
{
    if( [newRequest.URL.host caseInsensitiveCompare:originalRequest.URL.host] != NSOrderedSame ||
       ![newRequest.URL.scheme isEqualToString:originalRequest.URL.scheme])
    {
        return YES;
    }
    return NO;
}

@end

