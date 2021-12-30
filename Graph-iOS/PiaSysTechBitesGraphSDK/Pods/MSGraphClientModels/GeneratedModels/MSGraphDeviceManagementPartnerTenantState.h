// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementPartnerTenantStateValue){

	MSGraphDeviceManagementPartnerTenantStateUnknown = 0,
	MSGraphDeviceManagementPartnerTenantStateUnavailable = 1,
	MSGraphDeviceManagementPartnerTenantStateEnabled = 2,
	MSGraphDeviceManagementPartnerTenantStateTerminated = 3,
	MSGraphDeviceManagementPartnerTenantStateRejected = 4,
	MSGraphDeviceManagementPartnerTenantStateUnresponsive = 5,
    MSGraphDeviceManagementPartnerTenantStateEndOfEnum
};

@interface MSGraphDeviceManagementPartnerTenantState : NSObject

+(MSGraphDeviceManagementPartnerTenantState*) unknown;
+(MSGraphDeviceManagementPartnerTenantState*) unavailable;
+(MSGraphDeviceManagementPartnerTenantState*) enabled;
+(MSGraphDeviceManagementPartnerTenantState*) terminated;
+(MSGraphDeviceManagementPartnerTenantState*) rejected;
+(MSGraphDeviceManagementPartnerTenantState*) unresponsive;

+(MSGraphDeviceManagementPartnerTenantState*) UnknownEnumValue;

+(MSGraphDeviceManagementPartnerTenantState*) deviceManagementPartnerTenantStateWithEnumValue:(MSGraphDeviceManagementPartnerTenantStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementPartnerTenantStateValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementPartnerTenantState)

- (MSGraphDeviceManagementPartnerTenantState*) toMSGraphDeviceManagementPartnerTenantState;

@end
