// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsStartMenuAppListVisibilityTypeValue){

	MSGraphWindowsStartMenuAppListVisibilityTypeUserDefined = 0,
	MSGraphWindowsStartMenuAppListVisibilityTypeCollapse = 1,
	MSGraphWindowsStartMenuAppListVisibilityTypeRemove = 2,
	MSGraphWindowsStartMenuAppListVisibilityTypeDisableSettingsApp = 4,
    MSGraphWindowsStartMenuAppListVisibilityTypeEndOfEnum
};

@interface MSGraphWindowsStartMenuAppListVisibilityType : NSObject

+(MSGraphWindowsStartMenuAppListVisibilityType*) userDefined;
+(MSGraphWindowsStartMenuAppListVisibilityType*) collapse;
+(MSGraphWindowsStartMenuAppListVisibilityType*) remove;
+(MSGraphWindowsStartMenuAppListVisibilityType*) disableSettingsApp;

+(MSGraphWindowsStartMenuAppListVisibilityType*) UnknownEnumValue;

+(MSGraphWindowsStartMenuAppListVisibilityType*) windowsStartMenuAppListVisibilityTypeWithEnumValue:(MSGraphWindowsStartMenuAppListVisibilityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsStartMenuAppListVisibilityTypeValue enumValue;

@end


@interface NSString (MSGraphWindowsStartMenuAppListVisibilityType)

- (MSGraphWindowsStartMenuAppListVisibilityType*) toMSGraphWindowsStartMenuAppListVisibilityType;

@end
