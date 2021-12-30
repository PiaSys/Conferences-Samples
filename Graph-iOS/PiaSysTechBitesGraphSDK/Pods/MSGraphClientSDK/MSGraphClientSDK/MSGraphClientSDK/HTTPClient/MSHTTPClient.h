//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSGraphMiddleware.h"

@class MSURLSessionDataTask, MSURLSessionDownloadTask, MSURLSessionUploadTask;

/**
 Completion handler to be called from MSHTTPClient on download completion.
 */
typedef void (^MSRawDownloadCompletionHandler)(NSURL *location, NSURLResponse *response, NSError *error);

/**
 Completion handler to be called from MSHTTPClient on upload completion.
 */
typedef void (^MSRawUploadCompletionHandler)(NSData *data, NSURLResponse *response, NSError *error);

/**
 Completion handler to be called form MSHTTPClient on a data task completion.
 */
typedef void (^MSDataCompletionHandler)(NSData *data, NSURLResponse *response, NSError *error);

/*
 This class holds the entry point to middleware chain and exposes methods for making different session tasks.
 */
@interface MSHTTPClient : NSObject

@property (strong, nonatomic) id<MSGraphMiddleware> middleware;

/**
 Creates an MSURLSessionDataTask ready to be executed.
 @param  request The request that should be sent.
 @param  completionHandler The completion handler to be called on completion. It may be nil.
 @return The MSURLSessionDataTask ready to be executed.
 */

- (MSURLSessionDataTask *) dataTaskWithRequest:(nonnull NSMutableURLRequest *)request
                             completionHandler:(MSDataCompletionHandler)completionHandler;

/**
 Creates an MSURLSessionDownloadTask ready to be executed.
 @param  request The request that should be sent.
 @param  completionHandler The completion handler to be called on completion. It may be nil.
 @return The MSURLSessionDownloadTask ready to be executed.
 */

- (MSURLSessionDownloadTask *)downloadTaskWithRequest:(nonnull NSMutableURLRequest *)request completionHandler:(MSRawDownloadCompletionHandler)completionHandler;

/**
 Creates an MSURLSessionUploadTask ready to be executed.
 @param  request The request that should be sent.
 @param  bodyData The data to be uploaded
 @param  completionHandler The completion handler to be called on completion. It may be nil.
 @return The MSURLSessionUploadTask ready to be executed.
 */

- (MSURLSessionUploadTask *)uploadTaskWithRequest:(nonnull NSMutableURLRequest *)request fromData:(nonnull NSData *)bodyData completionHandler:(MSRawUploadCompletionHandler)completionHandler;

/**
 Creates an MSURLSessionUploadTask ready to be executed.
 @param  request The request that should be sent.
 @param  fileURL The file to upload
 @param  completionHandler The completion handler to be called on completion. It may be nil.
 @return The MSURLSessionUploadTask ready to be executed.
 */

- (MSURLSessionUploadTask *)uploadTaskWithRequest:(nonnull NSMutableURLRequest *)request fromFile:(nonnull NSURL *)fileURL completionHandler:(MSRawUploadCompletionHandler)completionHandler;

@end
