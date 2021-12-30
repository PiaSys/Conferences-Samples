// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsArchitectureValue){

	MSGraphWindowsArchitectureNone = 0,
	MSGraphWindowsArchitectureX86 = 1,
	MSGraphWindowsArchitectureX64 = 2,
	MSGraphWindowsArchitectureArm = 4,
	MSGraphWindowsArchitectureNeutral = 8,
    MSGraphWindowsArchitectureEndOfEnum
};

@interface MSGraphWindowsArchitecture : NSObject

+(MSGraphWindowsArchitecture*) none;
+(MSGraphWindowsArchitecture*) x86;
+(MSGraphWindowsArchitecture*) x64;
+(MSGraphWindowsArchitecture*) arm;
+(MSGraphWindowsArchitecture*) neutral;

+(MSGraphWindowsArchitecture*) UnknownEnumValue;

+(MSGraphWindowsArchitecture*) windowsArchitectureWithEnumValue:(MSGraphWindowsArchitectureValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsArchitectureValue enumValue;

@end


@interface NSString (MSGraphWindowsArchitecture)

- (MSGraphWindowsArchitecture*) toMSGraphWindowsArchitecture;

@end
