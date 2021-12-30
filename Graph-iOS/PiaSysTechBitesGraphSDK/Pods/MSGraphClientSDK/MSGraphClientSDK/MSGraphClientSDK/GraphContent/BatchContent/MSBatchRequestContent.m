//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSBatchRequestContent.h"
#import "MSBatchRequestStep.h"
#import "MSConstants.h"
#import "MSErrorCodes.h"

@interface MSBatchRequestContent()

@property (strong, nonatomic) NSMutableArray<MSBatchRequestStep *> * batchRequestStepsArray;

@end

@implementation MSBatchRequestContent
{
    NSInteger maxNumberOfRequests;
}

- (instancetype)initWithRequests:(NSArray<MSBatchRequestStep *> *)batchRequestStepsArray error:(NSError *__autoreleasing *)error
{
    self = [super init];
    if(self)
    {
        //Batch requests are currently limited to 20 individual requests by Graph server.
        maxNumberOfRequests = 20;
        //Check whether number of request steps in array are more than the limit
        if(batchRequestStepsArray.count > maxNumberOfRequests)
        {
            NSDictionary *userInfo = @{
                                       NSLocalizedDescriptionKey: MSErrorStringMaximumBatchStepLimitReachedDescription,
                                       NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorStringMaximumBatchStepLimitReachedReason,(long)maxNumberOfRequests]
                                       };
            *error = [NSError errorWithDomain:MSErrorDomain code:MSErrorCodeMaximumLimitReached userInfo:userInfo];
        }
        else
        {
            for(MSBatchRequestStep *batchRequestStep in batchRequestStepsArray)
            {
                [self addBatchRequestStep:batchRequestStep error:error];
            }
        }
    }
    return self;
}

- (void)addBatchRequestStep:(MSBatchRequestStep *)requestStep error:(NSError *__autoreleasing *)error
{
    //Check for empty requestId
    if([requestStep.requestId isEqualToString:@""])
    {
        NSDictionary *userInfo = @{
                                   NSLocalizedDescriptionKey: MSErrorStringEmptyRequestIdDescription,
                                   NSLocalizedFailureReasonErrorKey: MSErrorStringEmptyRequestIdReason
                                   };
        *error = [NSError errorWithDomain:MSErrorDomain code:MSErrorCodeEmptyRequestId userInfo:userInfo];
        return;
    }

    //Check whether the limit for maximum number of request steps is reached
    if(_batchRequestStepsArray && _batchRequestStepsArray.count==maxNumberOfRequests)
    {
        NSDictionary *userInfo = @{
                                   NSLocalizedDescriptionKey: MSErrorStringMaximumBatchStepLimitReachedDescription,
                                   NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorStringMaximumBatchStepLimitReachedReason,(long)maxNumberOfRequests]
                                   };
        *error = [NSError errorWithDomain:MSErrorDomain code:MSErrorCodeMaximumLimitReached userInfo:userInfo];
        return;
    }

    if(!_batchRequestStepsArray)
    {
        _batchRequestStepsArray = [NSMutableArray new];
    }

    //Check whether there is alreay a request step with the same requestId in array
    for(MSBatchRequestStep *requestStepFromArray in _batchRequestStepsArray)
    {
        if([requestStep.requestId isEqualToString:requestStepFromArray.requestId])
        {
            NSDictionary *userInfo = @{
                                       NSLocalizedDescriptionKey: MSErrorStringNonUniqueRequestIdDescription,
                                       NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorStringNonUniqueRequestIdReason,requestStep.requestId]
                                       };
            *error = [NSError errorWithDomain:MSErrorDomain code:MSErrorCodeNonUniqueRequestId userInfo:userInfo];
            return;
        }
    }
    [_batchRequestStepsArray addObject:requestStep];
}

- (void)removeBatchRequesStepWithId:(NSString *)requestId error:(NSError *__autoreleasing *)error
{
    BOOL didFindStep = NO;
    for (long i = _batchRequestStepsArray.count-1; i >= 0; i--)
    {
        MSBatchRequestStep *requestStep = _batchRequestStepsArray[i];
        for (long j = requestStep.arrayOfDependsOnIds.count-1; j >= 0; j--)
        {
            NSString *dependsOnId = requestStep.arrayOfDependsOnIds[j];
            if([dependsOnId isEqualToString:requestId])
            {
                [requestStep.arrayOfDependsOnIds removeObjectAtIndex:j];
            }
        }
        if(!didFindStep && [requestId isEqualToString:requestStep.requestId])
        {
            [_batchRequestStepsArray removeObjectAtIndex:i];
            didFindStep = YES;
        }
    }
    if(!didFindStep)
    {
        NSDictionary *userInfo = @{
                                   NSLocalizedDescriptionKey: MSErrorStringRequestIdNotAvailableDescription,
                                   NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:MSErrorStringRequestIdNotAvailableReason,requestId]
                                   };
        *error = [NSError errorWithDomain:MSErrorDomain code:MSErrorCodeRequestIdNotAvailable userInfo:userInfo];
    }
}

- (NSMutableDictionary *)getBatchRequestContent
{
    NSMutableDictionary *batchRequestContentDictionary = [NSMutableDictionary new];

    NSMutableArray *batchContentArray = [NSMutableArray new];
    for(MSBatchRequestStep *requestStep in _batchRequestStepsArray)
    {
        [batchContentArray addObject:[self getBatchRequestDictionaryFromRequestStep:requestStep]];
    }
    [batchRequestContentDictionary setObject:batchContentArray forKey:@"requests"];
    return [batchRequestContentDictionary mutableCopy];
}

- (NSMutableDictionary *)getBatchRequestDictionaryFromRequestStep:(MSBatchRequestStep *)batchRequestStep
{
    NSMutableDictionary *requestDictionary = [NSMutableDictionary new];
    [requestDictionary setObject:batchRequestStep.requestId forKey:@"id"];
    [requestDictionary setObject:[batchRequestStep.request.URL absoluteString] forKey:@"url"];
    [requestDictionary setObject:batchRequestStep.request.HTTPMethod forKey:@"method"];
    if(batchRequestStep.request.allHTTPHeaderFields)
    {
        [requestDictionary setObject:batchRequestStep.request.allHTTPHeaderFields forKey:@"headers"];
    }
    if(batchRequestStep.request.HTTPBody)
    {
        id requestBody;
        NSError *error;
        NSDictionary *requestBodyDictionary = [NSJSONSerialization JSONObjectWithData:batchRequestStep.request.HTTPBody options:kNilOptions error:&error];
        if(!error && requestBodyDictionary)
        {
            requestBody = requestBodyDictionary;
        }
        else
        {
            requestBody = [batchRequestStep.request.HTTPBody base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
        }
        [requestDictionary setObject:requestBody forKey:@"body"];
    }
    if(batchRequestStep.arrayOfDependsOnIds)
    {
        [requestDictionary setObject:batchRequestStep.arrayOfDependsOnIds forKey:@"dependsOn"];
    }
    return requestDictionary;
}

@end

