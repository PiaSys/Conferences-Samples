//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSHTTPClient.h"
#import "MSAuthenticationProvider.h"
#import "MSURLSessionDataTask.h"
#import "MSURLSessionDownloadTask.h"
#import "MSURLSessionUploadTask.h"

@implementation MSHTTPClient

- (MSURLSessionDataTask *)dataTaskWithRequest:(NSMutableURLRequest *)request completionHandler:(MSDataCompletionHandler)completionHandler
{
    MSURLSessionDataTask *dataTask = [[MSURLSessionDataTask alloc] initWithRequest:request client:self completion:completionHandler];
    return dataTask;
}

- (MSURLSessionDownloadTask *)downloadTaskWithRequest:(NSMutableURLRequest *)request completionHandler:(MSRawDownloadCompletionHandler)completionHandler
{
    MSURLSessionDownloadTask *downloadTask = [[MSURLSessionDownloadTask alloc] initWithRequest:request client:self completionHandler:completionHandler];
    return downloadTask;
}

- (MSURLSessionUploadTask *)uploadTaskWithRequest:(NSMutableURLRequest *)request fromData:(nonnull NSData *)bodyData completionHandler:(MSRawUploadCompletionHandler)completionHandler
{
    MSURLSessionUploadTask *uploadTask = [[MSURLSessionUploadTask alloc] initWithRequest:request data:bodyData client:self completionHandler:completionHandler];
    return uploadTask;
}

- (MSURLSessionUploadTask *)uploadTaskWithRequest:(NSMutableURLRequest *)request fromFile:(nonnull NSURL *)fileURL completionHandler:(MSRawUploadCompletionHandler)completionHandler
{
    MSURLSessionUploadTask *uploadTask = [[MSURLSessionUploadTask alloc] initWithRequest:request fromFile:fileURL client:self completionHandler:completionHandler];
    return uploadTask;
}

@end
