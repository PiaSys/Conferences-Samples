//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSMiddlewareOptions.h"

@class MSURLSessionTask;

/*
 Methods in this protocol keep you updated with the information that Redirect Handler might throw.
 */
@protocol MSRedirectHandlerDelegate <NSObject>

@optional
- (BOOL)task:(MSURLSessionTask *)task shouldRedirectForResponse:(NSURLResponse *)response;

@end

/*
 This class provides options to control the behaviour of Redirect Handler.
 */
@interface MSRedirectHandlerOptions : NSObject<MSMiddlewareOptions>

/*
 This property is to hold a reference to the class which will implement the Redirect Handler Delegate
 */
@property (nonatomic, weak) id<MSRedirectHandlerDelegate> redirectHandlerDelegate;

/*
 If we keep getting the redirect response codes, then this is the Maximum number of redirects which will be done before finising the execution of a request. Upper limit is 20.
 */
@property (nonatomic, readonly ) NSInteger maxRedirects;

/*
 This method initializes an instance of MSRedirectHandlerOptions with the provided parameters.
 @param maxRedirects The maximum number of redirects that can be performed in case we keep on getting redirect response codes
 @param error If any error is encountered during the initalization, it will be assigned to this address.
 @return The MSRedirectHandlerOptions instance with the provided values.
 */
- (instancetype)initWithMaxRedirects:(NSInteger)maxRedirects andError:(NSError **)error;

@end
