//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

#ifndef MSErrorCodes_h
#define MSErrorCodes_h


typedef NS_ENUM(NSInteger, MSErrorCode)
{
    MSErrorCodeEmptyRequestId                                = -62300,
    MSErrorCodeNonUniqueRequestId                            = -62301,
    MSErrorCodeMaximumLimitReached                           = -62302,
    MSErrorCodeRequestIdNotAvailable                         = -62303
};

extern NSString *const MSErrorStringEmptyRequestIdDescription;
extern NSString *const MSErrorStringEmptyRequestIdReason;

extern NSString *const MSErrorStringNonUniqueRequestIdDescription;
extern NSString *const MSErrorStringNonUniqueRequestIdReason;

extern NSString *const MSErrorStringMaximumBatchStepLimitReachedDescription;
extern NSString *const MSErrorStringMaximumBatchStepLimitReachedReason;

extern NSString *const MSErrorStringRequestIdNotAvailableDescription;
extern NSString *const MSErrorStringRequestIdNotAvailableReason;

#endif
