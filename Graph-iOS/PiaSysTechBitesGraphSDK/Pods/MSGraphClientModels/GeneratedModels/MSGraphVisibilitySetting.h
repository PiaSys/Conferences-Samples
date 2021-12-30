// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphVisibilitySettingValue){

	MSGraphVisibilitySettingNotConfigured = 0,
	MSGraphVisibilitySettingHide = 1,
	MSGraphVisibilitySettingShow = 2,
    MSGraphVisibilitySettingEndOfEnum
};

@interface MSGraphVisibilitySetting : NSObject

+(MSGraphVisibilitySetting*) notConfigured;
+(MSGraphVisibilitySetting*) hide;
+(MSGraphVisibilitySetting*) show;

+(MSGraphVisibilitySetting*) UnknownEnumValue;

+(MSGraphVisibilitySetting*) visibilitySettingWithEnumValue:(MSGraphVisibilitySettingValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphVisibilitySettingValue enumValue;

@end


@interface NSString (MSGraphVisibilitySetting)

- (MSGraphVisibilitySetting*) toMSGraphVisibilitySetting;

@end
