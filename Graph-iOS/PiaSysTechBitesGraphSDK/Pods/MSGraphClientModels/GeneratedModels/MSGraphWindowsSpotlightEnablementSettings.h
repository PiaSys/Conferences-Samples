// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsSpotlightEnablementSettingsValue){

	MSGraphWindowsSpotlightEnablementSettingsNotConfigured = 0,
	MSGraphWindowsSpotlightEnablementSettingsDisabled = 1,
	MSGraphWindowsSpotlightEnablementSettingsEnabled = 2,
    MSGraphWindowsSpotlightEnablementSettingsEndOfEnum
};

@interface MSGraphWindowsSpotlightEnablementSettings : NSObject

+(MSGraphWindowsSpotlightEnablementSettings*) notConfigured;
+(MSGraphWindowsSpotlightEnablementSettings*) disabled;
+(MSGraphWindowsSpotlightEnablementSettings*) enabled;

+(MSGraphWindowsSpotlightEnablementSettings*) UnknownEnumValue;

+(MSGraphWindowsSpotlightEnablementSettings*) windowsSpotlightEnablementSettingsWithEnumValue:(MSGraphWindowsSpotlightEnablementSettingsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsSpotlightEnablementSettingsValue enumValue;

@end


@interface NSString (MSGraphWindowsSpotlightEnablementSettings)

- (MSGraphWindowsSpotlightEnablementSettings*) toMSGraphWindowsSpotlightEnablementSettings;

@end
