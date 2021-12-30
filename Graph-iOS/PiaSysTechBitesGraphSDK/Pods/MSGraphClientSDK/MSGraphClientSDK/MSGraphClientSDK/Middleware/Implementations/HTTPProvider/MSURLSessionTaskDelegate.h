//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

typedef void(^MSURLSessionTaskCompletion)(id responseObject, NSURLResponse *response, NSError *error);

/**
 *  'MSURLSessionTaskDelegate' the delegate object for a given NSURLSessionTask
 */
@interface MSURLSessionTaskDelegate : NSObject

/**
 Creates an instance of an MSURLSessionTaskDelegate
 @param  progress an object reference to a progress
 @param  completion a completion handler to be called when the task completes
 */
- (instancetype)initWithProgressRef:(NSProgress * __autoreleasing *)progress
                        completion:(MSURLSessionTaskCompletion)completion;

/**
 Updates the progress object with the given bytes
 @param  sentBytes the number of bytes that have been sent currently, must not be nil.
 @param  expectedBytes the total number of bytes that are expected to be sent, must not be nil.
 */
- (void)updateProgressWithBytesSent:(int64_t)sentBytes expectedBytes:(int64_t)expectedBytes;

/**
 This method should be called when the NSURLSessionData task received any data
 @param  data the data that was received
 */
- (void)didReceiveData:(NSData *)data;

/**
 This method should be called when the task is completed
 @param  task the task that was completed
 @param  error any error that occurred during the task
 */
- (void)task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error;

/**
 This method should be called when the download task is completed
 @param task the task that was completed
 @param downloadLocation the location of the file that was downloaded
 */
- (void)task:(NSURLSessionTask *)task didCompleteDownload:(NSURL *)downloadLocation;

/**
 This method should be called when the task is redirected
 @param task the task that is redirected
 @param response the redirect response which contains the information about next request
 */
- (void)task:(NSURLSessionTask *)task didRedirectWithResponse:(NSURLResponse *)response;
@end
