//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSClientFactory.h"
#import "MSAuthenticationHandler.h"
#import "MSURLSessionManager.h"
#import "MSMiddlewareFactory.h"
#import "MSRedirectHandler.h"
#import "MSRetryHandler.h"

@implementation MSClientFactory

+(MSHTTPClient *)createHTTPClientWithAuthenticationProvider:(id<MSAuthenticationProvider>)authenticationProvider
{
    NSParameterAssert(authenticationProvider);

    //Creating a default chain of middlewares starting from Authentication

    //Initializing different default middlewares
    MSAuthenticationHandler *authenticationHandler = (MSAuthenticationHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeAuthentication];
    authenticationHandler.authenticationProvider = authenticationProvider;
    MSRedirectHandler *redirectHandler = (MSRedirectHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeRedirect];
    MSRetryHandler *retryHandler = (MSRetryHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeRetry];
    MSURLSessionManager *sessionManager = (MSURLSessionManager *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeHTTP];
    //Creating a default chain
    [authenticationHandler setNext:redirectHandler];
    [redirectHandler setNext:retryHandler];
    [retryHandler setNext:sessionManager];

    return [MSClientFactory createHTTPClientWithMiddleware:authenticationHandler];
}

+(MSHTTPClient *)createHTTPClientWithAuthenticationProvider:(id<MSAuthenticationProvider>)authenticationProvider andSessionConfiguration:(NSURLSessionConfiguration *)sessionConfiguration
{
    NSParameterAssert(authenticationProvider);
    NSParameterAssert(sessionConfiguration);

    //Creating a default chain of middlewares starting from Authentication

    //Initializing different default middlewares
    MSAuthenticationHandler *authenticationHandler = (MSAuthenticationHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeAuthentication];
    authenticationHandler.authenticationProvider = authenticationProvider;
    MSRedirectHandler *redirectHandler = (MSRedirectHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeRedirect];
    MSRetryHandler *retryHandler = (MSRetryHandler *)[MSMiddlewareFactory createMiddleware:MSMiddlewareTypeRetry];
    
    //Create session manager with custom session configuration
    MSURLSessionManager *sessionManager = [[MSURLSessionManager alloc] initWithSessionConfiguration:sessionConfiguration];

    //Creating a default chain
    [authenticationHandler setNext:redirectHandler];
    [redirectHandler setNext:retryHandler];
    [retryHandler setNext:sessionManager];

    return [MSClientFactory createHTTPClientWithMiddleware:authenticationHandler];
}

+(MSHTTPClient *)createHTTPClientWithMiddleware:(id<MSGraphMiddleware>)middleware
{
    NSParameterAssert(middleware);
    
    MSHTTPClient *httpClient = [[MSHTTPClient alloc] init];
    [httpClient setMiddleware:middleware];
    return httpClient;
}

@end

