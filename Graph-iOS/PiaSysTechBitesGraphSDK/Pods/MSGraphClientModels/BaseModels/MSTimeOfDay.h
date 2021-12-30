// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import <Foundation/Foundation.h>

/*
 A wrapper class around native NSDate class to represent a specific time in the day.
 */
@interface MSTimeOfDay : NSObject

@property (nonatomic, readonly) NSInteger hour;
@property (nonatomic, readonly) NSInteger minute;
@property (nonatomic, readonly) NSInteger second;

/*
 Class method to create an instance of MSTimeOfDay
 @param hour Integer value denoting the hour of day
 @param minute Integer value denoting the minutes of that hour
 @param second Integer value denoting the seconds of that minute
 */
+ (instancetype) timeWithHour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;

/*
 Instance method to create an instance of MSTimeOfDay
 @param hour Integer value denoting the hour of day
 @param minute Integer value denoting the minutes of that hour
 @param second Integer value denoting the seconds of that minute
 */
- (id) initWithHour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second;

/*
 This method generates a string equivalent of MSTimeOfDay instance.
 */
- (NSString *)ms_toString;

/*
 This method can be used to get an MSTimeOfDay instance from a date string
 @param dateString The date string which needs to be converted.
 */
+ (instancetype)ms_timeFromString:(NSString *)timeString;

@end
