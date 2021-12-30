//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

/*
 This protocol defines the requirements to be implemented by the Classes which will define the middleware options.
 */

#import <Foundation/Foundation.h>
#import "MSConstants.h"

@protocol MSMiddlewareOptions <NSObject>

@required

/*
 This property is added to ensure that every option class sets the type of it so that during execution middlewares can pick up the option which is requried by it's implementation.
 */
@property MSMiddlewareOptionsType middlewareOptionsType;

@end
