// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceEnrollmentFailureReasonValue){

	MSGraphDeviceEnrollmentFailureReasonUnknown = 0,
	MSGraphDeviceEnrollmentFailureReasonAuthentication = 1,
	MSGraphDeviceEnrollmentFailureReasonAuthorization = 2,
	MSGraphDeviceEnrollmentFailureReasonAccountValidation = 3,
	MSGraphDeviceEnrollmentFailureReasonUserValidation = 4,
	MSGraphDeviceEnrollmentFailureReasonDeviceNotSupported = 5,
	MSGraphDeviceEnrollmentFailureReasonInMaintenance = 6,
	MSGraphDeviceEnrollmentFailureReasonBadRequest = 7,
	MSGraphDeviceEnrollmentFailureReasonFeatureNotSupported = 8,
	MSGraphDeviceEnrollmentFailureReasonEnrollmentRestrictionsEnforced = 9,
	MSGraphDeviceEnrollmentFailureReasonClientDisconnected = 10,
	MSGraphDeviceEnrollmentFailureReasonUserAbandonment = 11,
    MSGraphDeviceEnrollmentFailureReasonEndOfEnum
};

@interface MSGraphDeviceEnrollmentFailureReason : NSObject

+(MSGraphDeviceEnrollmentFailureReason*) unknown;
+(MSGraphDeviceEnrollmentFailureReason*) authentication;
+(MSGraphDeviceEnrollmentFailureReason*) authorization;
+(MSGraphDeviceEnrollmentFailureReason*) accountValidation;
+(MSGraphDeviceEnrollmentFailureReason*) userValidation;
+(MSGraphDeviceEnrollmentFailureReason*) deviceNotSupported;
+(MSGraphDeviceEnrollmentFailureReason*) inMaintenance;
+(MSGraphDeviceEnrollmentFailureReason*) badRequest;
+(MSGraphDeviceEnrollmentFailureReason*) featureNotSupported;
+(MSGraphDeviceEnrollmentFailureReason*) enrollmentRestrictionsEnforced;
+(MSGraphDeviceEnrollmentFailureReason*) clientDisconnected;
+(MSGraphDeviceEnrollmentFailureReason*) userAbandonment;

+(MSGraphDeviceEnrollmentFailureReason*) UnknownEnumValue;

+(MSGraphDeviceEnrollmentFailureReason*) deviceEnrollmentFailureReasonWithEnumValue:(MSGraphDeviceEnrollmentFailureReasonValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceEnrollmentFailureReasonValue enumValue;

@end


@interface NSString (MSGraphDeviceEnrollmentFailureReason)

- (MSGraphDeviceEnrollmentFailureReason*) toMSGraphDeviceEnrollmentFailureReason;

@end
