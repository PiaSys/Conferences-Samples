//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSAuthenticationProvider.h"
#import "MSGraphMiddleware.h"

/*
 This class provides the mechanism to communicate with authentication provider. It is implmented as a middleware so it will be called during the execution of network calls.
 */

@interface MSAuthenticationHandler : NSObject<MSGraphMiddleware>

//Authentication provider which will be used to get access token
@property (nonatomic, strong) id<MSAuthenticationProvider> authenticationProvider;

/*
 This method creates and returns an instance of MSAuthenticationHandler
 @param authProvider Authentication Provider instance
 @return An instance of MSAuthenticationHandler
 */
- (instancetype)initWithAuthenticationProvider:(id<MSAuthenticationProvider>)authProvider;

@end
