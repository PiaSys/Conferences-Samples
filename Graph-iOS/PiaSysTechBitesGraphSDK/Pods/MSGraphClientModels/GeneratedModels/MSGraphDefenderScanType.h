// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDefenderScanTypeValue){

	MSGraphDefenderScanTypeUserDefined = 0,
	MSGraphDefenderScanTypeDisabled = 1,
	MSGraphDefenderScanTypeQuick = 2,
	MSGraphDefenderScanTypeFull = 3,
    MSGraphDefenderScanTypeEndOfEnum
};

@interface MSGraphDefenderScanType : NSObject

+(MSGraphDefenderScanType*) userDefined;
+(MSGraphDefenderScanType*) disabled;
+(MSGraphDefenderScanType*) quick;
+(MSGraphDefenderScanType*) full;

+(MSGraphDefenderScanType*) UnknownEnumValue;

+(MSGraphDefenderScanType*) defenderScanTypeWithEnumValue:(MSGraphDefenderScanTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDefenderScanTypeValue enumValue;

@end


@interface NSString (MSGraphDefenderScanType)

- (MSGraphDefenderScanType*) toMSGraphDefenderScanType;

@end
