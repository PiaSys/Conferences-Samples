//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSMiddlewareOptions.h"
#import "MSAuthenticationProvider.h"
#import "MSAuthenticationProviderOptions.h"
/*
 This class provides options to control the behaviour of Authentication Handler.
 */

@interface MSAuthenticationHandlerOptions : NSObject <MSMiddlewareOptions>

/*
  Authentication Provider instance which will be used to authenticate the ongoing requests.
 */
@property (nonatomic, strong, readonly) id<MSAuthenticationProvider> authenticationProvider;

@property (nonatomic, strong, readonly) id<MSAuthenticationProviderOptions> authenticationProviderOptions;

/*
 This method initializes an instance of MSAuthenticationHandlerOptions with the provided parameter.
 @param authProvider The authentication provider instance which will be used to authenticate the ongoing requests.
 @param authProviderOptions The authentication provider options which will be used to control the behaviour of authentication provider being used to authenticate the ongoing requests.
 @return The MSAuthenticationHandlerOptions instance with the provided value.
 */
- (instancetype)initWithAuthenticationProvider:(id<MSAuthenticationProvider>)authProvider andAuthProviderOptions:(id<MSAuthenticationProviderOptions>)authProviderOptions;

@end
