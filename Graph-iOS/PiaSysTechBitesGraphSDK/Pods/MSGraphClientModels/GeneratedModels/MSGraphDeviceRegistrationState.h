// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceRegistrationStateValue){

	MSGraphDeviceRegistrationStateNotRegistered = 0,
	MSGraphDeviceRegistrationStateRegistered = 2,
	MSGraphDeviceRegistrationStateRevoked = 3,
	MSGraphDeviceRegistrationStateKeyConflict = 4,
	MSGraphDeviceRegistrationStateApprovalPending = 5,
	MSGraphDeviceRegistrationStateCertificateReset = 6,
	MSGraphDeviceRegistrationStateNotRegisteredPendingEnrollment = 7,
	MSGraphDeviceRegistrationStateUnknown = 8,
    MSGraphDeviceRegistrationStateEndOfEnum
};

@interface MSGraphDeviceRegistrationState : NSObject

+(MSGraphDeviceRegistrationState*) notRegistered;
+(MSGraphDeviceRegistrationState*) registered;
+(MSGraphDeviceRegistrationState*) revoked;
+(MSGraphDeviceRegistrationState*) keyConflict;
+(MSGraphDeviceRegistrationState*) approvalPending;
+(MSGraphDeviceRegistrationState*) certificateReset;
+(MSGraphDeviceRegistrationState*) notRegisteredPendingEnrollment;
+(MSGraphDeviceRegistrationState*) unknown;

+(MSGraphDeviceRegistrationState*) UnknownEnumValue;

+(MSGraphDeviceRegistrationState*) deviceRegistrationStateWithEnumValue:(MSGraphDeviceRegistrationStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceRegistrationStateValue enumValue;

@end


@interface NSString (MSGraphDeviceRegistrationState)

- (MSGraphDeviceRegistrationState*) toMSGraphDeviceRegistrationState;

@end
