// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import <Foundation/Foundation.h>

/*
 A wrapper class to help in conversion of ISO 6801 duration to and from NSTimeInterval
 */

@interface MSDuration : NSObject

@property (nonatomic, readonly) NSTimeInterval durationInterval;

@property (nonatomic, strong, readonly) NSString *durationString;

/*
 This method initializes an instance of MSDuration with a string with value of type ISO 8601 duration
 @param duration String object of ISO 8601 duration
 */
- (instancetype)initWithDuration:(NSString *)duration;

/*
 This method initializes an instance of MSDuration with NSTimeInterval value
 @param interval NSTimeInterval value to initialize the instance
 */
- (instancetype)initWithTimeInterval:(NSTimeInterval)interval;

/*
 This method generates an MSDuration instance from a String object of ISO 8601 duration.
 */
+ (instancetype)ms_durationFromString:(NSString *)durationString;

/*
 Helper method to convert a ISO 8601 duration string to NSTimeInterval value
 */
+ (NSTimeInterval)getTimeIntervalForDuration:(NSString *)duration ;

/*
 Helper method to convert a  NSTimeInterval value to ISO 8601 duration string
 */
+ (NSString *)getDurationForTimeInterval:(NSTimeInterval)interval ;


@end

