// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDefenderCloudBlockLevelTypeValue){

	MSGraphDefenderCloudBlockLevelTypeNotConfigured = 0,
	MSGraphDefenderCloudBlockLevelTypeHigh = 1,
	MSGraphDefenderCloudBlockLevelTypeHighPlus = 2,
	MSGraphDefenderCloudBlockLevelTypeZeroTolerance = 3,
    MSGraphDefenderCloudBlockLevelTypeEndOfEnum
};

@interface MSGraphDefenderCloudBlockLevelType : NSObject

+(MSGraphDefenderCloudBlockLevelType*) notConfigured;
+(MSGraphDefenderCloudBlockLevelType*) high;
+(MSGraphDefenderCloudBlockLevelType*) highPlus;
+(MSGraphDefenderCloudBlockLevelType*) zeroTolerance;

+(MSGraphDefenderCloudBlockLevelType*) UnknownEnumValue;

+(MSGraphDefenderCloudBlockLevelType*) defenderCloudBlockLevelTypeWithEnumValue:(MSGraphDefenderCloudBlockLevelTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDefenderCloudBlockLevelTypeValue enumValue;

@end


@interface NSString (MSGraphDefenderCloudBlockLevelType)

- (MSGraphDefenderCloudBlockLevelType*) toMSGraphDefenderCloudBlockLevelType;

@end
