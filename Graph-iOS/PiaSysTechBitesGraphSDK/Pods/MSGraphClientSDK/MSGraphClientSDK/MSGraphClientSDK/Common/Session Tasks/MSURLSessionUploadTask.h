//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSURLSessionTask.h"
/**
 An `MSURLSessionTask` to upload content.
 @see MSURLSessionTask
 */
@interface MSURLSessionUploadTask : MSURLSessionTask

/**
 The NSProgress to monitor.
 */

@property (strong, readonly) NSProgress *progress;

/**
 Creates an UploadSessionTask.
 @param request The request to be made.
 @param fileURL The URL to the local file to be uploaded.
 @param client The client that will make the request.
 @param completionHandler The completion to be called on completion.
 @warning Request, fileURL, and client must not be nil.
 */
- (instancetype) initWithRequest:(NSMutableURLRequest *)request
                        fromFile:(NSURL *)fileURL
                          client:(MSHTTPClient *)client
               completionHandler:(MSUploadCompletionHandler)completionHandler;

/**
 Creats an UploadSessionTask.
 @param request The request to be made.
 @param data The data to be uploaded.
 @param client The client that will make the request.
 @param completionHandler The completion to be called on completion.
 @warning Request, data, and client must not be nil.
 */
- (instancetype)initWithRequest:(NSMutableURLRequest *)request
                           data:(NSData *)data
                         client:(MSHTTPClient *)client
              completionHandler:(MSUploadCompletionHandler)completionHandler;

@end
