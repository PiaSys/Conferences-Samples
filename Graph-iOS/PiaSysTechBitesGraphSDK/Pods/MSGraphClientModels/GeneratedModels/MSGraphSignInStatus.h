// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSignInStatus : MSObject

@property (nonatomic, setter=setErrorCode:, getter=errorCode) int32_t errorCode;
@property (nullable, nonatomic, setter=setFailureReason:, getter=failureReason) NSString* failureReason;
@property (nullable, nonatomic, setter=setAdditionalDetails:, getter=additionalDetails) NSString* additionalDetails;

@end
