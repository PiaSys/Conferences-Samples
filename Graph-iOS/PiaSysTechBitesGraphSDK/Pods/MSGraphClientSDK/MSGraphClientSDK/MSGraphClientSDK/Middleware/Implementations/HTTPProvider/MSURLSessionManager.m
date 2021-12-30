//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionManager.h"
#import "MSURLSessionTaskDelegate.h"
#import "MSURLSessionTask.h"
#import "MSURLSessionDataTask.h"
#import "MSURLSessionDownloadTask.h"
#import "MSURLSessionUploadTask.h"

@interface MSURLSessionTask()

- (void)setInnerTask:(NSURLSessionTask *)innerTask;
- (void)setSDKVersionRequestHeader;

@end


@interface MSURLSessionUploadTask()

@property NSURL *fileURL;

@property NSData *data;

@property BOOL isFileUploadTask;

@end


@interface MSURLSessionManager()

@property (strong, nonatomic) NSURLSessionConfiguration *urlSessionConfiguration;

@property (strong, nonatomic) NSURLSession *urlSession;

@property (strong, nonatomic) NSMutableDictionary *taskDelegates;

@property (strong, nonatomic) id<MSGraphMiddleware> nextMiddleware;

@end

@implementation MSURLSessionManager

- (instancetype)init
{
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration.timeoutIntervalForRequest = 100;
    return [self initWithSessionConfiguration:sessionConfiguration];
}

- (instancetype)initWithSessionConfiguration:(NSURLSessionConfiguration *)urlSessionConfiguration
{
    self = [super init];
    if (self)
    {
        _urlSessionConfiguration = urlSessionConfiguration;
        _urlSession = [NSURLSession sessionWithConfiguration:urlSessionConfiguration delegate:self delegateQueue:nil];
        _taskDelegates = [NSMutableDictionary dictionary];
    }
    return self;
}

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(MSDataCompletionHandler)completionHandler;
{
    NSURLSessionDataTask *dataTask = nil;
    dataTask = [self.urlSession dataTaskWithRequest:request];
    
    [self addDelegateForTask:dataTask withProgress:nil completion:completionHandler];
    return dataTask;
}

- (NSURLSessionDownloadTask *) downloadTaskWithRequest:(NSURLRequest *)request progress:(NSProgress * __autoreleasing *)progress completionHandler:(MSRawDownloadCompletionHandler)completionHandler
{
    NSURLSessionDownloadTask *downloadTask = nil;
    downloadTask = [self.urlSession downloadTaskWithRequest:request];

    [self addDelegateForTask:downloadTask withProgress:progress completion:completionHandler];
    return downloadTask;
}

- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request
                                         fromData:(NSData *)data
                                         progress:(NSProgress * __autoreleasing *)progress
                                completionHandler:(void (^)(NSData *, NSURLResponse *, NSError *))completionHandler
{
    NSURLSessionUploadTask *uploadTask = nil;
    uploadTask = [self.urlSession uploadTaskWithRequest:request fromData:data];

    [self addDelegateForTask:uploadTask withProgress:progress completion:completionHandler];
    return uploadTask;
}

- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request
                                         fromFile:(NSURL *)fileURL
                                         progress:(NSProgress * __autoreleasing *)progress
                                completionHandler:(MSRawUploadCompletionHandler)completionHandler
{
    NSURLSessionUploadTask *uploadTask = nil;
    uploadTask = [self.urlSession uploadTaskWithRequest:request fromFile:fileURL];
    
    [self addDelegateForTask:uploadTask withProgress:progress completion:completionHandler];
    return uploadTask;
}

- (void)addDelegateForTask:(NSURLSessionTask *)task
              withProgress:(NSProgress * __autoreleasing *)progress
                completion:(MSURLSessionTaskCompletion)completion
{
    MSURLSessionTaskDelegate *delegate = [[MSURLSessionTaskDelegate alloc]
                                           initWithProgressRef:progress
                                           completion:completion];
    @synchronized(self.taskDelegates)
    {
        self.taskDelegates[@(task.taskIdentifier)] = delegate;
    }
}

- (MSURLSessionTaskDelegate*)getDelegateForTask:(NSURLSessionTask *)task
{
    MSURLSessionTaskDelegate *delegate = nil;
    @synchronized(self.taskDelegates)
    {
        delegate = self.taskDelegates[@(task.taskIdentifier)];
    }
    return delegate;
}

- (void)removeTaskDelegateForTask:(NSURLSessionTask *)task
{
    @synchronized(self.taskDelegates)
    {
        [self.taskDelegates removeObjectForKey:@(task.taskIdentifier)];
    }
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:task];
    
    if (delegate)
    {
        [delegate task:task didCompleteWithError:error];
    }
    [self removeTaskDelegateForTask:task];
}

- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
                                     didReceiveData:(NSData *)data
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:dataTask];
    
    if (delegate)
    {
        [delegate didReceiveData:data];
    }
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
                                didSendBodyData:(int64_t)bytesSent
                                 totalBytesSent:(int64_t)totalBytesSent
                       totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:task];
    
    if (delegate)
    {
        [delegate updateProgressWithBytesSent:totalBytesSent expectedBytes:totalBytesExpectedToSend];
    }
}


- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
                                           didWriteData:(int64_t)bytesWritten
                                      totalBytesWritten:(int64_t)totalBytesWritten
                              totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:downloadTask];
    
    if (delegate)
    {
        [delegate updateProgressWithBytesSent:totalBytesWritten expectedBytes:totalBytesExpectedToWrite];
    }
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:downloadTask];
    
    if (delegate)
    {
        [delegate task:downloadTask didCompleteDownload:location];
        [delegate task:downloadTask didCompleteWithError:nil];
        // remove the task now so we don't call the completion handler when the completion delegate method gets called
        [self removeTaskDelegateForTask:downloadTask];
    }
}

- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task
willPerformHTTPRedirection:(NSHTTPURLResponse *)redirectResponse
        newRequest:(NSURLRequest *)request
 completionHandler:(void (^)(NSURLRequest *))completionHandler
{
    MSURLSessionTaskDelegate *delegate = [self getDelegateForTask:task];

    if (delegate){
        [delegate task:task didRedirectWithResponse:redirectResponse];
    }
    [self removeTaskDelegateForTask:task];
}


#pragma mark - Middelware methods
- (void)execute:(MSURLSessionTask *)task withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler
{
    [task setSDKVersionRequestHeader];
    NSURLSessionTask *sessionTask;
    if([task isKindOfClass:[MSURLSessionDataTask class]])
    {
        sessionTask = [self dataTaskWithRequest:task.request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            completionHandler(data, response, error);
        }];
    }else if([task isKindOfClass:[MSURLSessionDownloadTask class]])
    {
        NSProgress *progress = [(MSURLSessionDownloadTask *)task progress];
        sessionTask = [self downloadTaskWithRequest:task.request progress:&progress completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
            completionHandler(location, response, error);
        }];
    }
    else if([task isKindOfClass:[MSURLSessionUploadTask class]])
    {
        NSProgress *progress = [(MSURLSessionUploadTask *)task progress];
        if([(MSURLSessionUploadTask *)task isFileUploadTask])
        {
            sessionTask = [self uploadTaskWithRequest:task.request fromFile:[(MSURLSessionUploadTask *)task fileURL] progress:&progress completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                completionHandler(data, response, error);
            }];
        }
        else
        {
            sessionTask = [self uploadTaskWithRequest:task.request fromData:[(MSURLSessionUploadTask *)task data] progress:&progress completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                completionHandler(data, response, error);
            }];
        }
    }
    [task setInnerTask:sessionTask];
    [sessionTask resume];
}

- (void)setNext:(id<MSGraphMiddleware>)nextMiddleware
{
    NSAssert(NO, @"This class is last node of middleware chain. So can not set any next middleware after this.");
}

@end
