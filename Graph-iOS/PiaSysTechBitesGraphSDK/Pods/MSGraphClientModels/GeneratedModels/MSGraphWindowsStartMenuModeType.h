// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsStartMenuModeTypeValue){

	MSGraphWindowsStartMenuModeTypeUserDefined = 0,
	MSGraphWindowsStartMenuModeTypeFullScreen = 1,
	MSGraphWindowsStartMenuModeTypeNonFullScreen = 2,
    MSGraphWindowsStartMenuModeTypeEndOfEnum
};

@interface MSGraphWindowsStartMenuModeType : NSObject

+(MSGraphWindowsStartMenuModeType*) userDefined;
+(MSGraphWindowsStartMenuModeType*) fullScreen;
+(MSGraphWindowsStartMenuModeType*) nonFullScreen;

+(MSGraphWindowsStartMenuModeType*) UnknownEnumValue;

+(MSGraphWindowsStartMenuModeType*) windowsStartMenuModeTypeWithEnumValue:(MSGraphWindowsStartMenuModeTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsStartMenuModeTypeValue enumValue;

@end


@interface NSString (MSGraphWindowsStartMenuModeType)

- (MSGraphWindowsStartMenuModeType*) toMSGraphWindowsStartMenuModeType;

@end
