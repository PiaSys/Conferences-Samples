//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>
#import "MSHTTPClient.h"
#import "MSAuthenticationProvider.h"

@interface MSClientFactory : NSObject

/*
 Initializes and returns an instance of MSHTTPClient class with a default chain of middleware to handle the HTTP calls.

 @param authenticationProvider Instance of the class which implements the methods of MSAuthenticationProvider
 @return MSHTTPClient instance
 */

+(MSHTTPClient *)createHTTPClientWithAuthenticationProvider:(id<MSAuthenticationProvider>)authenticationProvider;

/*
 Initializes and returns an instance of MSHTTPClient class with a default chain of middleware to handle the HTTP calls.

 @param authenticationProvider Instance of the class which implements the methods of MSAuthenticationProvider
 @param sessionConfiguration Instance of NSURLSessionConfiguration which will be used to create the NSURLSession for this client Instance.
 @return MSHTTPClient instance
 */
+(MSHTTPClient *)createHTTPClientWithAuthenticationProvider:(id<MSAuthenticationProvider>)authenticationProvider andSessionConfiguration:(NSURLSessionConfiguration *)sessionConfiguration;
/*
 Initializes and returns an instance of MSHTTPClient class with a custom chain of middleware to handle the HTTP calls.

 @param middleware Instance of a class which will be the first node in the custom chain of middleware.
 @return MSHTTPClient instance
 */

+(MSHTTPClient *)createHTTPClientWithMiddleware:(id<MSGraphMiddleware>)middleware;

@end
