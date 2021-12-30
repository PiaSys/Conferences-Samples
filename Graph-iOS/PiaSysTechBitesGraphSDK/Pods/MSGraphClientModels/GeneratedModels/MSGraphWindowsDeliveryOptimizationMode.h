// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindowsDeliveryOptimizationModeValue){

	MSGraphWindowsDeliveryOptimizationModeUserDefined = 0,
	MSGraphWindowsDeliveryOptimizationModeHttpOnly = 1,
	MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringNat = 2,
	MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringPrivateGroup = 3,
	MSGraphWindowsDeliveryOptimizationModeHttpWithInternetPeering = 4,
	MSGraphWindowsDeliveryOptimizationModeSimpleDownload = 99,
	MSGraphWindowsDeliveryOptimizationModeBypassMode = 100,
    MSGraphWindowsDeliveryOptimizationModeEndOfEnum
};

@interface MSGraphWindowsDeliveryOptimizationMode : NSObject

+(MSGraphWindowsDeliveryOptimizationMode*) userDefined;
+(MSGraphWindowsDeliveryOptimizationMode*) httpOnly;
+(MSGraphWindowsDeliveryOptimizationMode*) httpWithPeeringNat;
+(MSGraphWindowsDeliveryOptimizationMode*) httpWithPeeringPrivateGroup;
+(MSGraphWindowsDeliveryOptimizationMode*) httpWithInternetPeering;
+(MSGraphWindowsDeliveryOptimizationMode*) simpleDownload;
+(MSGraphWindowsDeliveryOptimizationMode*) bypassMode;

+(MSGraphWindowsDeliveryOptimizationMode*) UnknownEnumValue;

+(MSGraphWindowsDeliveryOptimizationMode*) windowsDeliveryOptimizationModeWithEnumValue:(MSGraphWindowsDeliveryOptimizationModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindowsDeliveryOptimizationModeValue enumValue;

@end


@interface NSString (MSGraphWindowsDeliveryOptimizationMode)

- (MSGraphWindowsDeliveryOptimizationMode*) toMSGraphWindowsDeliveryOptimizationMode;

@end
