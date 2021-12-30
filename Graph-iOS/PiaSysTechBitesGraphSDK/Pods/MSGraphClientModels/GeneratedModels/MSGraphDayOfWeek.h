// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDayOfWeekValue){

	MSGraphDayOfWeekSunday = 0,
	MSGraphDayOfWeekMonday = 1,
	MSGraphDayOfWeekTuesday = 2,
	MSGraphDayOfWeekWednesday = 3,
	MSGraphDayOfWeekThursday = 4,
	MSGraphDayOfWeekFriday = 5,
	MSGraphDayOfWeekSaturday = 6,
    MSGraphDayOfWeekEndOfEnum
};

@interface MSGraphDayOfWeek : NSObject

+(MSGraphDayOfWeek*) sunday;
+(MSGraphDayOfWeek*) monday;
+(MSGraphDayOfWeek*) tuesday;
+(MSGraphDayOfWeek*) wednesday;
+(MSGraphDayOfWeek*) thursday;
+(MSGraphDayOfWeek*) friday;
+(MSGraphDayOfWeek*) saturday;

+(MSGraphDayOfWeek*) UnknownEnumValue;

+(MSGraphDayOfWeek*) dayOfWeekWithEnumValue:(MSGraphDayOfWeekValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDayOfWeekValue enumValue;

@end


@interface NSString (MSGraphDayOfWeek)

- (MSGraphDayOfWeek*) toMSGraphDayOfWeek;

@end
