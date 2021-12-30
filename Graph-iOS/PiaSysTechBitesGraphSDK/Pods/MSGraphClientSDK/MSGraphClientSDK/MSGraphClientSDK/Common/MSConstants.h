//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import <Foundation/Foundation.h>

#ifndef MSConstants_h
#define MSConstants_h

typedef NS_ENUM(NSInteger, MSClientErrorCode)
{
    MSCLientErrorCodeSDKUpperLimitReached        = -1,
    MSClientErrorCodeBadRequest                  = 400,
    MSClientErrorCodeUnauthorized                = 401,
    MSClientErrorCodeForbidden                   = 403,
    MSClientErrorCodeNotFound                    = 404,
    MSClientErrorCodeMethodNotAllowed            = 405,
    MSClientErrorCodeUNACCEPTABLE                = 406,
    MSClientErrorCodeConflict                    = 409,
    MSClientErrorCodeLengthRequired              = 411,
    MSClientErrorCodePreconditionFailed          = 412,
    MSClientErrorCodeRequestEntityTooLarge       = 413,
    MSClientErrorCodeUnsupportedMediaType        = 415,
    MSClientErrorCodeRequestRangeNotSatisfiable  = 416,
    MSClientErrorCodeUnprocessableEntity         = 422,
    MSClientErrorCodeTooManyRequests             = 429,
    MSClientErrorCodeInternalServerError         = 500,
    MSClientErrorCodeNotImplemented              = 501,
    MSClientErrorCodeServiceUnavailable          = 503,
    MSClientErrorCodeGatewayTimeout              = 504,
    MSClientErrorCodeInsufficientStorage         = 507,
    MSClientErrorCodeUnknownError                = 999,
};

typedef NS_ENUM(NSInteger, MSExpectedResponseCodes)
{
    MSExpectedResponseCodesOK                    = 200,
    MSExpectedResponseCodesCreated               = 201,
    MSExpectedResponseCodesAccepted              = 202,
    MSExpectedResponseCodesMovedPermanantly      = 301,
    MSExpectedResponseCodesFound                 = 302,
    MSExpectedResponseCodesSeeOther              = 303,
    MSExpectedResponseCodesNotModified           = 304,
    MSExpectedResponseCodesTemporaryRedirect     = 307,
};

typedef NS_ENUM(NSInteger, MSMiddlewareOptionsType)
{
    MSMiddlewareOptionsTypeNone,
    MSMiddlewareOptionsTypeAuth,
    MSMiddlewareOptionsTypeRedirect,
    MSMiddlewareOptionsTypeRetry
};

extern NSString *const MSGraphBaseURL;
extern NSString *const MSGraphChinaBaseURL;
extern NSString *const MSGraphUSBaseURL;
extern NSString *const MSGraphGermanyBaseURL;

extern NSString *const MSHeaderSdkVersion;
extern NSString *const MSGraphiOSSdkVersionHeaderPrefix;
extern NSString *const MSGraphMacSdkVersionHeaderPrefix;

extern NSString *const MSErrorDomain;

extern NSString *const MSErrorTooManyRedirectsFormatString;
extern NSString *const MSErrorLocationHeaderNotFoundString;
extern NSString *const MSErrorOperationUnsuccessfulString;
extern NSString *const MSErrorMaxRedirectsLimitExceededString;

extern NSString *const MSErrorTooManyRetries;
extern NSString *const MSErrorTooManyRetriesFormatString;
extern NSString *const MSErrorDelayLimitExceededString;
extern NSString *const MSErrorMaxRetriesLimitExceededString;

extern NSString *const HTTPMethodGet;
extern NSString *const HTTPMethodPut;
extern NSString *const HTTPMethodPatch;
extern NSString *const HTTPMethodPost;
extern NSString *const HTTPMethodDelete;

#endif
