//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

//! Project version number for MSGraphClientSDK.
FOUNDATION_EXPORT double MSGraphClientSDKVersionNumber;

//! Project version string for MSGraphClientSDK.
FOUNDATION_EXPORT const unsigned char MSGraphClientSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MSGraphClientSDK/PublicHeader.h>



#ifndef MSSDK_h
#define MSSDK_h

#import "MSGraphClientSDK/MSAuthenticationProvider.h"
#import "MSGraphClientSDK/MSAuthenticationProviderOptions.h"
#import "MSGraphClientSDK/MSHttpProvider.h"
#import "MSGraphClientSDK/MSGraphMiddleware.h"
#import "MSGraphClientSDK/MSMiddlewareOptions.h"

#import "MSGraphClientSDK/MSURLSessionManager.h"
#import "MSGraphClientSDK/MSClientFactory.h"
#import "MSGraphClientSDK/MSMiddlewareFactory.h"
#import "MSGraphClientSDK/MSConstants.h"
#import "MSGraphClientSDK/MSURLSessionTaskDelegate.h"
#import "MSGraphClientSDK/MSAuthenticationHandler.h"
#import "MSGraphClientSDK/MSRedirectHandler.h"
#import "MSGraphClientSDK/MSRetryHandler.h"

#import "MSGraphClientSDK/MSURLSessionTask.h"
#import "MSGraphClientSDK/MSURLSessionDataTask.h"
#import "MSGraphClientSDK/MSURLSessionDownloadTask.h"
#import "MSGraphClientSDK/MSURLSessionUploadTask.h"

#import "MSGraphClientSDK/MSErrorCodes.h"
#import "MSGraphClientSDK/MSBatchRequestStep.h"
#import "MSGraphClientSDK/MSBatchRequestContent.h"
#import "MSGraphClientSDK/MSBatchResponseContent.h"

#import "MSGraphClientSDK/MSRetryHandlerOptions.h"
#import "MSGraphClientSDK/MSRedirectHandlerOptions.h"
#import "MSGraphClientSDK/MSAuthenticationHandlerOptions.h"

#import "MSGraphClientSDK/MSPageIterator.h"
#import "MSGraphClientSDK/MSLargeFileUploadTask.h"
#import "MSGraphClientSDK/MSGraphOneDriveLargeFileUploadTask.h"

#endif



