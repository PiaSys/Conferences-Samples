// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAutomaticUpdateModeValue){

	MSGraphAutomaticUpdateModeUserDefined = 0,
	MSGraphAutomaticUpdateModeNotifyDownload = 1,
	MSGraphAutomaticUpdateModeAutoInstallAtMaintenanceTime = 2,
	MSGraphAutomaticUpdateModeAutoInstallAndRebootAtMaintenanceTime = 3,
	MSGraphAutomaticUpdateModeAutoInstallAndRebootAtScheduledTime = 4,
	MSGraphAutomaticUpdateModeAutoInstallAndRebootWithoutEndUserControl = 5,
    MSGraphAutomaticUpdateModeEndOfEnum
};

@interface MSGraphAutomaticUpdateMode : NSObject

+(MSGraphAutomaticUpdateMode*) userDefined;
+(MSGraphAutomaticUpdateMode*) notifyDownload;
+(MSGraphAutomaticUpdateMode*) autoInstallAtMaintenanceTime;
+(MSGraphAutomaticUpdateMode*) autoInstallAndRebootAtMaintenanceTime;
+(MSGraphAutomaticUpdateMode*) autoInstallAndRebootAtScheduledTime;
+(MSGraphAutomaticUpdateMode*) autoInstallAndRebootWithoutEndUserControl;

+(MSGraphAutomaticUpdateMode*) UnknownEnumValue;

+(MSGraphAutomaticUpdateMode*) automaticUpdateModeWithEnumValue:(MSGraphAutomaticUpdateModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAutomaticUpdateModeValue enumValue;

@end


@interface NSString (MSGraphAutomaticUpdateMode)

- (MSGraphAutomaticUpdateMode*) toMSGraphAutomaticUpdateMode;

@end
