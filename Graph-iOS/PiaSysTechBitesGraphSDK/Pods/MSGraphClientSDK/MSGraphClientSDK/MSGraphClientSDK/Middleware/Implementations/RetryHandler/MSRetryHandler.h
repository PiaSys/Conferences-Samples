//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSGraphMiddleware.h"

/*
 This class provides the mechanism to handle retry response codes from Graph server. It is implmented as a middleware so it will be called during the execution of network calls.
 */

@class MSRetryHandlerOptions;

@interface MSRetryHandler : NSObject<MSGraphMiddleware>

/*
 This method initializes an instance of MSRetryHandler with the provided MSRetryHandlerOptions value.
 @param retryHandlerOptions The options which will be used to control the behavior of this instance
 @return Instance of MSRetryHandler
 */
- (instancetype)initWithOptions:(MSRetryHandlerOptions *)retryHandlerOptions;

@end
