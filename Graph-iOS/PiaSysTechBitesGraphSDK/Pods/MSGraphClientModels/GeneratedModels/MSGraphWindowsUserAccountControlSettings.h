// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsUserAccountControlSettingsValue){

	MSGraphWindowsUserAccountControlSettingsUserDefined = 0,
	MSGraphWindowsUserAccountControlSettingsAlwaysNotify = 1,
	MSGraphWindowsUserAccountControlSettingsNotifyOnAppChanges = 2,
	MSGraphWindowsUserAccountControlSettingsNotifyOnAppChangesWithoutDimming = 3,
	MSGraphWindowsUserAccountControlSettingsNeverNotify = 4,
    MSGraphWindowsUserAccountControlSettingsEndOfEnum
};

@interface MSGraphWindowsUserAccountControlSettings : NSObject

+(MSGraphWindowsUserAccountControlSettings*) userDefined;
+(MSGraphWindowsUserAccountControlSettings*) alwaysNotify;
+(MSGraphWindowsUserAccountControlSettings*) notifyOnAppChanges;
+(MSGraphWindowsUserAccountControlSettings*) notifyOnAppChangesWithoutDimming;
+(MSGraphWindowsUserAccountControlSettings*) neverNotify;

+(MSGraphWindowsUserAccountControlSettings*) UnknownEnumValue;

+(MSGraphWindowsUserAccountControlSettings*) windowsUserAccountControlSettingsWithEnumValue:(MSGraphWindowsUserAccountControlSettingsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsUserAccountControlSettingsValue enumValue;

@end


@interface NSString (MSGraphWindowsUserAccountControlSettings)

- (MSGraphWindowsUserAccountControlSettings*) toMSGraphWindowsUserAccountControlSettings;

@end
