// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDefenderThreatActionValue){

	MSGraphDefenderThreatActionDeviceDefault = 0,
	MSGraphDefenderThreatActionClean = 1,
	MSGraphDefenderThreatActionQuarantine = 2,
	MSGraphDefenderThreatActionRemove = 3,
	MSGraphDefenderThreatActionAllow = 4,
	MSGraphDefenderThreatActionUserDefined = 5,
	MSGraphDefenderThreatActionBlock = 6,
    MSGraphDefenderThreatActionEndOfEnum
};

@interface MSGraphDefenderThreatAction : NSObject

+(MSGraphDefenderThreatAction*) deviceDefault;
+(MSGraphDefenderThreatAction*) clean;
+(MSGraphDefenderThreatAction*) quarantine;
+(MSGraphDefenderThreatAction*) remove;
+(MSGraphDefenderThreatAction*) allow;
+(MSGraphDefenderThreatAction*) userDefined;
+(MSGraphDefenderThreatAction*) block;

+(MSGraphDefenderThreatAction*) UnknownEnumValue;

+(MSGraphDefenderThreatAction*) defenderThreatActionWithEnumValue:(MSGraphDefenderThreatActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDefenderThreatActionValue enumValue;

@end


@interface NSString (MSGraphDefenderThreatAction)

- (MSGraphDefenderThreatAction*) toMSGraphDefenderThreatAction;

@end
