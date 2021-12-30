// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.

#import "MSDate.h"

static NSString *dateFormat = @"yyyy-MM-dd";

@interface MSDate ()

@property (nonatomic, strong) NSDate *date;

@end

@implementation MSDate

#pragma mark - Initializers

+ (instancetype) date
{
    return [[MSDate alloc] initWithNSDate:[NSDate date]];
}

+ (instancetype) dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
{
    return [[MSDate alloc] initWithYear:year month:month day:day];
}

- (id) initWithNSDate:(NSDate*)date
{
    if (self = [super init])
    {
        self.date = date;
    }
    return self;
}

- (id) initWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day
{
    if (self = [super init])
    {
        NSDateComponents *components = [[NSDateComponents alloc] init];
        components.year = year;
        components.month = month;
        components.day = day;
        components.calendar = [NSCalendar currentCalendar];
        self.date = [components date];
    }
    return self;
}


#pragma mark - Properties

- (NSInteger) year
{
    NSDateComponents *components = [[MSDate gregorianCalendar] components:NSCalendarUnitYear fromDate:self.date];
    return components.year;
}

- (NSInteger) month
{
    NSDateComponents *components = [[MSDate gregorianCalendar] components:NSCalendarUnitMonth fromDate:self.date];
    return components.month;
}

- (NSInteger) day
{
    NSDateComponents *components = [[MSDate gregorianCalendar] components:NSCalendarUnitDay fromDate:self.date];
    return components.day;
}


#pragma mark - Serialization

- (NSString *)ms_toString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    [dateFormatter setLocale:posix];
    return [dateFormatter stringFromDate:self.date];
}

+ (instancetype)ms_dateFromString:(NSString *)dateString
{
    NSDate *date = nil;
    if (dateString)
    {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:dateFormat];
        NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [dateFormatter setLocale:posix];
        date = [dateFormatter dateFromString:dateString];
    }
    return [[MSDate alloc] initWithNSDate:date];
}

#pragma mark - Helpers

+ (NSCalendar*) gregorianCalendar
{
    static NSCalendar *calendar;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    });
    return calendar;
}

@end
