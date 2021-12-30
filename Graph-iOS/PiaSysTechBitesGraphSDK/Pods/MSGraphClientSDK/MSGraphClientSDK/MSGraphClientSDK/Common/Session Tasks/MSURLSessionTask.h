//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

@class MSHTTPClient;

#import <Foundation/Foundation.h>
#import "MSHttpProvider.h"
#import "MSMiddlewareOptions.h"

/**
 The Upload Completion Handler to be called when an upload is completed.
 */
typedef MSRawUploadCompletionHandler MSUploadCompletionHandler;

/**
 The download completion handler to be called when a download is completed.
 */
typedef MSRawDownloadCompletionHandler MSDownloadCompletionHandler;

//Completion handler to be called when request finishes
typedef void (^HTTPRequestCompletionHandler)(id data, NSURLResponse * _Nullable response, NSError * _Nullable error);

@interface MSURLSessionTask : NSObject

@property (readonly) NSMutableURLRequest *request;

/**
 The NSURLSessionTask that is created and used to make the actual request.
 This may be nil until the inner task is actually created.
 */
@property (readonly) NSURLSessionTask *innerTask;

/**
 The client that sends the request.
 */
@property (strong) MSHTTPClient *client;

/*
 This property can be used to set an array of custom middleware options specific for the execution of the Task.
 */
@property (nonatomic, strong) NSArray<MSMiddlewareOptions> *middlewareOptionsArray;

/**
 Creates an `MSURLSessionTask` with the given requests and client.
 @param request The request to use. Must not be nil.
 @param client The client to make the request. Must not be nil.
 */
- (instancetype)initWithRequest:(NSMutableURLRequest *)request client:(MSHTTPClient *)client;

/**
 Executes the task.
 @warning The task may send an extra request to reauthenticate the session if the auth token has expired.
 */
- (void)execute;

/**
 Cancels the task.
 */
- (void)cancel;

/*
 This method can be used by to get a specific middleware matching with the type provided in argument.
 @param middlewareOptionsType The type of middleware options that needs to be returned
 @return An instance of middleware options if a match is found otherwise it will be nil.
 */
- (id<MSMiddlewareOptions>)getMiddlewareOptionWithType:(MSMiddlewareOptionsType)middlewareOptionsType;

@end
