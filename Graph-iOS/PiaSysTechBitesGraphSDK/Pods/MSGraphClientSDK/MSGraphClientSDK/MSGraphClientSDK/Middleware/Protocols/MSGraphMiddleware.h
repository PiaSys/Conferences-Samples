//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

@class MSURLSessionTask;

/*
 This protocol defines the required set of methods to be implemented by the Classes which will become the part of middleware chain.
 */

//Completion handler to be called when request finishes
typedef void (^HTTPRequestCompletionHandler)(id data, NSURLResponse * _Nullable response, NSError * _Nullable error);

@protocol MSGraphMiddleware <NSObject>

/*
 This method will be executed to transfer the control from one middleware to next one.
 @param task The task object which needs to executed
 @completionHandler The completion handler to be called one the control comes back.
 */
- (void)execute:(MSURLSessionTask *)task withCompletionHandler:(HTTPRequestCompletionHandler)completionHandler;

/*
 This method will be used to set the next one in middleware chain.
 @param nextMiddleware The next middleware object which will take the control from current one.
 */
- (void)setNext:(id<MSGraphMiddleware>)nextMiddleware;

@end
