//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//


#import "MSAuthenticationHandlerOptions.h"

@implementation MSAuthenticationHandlerOptions

@synthesize middlewareOptionsType;

- (instancetype)initWithAuthenticationProvider:(id<MSAuthenticationProvider>)authProvider andAuthProviderOptions:(id<MSAuthenticationProviderOptions>)authProviderOptions
{
    self = [super init];
    if(self)
    {
        _authenticationProvider = authProvider;
        _authenticationProviderOptions = authProviderOptions;
        middlewareOptionsType = MSMiddlewareOptionsTypeAuth;
    }
    return self;
}


@end
