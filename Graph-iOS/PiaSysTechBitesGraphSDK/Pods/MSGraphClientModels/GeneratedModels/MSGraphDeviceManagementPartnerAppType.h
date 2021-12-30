// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementPartnerAppTypeValue){

	MSGraphDeviceManagementPartnerAppTypeUnknown = 0,
	MSGraphDeviceManagementPartnerAppTypeSingleTenantApp = 1,
	MSGraphDeviceManagementPartnerAppTypeMultiTenantApp = 2,
    MSGraphDeviceManagementPartnerAppTypeEndOfEnum
};

@interface MSGraphDeviceManagementPartnerAppType : NSObject

+(MSGraphDeviceManagementPartnerAppType*) unknown;
+(MSGraphDeviceManagementPartnerAppType*) singleTenantApp;
+(MSGraphDeviceManagementPartnerAppType*) multiTenantApp;

+(MSGraphDeviceManagementPartnerAppType*) UnknownEnumValue;

+(MSGraphDeviceManagementPartnerAppType*) deviceManagementPartnerAppTypeWithEnumValue:(MSGraphDeviceManagementPartnerAppTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementPartnerAppTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementPartnerAppType)

- (MSGraphDeviceManagementPartnerAppType*) toMSGraphDeviceManagementPartnerAppType;

@end
