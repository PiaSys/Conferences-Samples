// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphTimeZoneStandardValue){

	MSGraphTimeZoneStandardWindows = 0,
	MSGraphTimeZoneStandardIana = 1,
    MSGraphTimeZoneStandardEndOfEnum
};

@interface MSGraphTimeZoneStandard : NSObject

+(MSGraphTimeZoneStandard*) windows;
+(MSGraphTimeZoneStandard*) iana;

+(MSGraphTimeZoneStandard*) UnknownEnumValue;

+(MSGraphTimeZoneStandard*) timeZoneStandardWithEnumValue:(MSGraphTimeZoneStandardValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphTimeZoneStandardValue enumValue;

@end


@interface NSString (MSGraphTimeZoneStandard)

- (MSGraphTimeZoneStandard*) toMSGraphTimeZoneStandard;

@end
