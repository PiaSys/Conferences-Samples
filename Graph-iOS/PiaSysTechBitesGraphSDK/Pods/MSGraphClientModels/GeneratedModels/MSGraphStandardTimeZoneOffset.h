// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSTimeOfDay; 
#import "MSGraphDayOfWeek.h"


#import "MSObject.h"

@interface MSGraphStandardTimeZoneOffset : MSObject

@property (nullable, nonatomic, setter=setTime:, getter=time) MSTimeOfDay* time;
@property (nonatomic, setter=setDayOccurrence:, getter=dayOccurrence) int32_t dayOccurrence;
@property (nullable, nonatomic, setter=setDayOfWeek:, getter=dayOfWeek) MSGraphDayOfWeek* dayOfWeek;
@property (nonatomic, setter=setMonth:, getter=month) int32_t month;
@property (nonatomic, setter=setYear:, getter=year) int32_t year;

@end
