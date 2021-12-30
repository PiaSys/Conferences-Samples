// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceThreatProtectionLevelValue){

	MSGraphDeviceThreatProtectionLevelUnavailable = 0,
	MSGraphDeviceThreatProtectionLevelSecured = 1,
	MSGraphDeviceThreatProtectionLevelLow = 2,
	MSGraphDeviceThreatProtectionLevelMedium = 3,
	MSGraphDeviceThreatProtectionLevelHigh = 4,
	MSGraphDeviceThreatProtectionLevelNotSet = 10,
    MSGraphDeviceThreatProtectionLevelEndOfEnum
};

@interface MSGraphDeviceThreatProtectionLevel : NSObject

+(MSGraphDeviceThreatProtectionLevel*) unavailable;
+(MSGraphDeviceThreatProtectionLevel*) secured;
+(MSGraphDeviceThreatProtectionLevel*) low;
+(MSGraphDeviceThreatProtectionLevel*) medium;
+(MSGraphDeviceThreatProtectionLevel*) high;
+(MSGraphDeviceThreatProtectionLevel*) notSet;

+(MSGraphDeviceThreatProtectionLevel*) UnknownEnumValue;

+(MSGraphDeviceThreatProtectionLevel*) deviceThreatProtectionLevelWithEnumValue:(MSGraphDeviceThreatProtectionLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceThreatProtectionLevelValue enumValue;

@end


@interface NSString (MSGraphDeviceThreatProtectionLevel)

- (MSGraphDeviceThreatProtectionLevel*) toMSGraphDeviceThreatProtectionLevel;

@end
