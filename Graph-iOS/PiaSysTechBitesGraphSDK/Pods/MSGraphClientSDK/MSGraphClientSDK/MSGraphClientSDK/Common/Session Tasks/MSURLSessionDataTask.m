//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionDataTask.h"
#import "MSHTTPClient.h"

@interface MSURLSessionDataTask()

@property (nonatomic, copy) MSDataCompletionHandler completionHandler;

@end

@implementation MSURLSessionDataTask

- (instancetype)initWithRequest:(NSMutableURLRequest *)request
                         client:(MSHTTPClient *)client
                     completion:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler
{
    self = [super initWithRequest:request client:client];
    if (self)
    {
        _completionHandler = completionHandler;
    }
    return self;
}

- (void)taskCompletedWithData:(id)data response:(NSURLResponse *)response andError:(NSError *)error
{
    if(_completionHandler)
    {
        _completionHandler(data, response, error);
    }
}

@end
