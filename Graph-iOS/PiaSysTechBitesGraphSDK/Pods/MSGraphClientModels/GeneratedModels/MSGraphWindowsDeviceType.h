// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsDeviceTypeValue){

	MSGraphWindowsDeviceTypeNone = 0,
	MSGraphWindowsDeviceTypeDesktop = 1,
	MSGraphWindowsDeviceTypeMobile = 2,
	MSGraphWindowsDeviceTypeHolographic = 4,
	MSGraphWindowsDeviceTypeTeam = 8,
    MSGraphWindowsDeviceTypeEndOfEnum
};

@interface MSGraphWindowsDeviceType : NSObject

+(MSGraphWindowsDeviceType*) none;
+(MSGraphWindowsDeviceType*) desktop;
+(MSGraphWindowsDeviceType*) mobile;
+(MSGraphWindowsDeviceType*) holographic;
+(MSGraphWindowsDeviceType*) team;

+(MSGraphWindowsDeviceType*) UnknownEnumValue;

+(MSGraphWindowsDeviceType*) windowsDeviceTypeWithEnumValue:(MSGraphWindowsDeviceTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsDeviceTypeValue enumValue;

@end


@interface NSString (MSGraphWindowsDeviceType)

- (MSGraphWindowsDeviceType*) toMSGraphWindowsDeviceType;

@end
