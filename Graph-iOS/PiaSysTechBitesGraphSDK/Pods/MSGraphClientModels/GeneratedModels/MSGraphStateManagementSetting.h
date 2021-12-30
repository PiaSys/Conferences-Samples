// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphStateManagementSettingValue){

	MSGraphStateManagementSettingNotConfigured = 0,
	MSGraphStateManagementSettingBlocked = 1,
	MSGraphStateManagementSettingAllowed = 2,
    MSGraphStateManagementSettingEndOfEnum
};

@interface MSGraphStateManagementSetting : NSObject

+(MSGraphStateManagementSetting*) notConfigured;
+(MSGraphStateManagementSetting*) blocked;
+(MSGraphStateManagementSetting*) allowed;

+(MSGraphStateManagementSetting*) UnknownEnumValue;

+(MSGraphStateManagementSetting*) stateManagementSettingWithEnumValue:(MSGraphStateManagementSettingValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphStateManagementSettingValue enumValue;

@end


@interface NSString (MSGraphStateManagementSetting)

- (MSGraphStateManagementSetting*) toMSGraphStateManagementSetting;

@end
