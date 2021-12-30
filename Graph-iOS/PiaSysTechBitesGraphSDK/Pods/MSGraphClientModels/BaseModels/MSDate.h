// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import <Foundation/Foundation.h>


/*
 A wrapper class around native NSDate class to ease the conversion and initialization of date.
 */
@interface MSDate : NSObject

@property (nonatomic, readonly) NSInteger year;
@property (nonatomic, readonly) NSInteger month;
@property (nonatomic, readonly) NSInteger day;

/*
 Class method to initialize an instance of MSDate with NSDate
 */
+ (instancetype) date;

/*
 Class method to initialize an instance of MSDate with year, month and day in Integer form.
 */
+ (instancetype) dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

/*
 Instance method to initialize an instance of MSDate with NSDate
 */
- (id) initWithNSDate:(NSDate*)date;

/*
 Instance method to initialize an instance of MSDate with year, month and day in Integer form.
 */
- (id) initWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

/*
 This method generates a string equivalent of MSDate instance.
 */
- (NSString *)ms_toString;

/*
 This method can be used to get an MSDate instance from a date string
 @param dateString The date string which needs to be converted.
 */
+ (instancetype)ms_dateFromString:(NSString *)dateString;

@end
