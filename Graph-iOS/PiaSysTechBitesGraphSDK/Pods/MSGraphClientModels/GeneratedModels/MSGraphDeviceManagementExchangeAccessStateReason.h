// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExchangeAccessStateReasonValue){

	MSGraphDeviceManagementExchangeAccessStateReasonNone = 0,
	MSGraphDeviceManagementExchangeAccessStateReasonUnknown = 1,
	MSGraphDeviceManagementExchangeAccessStateReasonExchangeGlobalRule = 2,
	MSGraphDeviceManagementExchangeAccessStateReasonExchangeIndividualRule = 3,
	MSGraphDeviceManagementExchangeAccessStateReasonExchangeDeviceRule = 4,
	MSGraphDeviceManagementExchangeAccessStateReasonExchangeUpgrade = 5,
	MSGraphDeviceManagementExchangeAccessStateReasonExchangeMailboxPolicy = 6,
	MSGraphDeviceManagementExchangeAccessStateReasonOther = 7,
	MSGraphDeviceManagementExchangeAccessStateReasonCompliant = 8,
	MSGraphDeviceManagementExchangeAccessStateReasonNotCompliant = 9,
	MSGraphDeviceManagementExchangeAccessStateReasonNotEnrolled = 10,
	MSGraphDeviceManagementExchangeAccessStateReasonUnknownLocation = 12,
	MSGraphDeviceManagementExchangeAccessStateReasonMfaRequired = 13,
	MSGraphDeviceManagementExchangeAccessStateReasonAzureADBlockDueToAccessPolicy = 14,
	MSGraphDeviceManagementExchangeAccessStateReasonCompromisedPassword = 15,
	MSGraphDeviceManagementExchangeAccessStateReasonDeviceNotKnownWithManagedApp = 16,
    MSGraphDeviceManagementExchangeAccessStateReasonEndOfEnum
};

@interface MSGraphDeviceManagementExchangeAccessStateReason : NSObject

+(MSGraphDeviceManagementExchangeAccessStateReason*) none;
+(MSGraphDeviceManagementExchangeAccessStateReason*) unknown;
+(MSGraphDeviceManagementExchangeAccessStateReason*) exchangeGlobalRule;
+(MSGraphDeviceManagementExchangeAccessStateReason*) exchangeIndividualRule;
+(MSGraphDeviceManagementExchangeAccessStateReason*) exchangeDeviceRule;
+(MSGraphDeviceManagementExchangeAccessStateReason*) exchangeUpgrade;
+(MSGraphDeviceManagementExchangeAccessStateReason*) exchangeMailboxPolicy;
+(MSGraphDeviceManagementExchangeAccessStateReason*) other;
+(MSGraphDeviceManagementExchangeAccessStateReason*) compliant;
+(MSGraphDeviceManagementExchangeAccessStateReason*) notCompliant;
+(MSGraphDeviceManagementExchangeAccessStateReason*) notEnrolled;
+(MSGraphDeviceManagementExchangeAccessStateReason*) unknownLocation;
+(MSGraphDeviceManagementExchangeAccessStateReason*) mfaRequired;
+(MSGraphDeviceManagementExchangeAccessStateReason*) azureADBlockDueToAccessPolicy;
+(MSGraphDeviceManagementExchangeAccessStateReason*) compromisedPassword;
+(MSGraphDeviceManagementExchangeAccessStateReason*) deviceNotKnownWithManagedApp;

+(MSGraphDeviceManagementExchangeAccessStateReason*) UnknownEnumValue;

+(MSGraphDeviceManagementExchangeAccessStateReason*) deviceManagementExchangeAccessStateReasonWithEnumValue:(MSGraphDeviceManagementExchangeAccessStateReasonValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExchangeAccessStateReasonValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExchangeAccessStateReason)

- (MSGraphDeviceManagementExchangeAccessStateReason*) toMSGraphDeviceManagementExchangeAccessStateReason;

@end
