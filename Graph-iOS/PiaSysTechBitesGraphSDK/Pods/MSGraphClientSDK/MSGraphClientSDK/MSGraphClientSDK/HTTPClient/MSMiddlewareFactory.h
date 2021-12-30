//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSGraphMiddleware.h"

@interface MSMiddlewareFactory : NSObject

/*
 Defines the different types of middleware options
 */
typedef NS_ENUM(NSInteger, MSMiddlewareType)
{
    MSMiddlewareTypeAuthentication,
    MSMiddlewareTypeHTTP,
    MSMiddlewareTypeRedirect,
    MSMiddlewareTypeRetry
};

/*
 Creates and returns an instance of middleware.
 @param middlewareType Type of middleware which this method will create
 @return The middleware object of given type.
 */
+(id<MSGraphMiddleware>)createMiddleware:(MSMiddlewareType)middlewareType;

@end
