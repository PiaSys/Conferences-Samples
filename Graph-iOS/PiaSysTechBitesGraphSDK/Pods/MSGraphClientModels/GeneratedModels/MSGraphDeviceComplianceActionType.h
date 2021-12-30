// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceComplianceActionTypeValue){

	MSGraphDeviceComplianceActionTypeNoAction = 0,
	MSGraphDeviceComplianceActionTypeNotification = 1,
	MSGraphDeviceComplianceActionTypeBlock = 2,
	MSGraphDeviceComplianceActionTypeRetire = 3,
	MSGraphDeviceComplianceActionTypeWipe = 4,
	MSGraphDeviceComplianceActionTypeRemoveResourceAccessProfiles = 5,
	MSGraphDeviceComplianceActionTypePushNotification = 9,
    MSGraphDeviceComplianceActionTypeEndOfEnum
};

@interface MSGraphDeviceComplianceActionType : NSObject

+(MSGraphDeviceComplianceActionType*) noAction;
+(MSGraphDeviceComplianceActionType*) notification;
+(MSGraphDeviceComplianceActionType*) block;
+(MSGraphDeviceComplianceActionType*) retire;
+(MSGraphDeviceComplianceActionType*) wipe;
+(MSGraphDeviceComplianceActionType*) removeResourceAccessProfiles;
+(MSGraphDeviceComplianceActionType*) pushNotification;

+(MSGraphDeviceComplianceActionType*) UnknownEnumValue;

+(MSGraphDeviceComplianceActionType*) deviceComplianceActionTypeWithEnumValue:(MSGraphDeviceComplianceActionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceComplianceActionTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceComplianceActionType)

- (MSGraphDeviceComplianceActionType*) toMSGraphDeviceComplianceActionType;

@end
