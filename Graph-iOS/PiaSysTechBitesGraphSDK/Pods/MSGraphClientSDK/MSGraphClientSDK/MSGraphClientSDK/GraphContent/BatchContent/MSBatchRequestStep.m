//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSBatchRequestStep.h"

@implementation MSBatchRequestStep

- (instancetype)initWithId:(NSString *)requestId request:(NSMutableURLRequest *)urlRequest andDependsOn:(NSArray<NSString *> *)requestIds
{
    NSParameterAssert(requestId);
    NSParameterAssert(urlRequest);
    self = [super init];
    if(self)
    {
        _requestId = requestId;
        _request = [urlRequest mutableCopy];
        _arrayOfDependsOnIds = [requestIds mutableCopy];
    }
    return self;
}

@end

