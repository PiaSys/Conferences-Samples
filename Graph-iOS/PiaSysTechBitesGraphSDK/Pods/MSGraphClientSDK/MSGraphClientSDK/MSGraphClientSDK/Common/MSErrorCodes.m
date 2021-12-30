//
// Copyright (c) Microsoft Corporation. All Rights Reserved. Licensed under the MIT License. See License in the project root for license information.
//

#import "MSErrorCodes.h"

NSString *const MSErrorStringEmptyRequestIdDescription                  = @"Empty id for request";
NSString *const MSErrorStringEmptyRequestIdReason                       = @"Id for a request is empty, Please provide a unique id.";

NSString *const MSErrorStringNonUniqueRequestIdDescription              = @"Duplicate RequestId Error";
NSString *const MSErrorStringNonUniqueRequestIdReason                   = @"Couldn't add request with duplicate id %@, Make the id of requests unique.";

NSString *const MSErrorStringMaximumBatchStepLimitReachedDescription    = @"Limit Exceeded Error";
NSString *const MSErrorStringMaximumBatchStepLimitReachedReason         = @"Maximum requests limit exceeded, Max allowed number of requests are %ld";

NSString *const MSErrorStringRequestIdNotAvailableDescription           = @"Request id not found";
NSString *const MSErrorStringRequestIdNotAvailableReason                = @"Request id %@ is not present.";

