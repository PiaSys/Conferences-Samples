//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionTaskDelegate.h"

@interface MSURLSessionTaskDelegate()

@property (strong, nonatomic) NSProgress *progress;

@property (strong, nonatomic) NSMutableData *mutableData;

@property (strong, nonatomic) NSURL *downloadPath;

@property (strong, nonatomic) MSURLSessionTaskCompletion completion;

@end

@implementation  MSURLSessionTaskDelegate

- (instancetype)initWithProgressRef:(NSProgress * __autoreleasing *)progress
                        completion:(MSURLSessionTaskCompletion)completion
{
    self = [super init];
    if (self)
    {
        if (progress)
        {
            if (!*progress)
            {
                _progress = [NSProgress progressWithTotalUnitCount:0];
                *progress = _progress;
            }
            else
            {
                _progress = *progress;
            }
        }
        else
        {
            _progress = nil;
        }
        _mutableData = nil;
        _completion = completion;
    }
    return self;
}


- (void)updateProgressWithBytesSent:(int64_t)sentBytes expectedBytes:(int64_t)expectedByes
{
    NSParameterAssert(sentBytes);
    NSParameterAssert(expectedByes);
    
    if (self.progress)
    {
        self.progress.totalUnitCount = expectedByes;
        self.progress.completedUnitCount = sentBytes;
    }
    
}

- (void)didReceiveData:(NSData *)data
{
    if (!self.mutableData)
    {
        self.mutableData = [NSMutableData data];
    }
    [self.mutableData appendData:data];
}

- (void)task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
    if (self.downloadPath && self.completion)
    {
        self.completion(self.downloadPath, task.response, error);
    }
    else if (self.completion)
    {
        self.completion(self.mutableData, task.response, error);
    }
}

- (void)task:(NSURLSessionTask *)task didCompleteDownload:(NSURL *)downloadLocation
{
    self.downloadPath = downloadLocation;
}

- (void)task:(NSURLSessionTask *)task didRedirectWithResponse:(NSURLResponse *)response
{
    if(self.completion)
    {
        self.completion(nil, response, nil);
    }
}

@end
