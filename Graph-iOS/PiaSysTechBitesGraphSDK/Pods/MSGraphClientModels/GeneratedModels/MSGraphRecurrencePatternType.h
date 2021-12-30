// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRecurrencePatternTypeValue){

	MSGraphRecurrencePatternTypeDaily = 0,
	MSGraphRecurrencePatternTypeWeekly = 1,
	MSGraphRecurrencePatternTypeAbsoluteMonthly = 2,
	MSGraphRecurrencePatternTypeRelativeMonthly = 3,
	MSGraphRecurrencePatternTypeAbsoluteYearly = 4,
	MSGraphRecurrencePatternTypeRelativeYearly = 5,
    MSGraphRecurrencePatternTypeEndOfEnum
};

@interface MSGraphRecurrencePatternType : NSObject

+(MSGraphRecurrencePatternType*) daily;
+(MSGraphRecurrencePatternType*) weekly;
+(MSGraphRecurrencePatternType*) absoluteMonthly;
+(MSGraphRecurrencePatternType*) relativeMonthly;
+(MSGraphRecurrencePatternType*) absoluteYearly;
+(MSGraphRecurrencePatternType*) relativeYearly;

+(MSGraphRecurrencePatternType*) UnknownEnumValue;

+(MSGraphRecurrencePatternType*) recurrencePatternTypeWithEnumValue:(MSGraphRecurrencePatternTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRecurrencePatternTypeValue enumValue;

@end


@interface NSString (MSGraphRecurrencePatternType)

- (MSGraphRecurrencePatternType*) toMSGraphRecurrencePatternType;

@end
