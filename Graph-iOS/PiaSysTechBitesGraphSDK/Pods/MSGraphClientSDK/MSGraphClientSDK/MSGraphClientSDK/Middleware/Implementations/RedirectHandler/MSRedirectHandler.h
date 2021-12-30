//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//
#import <Foundation/Foundation.h>
#import "MSGraphMiddleware.h"

/*
 This class provides the mechanism to handle redirect response from Graph server. It is implmented as a middleware so it will be called during the execution of network calls.
 */

@class MSRedirectHandlerOptions;

@interface MSRedirectHandler : NSObject<MSGraphMiddleware>

/*
 This method initializes an instance of MSRedirectHandler with the provided MSRedirectHandlerOptions value.
@param redirectHandlerOptions The options which will be used to control the behavior of this instance
 @return Instance of MSRedirectHandler
 */
- (instancetype)initWithOptions:(MSRedirectHandlerOptions *)redirectHandlerOptions;

@end
