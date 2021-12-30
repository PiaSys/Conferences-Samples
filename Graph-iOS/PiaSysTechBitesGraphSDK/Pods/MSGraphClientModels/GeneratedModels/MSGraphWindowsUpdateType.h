// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsUpdateTypeValue){

	MSGraphWindowsUpdateTypeUserDefined = 0,
	MSGraphWindowsUpdateTypeAll = 1,
	MSGraphWindowsUpdateTypeBusinessReadyOnly = 2,
	MSGraphWindowsUpdateTypeWindowsInsiderBuildFast = 3,
	MSGraphWindowsUpdateTypeWindowsInsiderBuildSlow = 4,
	MSGraphWindowsUpdateTypeWindowsInsiderBuildRelease = 5,
    MSGraphWindowsUpdateTypeEndOfEnum
};

@interface MSGraphWindowsUpdateType : NSObject

+(MSGraphWindowsUpdateType*) userDefined;
+(MSGraphWindowsUpdateType*) all;
+(MSGraphWindowsUpdateType*) businessReadyOnly;
+(MSGraphWindowsUpdateType*) windowsInsiderBuildFast;
+(MSGraphWindowsUpdateType*) windowsInsiderBuildSlow;
+(MSGraphWindowsUpdateType*) windowsInsiderBuildRelease;

+(MSGraphWindowsUpdateType*) UnknownEnumValue;

+(MSGraphWindowsUpdateType*) windowsUpdateTypeWithEnumValue:(MSGraphWindowsUpdateTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsUpdateTypeValue enumValue;

@end


@interface NSString (MSGraphWindowsUpdateType)

- (MSGraphWindowsUpdateType*) toMSGraphWindowsUpdateType;

@end
