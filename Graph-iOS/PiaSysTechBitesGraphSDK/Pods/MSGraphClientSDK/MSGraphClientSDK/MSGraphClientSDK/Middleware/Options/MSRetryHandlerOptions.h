//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSMiddlewareOptions.h"

@class MSURLSessionTask;

/*
Methods in this protocol keep you updated with the information that Retry Handler might throw.
 */
@protocol MSRetryHandlerDelegate <NSObject>

@optional
- (BOOL)task:(MSURLSessionTask *)task shouldRetryAfter:(NSInteger)retryAfter retryAttempt:(NSInteger)retryAttempt forResponse:(NSURLResponse *)response;

@end

/*
This class provides options to control the behaviour of Retry Handler.
 */
@interface MSRetryHandlerOptions : NSObject<MSMiddlewareOptions>

/*
 This property is to hold a reference to the class which will implement the Retry Handler Delegate
 */
@property (nonatomic, weak) id<MSRetryHandlerDelegate> retryHandlerDelegate;

/*
 Delay which will be used by Retry Handler to determine the interval after which it will retry in case there is no retry-after header present in the response. Upper limit is 180 seconds.
 */
@property (nonatomic, readonly) NSInteger delay;

/*
 If we keep getting the retry response codes, then this is the Maximum number of retries which will be done before finising the execution of a request. Upper limit is 10.
 */
@property (nonatomic, readonly ) NSInteger maxRetries;

/*
 This method initializes an instance of MSRetryHandlerOptions with the provided parameters.
 @param delay The delay value to be used in absence of a retry-after header
 @param maxRetries The maximum number of retries that can be performed in case we keep on getting retry response codes
 @param error If any error is encountered during the initalization, it will be assigned to this address.
 @return The MSRetryHandlerOptions instance with the provided values.
 */
- (instancetype)initWithDelay:(NSInteger)delay maxRetries:(NSInteger)maxRetries andError:(NSError **)error;

@end

