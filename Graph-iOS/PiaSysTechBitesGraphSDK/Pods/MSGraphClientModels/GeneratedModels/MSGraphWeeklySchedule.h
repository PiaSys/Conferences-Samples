// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWeeklyScheduleValue){

	MSGraphWeeklyScheduleUserDefined = 0,
	MSGraphWeeklyScheduleEveryday = 1,
	MSGraphWeeklyScheduleSunday = 2,
	MSGraphWeeklyScheduleMonday = 3,
	MSGraphWeeklyScheduleTuesday = 4,
	MSGraphWeeklyScheduleWednesday = 5,
	MSGraphWeeklyScheduleThursday = 6,
	MSGraphWeeklyScheduleFriday = 7,
	MSGraphWeeklyScheduleSaturday = 8,
    MSGraphWeeklyScheduleEndOfEnum
};

@interface MSGraphWeeklySchedule : NSObject

+(MSGraphWeeklySchedule*) userDefined;
+(MSGraphWeeklySchedule*) everyday;
+(MSGraphWeeklySchedule*) sunday;
+(MSGraphWeeklySchedule*) monday;
+(MSGraphWeeklySchedule*) tuesday;
+(MSGraphWeeklySchedule*) wednesday;
+(MSGraphWeeklySchedule*) thursday;
+(MSGraphWeeklySchedule*) friday;
+(MSGraphWeeklySchedule*) saturday;

+(MSGraphWeeklySchedule*) UnknownEnumValue;

+(MSGraphWeeklySchedule*) weeklyScheduleWithEnumValue:(MSGraphWeeklyScheduleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWeeklyScheduleValue enumValue;

@end


@interface NSString (MSGraphWeeklySchedule)

- (MSGraphWeeklySchedule*) toMSGraphWeeklySchedule;

@end
