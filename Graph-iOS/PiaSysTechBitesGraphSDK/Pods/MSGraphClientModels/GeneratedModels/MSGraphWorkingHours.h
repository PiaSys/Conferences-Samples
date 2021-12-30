// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSTimeOfDay, MSGraphTimeZoneBase; 
#import "MSGraphDayOfWeek.h"


#import "MSObject.h"

@interface MSGraphWorkingHours : MSObject

@property (nullable, nonatomic, setter=setDaysOfWeek:, getter=daysOfWeek) NSArray* daysOfWeek;
@property (nullable, nonatomic, setter=setStartTime:, getter=startTime) MSTimeOfDay* startTime;
@property (nullable, nonatomic, setter=setEndTime:, getter=endTime) MSTimeOfDay* endTime;
@property (nullable, nonatomic, setter=setTimeZone:, getter=timeZone) MSGraphTimeZoneBase* timeZone;

@end
