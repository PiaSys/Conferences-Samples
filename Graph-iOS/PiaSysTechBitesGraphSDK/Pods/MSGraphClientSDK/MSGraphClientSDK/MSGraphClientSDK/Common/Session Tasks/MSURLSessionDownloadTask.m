//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionDownloadTask.h"
#import "MSHTTPClient.h"

@interface MSURLSessionDownloadTask()

@property (nonatomic, copy) MSDownloadCompletionHandler completionHandler;

@end

@implementation MSURLSessionDownloadTask

- (instancetype)initWithRequest:(NSMutableURLRequest *)request
                         client:(MSHTTPClient *)client
             completionHandler:(MSDownloadCompletionHandler)completionHandler
{
    self = [super initWithRequest:request client:client];
    if (self)
    {
        [self createProgress];
        _completionHandler = completionHandler;
    }
    return self;
}

- (NSProgress *)createProgress
{
    NSProgress *progress = [NSProgress progressWithTotalUnitCount:0];
    _progress = progress;
    return progress;
}

- (void)taskCompletedWithData:(id)data response:(NSURLResponse *)response andError:(NSError *)error
{
    if(_completionHandler)
    {
        _completionHandler(data, response, error);
    }
}

@end
