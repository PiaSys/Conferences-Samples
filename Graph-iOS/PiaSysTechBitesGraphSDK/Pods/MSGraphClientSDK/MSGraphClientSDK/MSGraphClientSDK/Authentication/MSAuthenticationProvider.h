//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSAuthenticationProviderOptions.h"

typedef void(^MSAuthenticationCompletion)(NSMutableURLRequest *request, NSError *error);

/**
 The `MSAuthenticationProvider` is a protocol that is used to inject authentication into the MSHTTPClient.
 It should handle all initial authentication, refreshing, and returning the access token.
 */
@protocol MSAuthenticationProvider <NSObject>

/**
 Gets the access token. This method should be implemented by a class which should provide the capability of providing the access token.
 @param authProviderOptions Options which can be used to control the behaviour of AuthenticationProvider
 @param completion The completion handler to be called when access token or an error can be returned.
 */

- (void) getAccessTokenForProviderOptions:(id<MSAuthenticationProviderOptions>)authProviderOptions andCompletion:(void (^)(NSString *accessToken, NSError *error))completion;

@end
