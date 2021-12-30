//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

/**
 The `MSAuthenticationProviderOptions` is a protocol that is used to define the contract for the options required by AuthenticationProvider */
@protocol MSAuthenticationProviderOptions <NSObject>

@required

/*
 This property is added to ensure that every option class sets the type of it so that during execution middlewares can pick up the option which is requried by it's implementation.
 */
@property NSArray<NSString *> *scopesArray;

@end
