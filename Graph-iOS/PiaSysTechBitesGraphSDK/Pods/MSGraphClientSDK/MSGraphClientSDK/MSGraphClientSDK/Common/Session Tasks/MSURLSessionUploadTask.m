//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionUploadTask.h"

@interface MSURLSessionUploadTask()

@property NSURL *fileURL;

@property NSData *data;

@property BOOL isFileUploadTask;

@property (nonatomic,copy) MSUploadCompletionHandler completionHandler;

@end

@implementation MSURLSessionUploadTask

- (instancetype) initWithRequest:(NSMutableURLRequest *)request
                        fromFile:(NSURL *)fileURL
                          client:(MSHTTPClient *)client
               completionHandler:(MSUploadCompletionHandler)completionHandler
{
    NSParameterAssert(fileURL);
    
    self = [super initWithRequest:request client:client];
    if(self)
    {
        _fileURL = fileURL;
        _completionHandler = completionHandler;
        _isFileUploadTask = YES;
        [self createProgress];
    }
    return self;
}

- (instancetype)initWithRequest:(NSMutableURLRequest *)request
                           data:(NSData *)data
                         client:(MSHTTPClient *)client
              completionHandler:(MSUploadCompletionHandler)completionHandler
{
    NSParameterAssert(data);
    
    self = [super initWithRequest:request client:client];
    if (self)
    {
        _data = data;
        _completionHandler = completionHandler;
        _isFileUploadTask = NO;
        [self createProgress];
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
