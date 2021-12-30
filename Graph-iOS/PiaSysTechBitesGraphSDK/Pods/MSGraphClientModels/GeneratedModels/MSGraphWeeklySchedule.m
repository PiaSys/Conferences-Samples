// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWeeklySchedule.h"

@interface MSGraphWeeklySchedule () {
    MSGraphWeeklyScheduleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWeeklyScheduleValue enumValue;
@end

@implementation MSGraphWeeklySchedule

+ (MSGraphWeeklySchedule*) userDefined {
    static MSGraphWeeklySchedule *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWeeklySchedule alloc] init];
        _userDefined.enumValue = MSGraphWeeklyScheduleUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWeeklySchedule*) everyday {
    static MSGraphWeeklySchedule *_everyday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _everyday = [[MSGraphWeeklySchedule alloc] init];
        _everyday.enumValue = MSGraphWeeklyScheduleEveryday;
    });
    return _everyday;
}
+ (MSGraphWeeklySchedule*) sunday {
    static MSGraphWeeklySchedule *_sunday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sunday = [[MSGraphWeeklySchedule alloc] init];
        _sunday.enumValue = MSGraphWeeklyScheduleSunday;
    });
    return _sunday;
}
+ (MSGraphWeeklySchedule*) monday {
    static MSGraphWeeklySchedule *_monday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monday = [[MSGraphWeeklySchedule alloc] init];
        _monday.enumValue = MSGraphWeeklyScheduleMonday;
    });
    return _monday;
}
+ (MSGraphWeeklySchedule*) tuesday {
    static MSGraphWeeklySchedule *_tuesday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tuesday = [[MSGraphWeeklySchedule alloc] init];
        _tuesday.enumValue = MSGraphWeeklyScheduleTuesday;
    });
    return _tuesday;
}
+ (MSGraphWeeklySchedule*) wednesday {
    static MSGraphWeeklySchedule *_wednesday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wednesday = [[MSGraphWeeklySchedule alloc] init];
        _wednesday.enumValue = MSGraphWeeklyScheduleWednesday;
    });
    return _wednesday;
}
+ (MSGraphWeeklySchedule*) thursday {
    static MSGraphWeeklySchedule *_thursday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _thursday = [[MSGraphWeeklySchedule alloc] init];
        _thursday.enumValue = MSGraphWeeklyScheduleThursday;
    });
    return _thursday;
}
+ (MSGraphWeeklySchedule*) friday {
    static MSGraphWeeklySchedule *_friday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _friday = [[MSGraphWeeklySchedule alloc] init];
        _friday.enumValue = MSGraphWeeklyScheduleFriday;
    });
    return _friday;
}
+ (MSGraphWeeklySchedule*) saturday {
    static MSGraphWeeklySchedule *_saturday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _saturday = [[MSGraphWeeklySchedule alloc] init];
        _saturday.enumValue = MSGraphWeeklyScheduleSaturday;
    });
    return _saturday;
}

+ (MSGraphWeeklySchedule*) UnknownEnumValue {
    static MSGraphWeeklySchedule *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWeeklySchedule alloc] init];
        _unknownValue.enumValue = MSGraphWeeklyScheduleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWeeklySchedule*) weeklyScheduleWithEnumValue:(MSGraphWeeklyScheduleValue)val {

    switch(val)
    {
        case MSGraphWeeklyScheduleUserDefined:
            return [MSGraphWeeklySchedule userDefined];
        case MSGraphWeeklyScheduleEveryday:
            return [MSGraphWeeklySchedule everyday];
        case MSGraphWeeklyScheduleSunday:
            return [MSGraphWeeklySchedule sunday];
        case MSGraphWeeklyScheduleMonday:
            return [MSGraphWeeklySchedule monday];
        case MSGraphWeeklyScheduleTuesday:
            return [MSGraphWeeklySchedule tuesday];
        case MSGraphWeeklyScheduleWednesday:
            return [MSGraphWeeklySchedule wednesday];
        case MSGraphWeeklyScheduleThursday:
            return [MSGraphWeeklySchedule thursday];
        case MSGraphWeeklyScheduleFriday:
            return [MSGraphWeeklySchedule friday];
        case MSGraphWeeklyScheduleSaturday:
            return [MSGraphWeeklySchedule saturday];
        case MSGraphWeeklyScheduleEndOfEnum:
        default:
            return [MSGraphWeeklySchedule UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWeeklyScheduleUserDefined:
            return @"userDefined";
        case MSGraphWeeklyScheduleEveryday:
            return @"everyday";
        case MSGraphWeeklyScheduleSunday:
            return @"sunday";
        case MSGraphWeeklyScheduleMonday:
            return @"monday";
        case MSGraphWeeklyScheduleTuesday:
            return @"tuesday";
        case MSGraphWeeklyScheduleWednesday:
            return @"wednesday";
        case MSGraphWeeklyScheduleThursday:
            return @"thursday";
        case MSGraphWeeklyScheduleFriday:
            return @"friday";
        case MSGraphWeeklyScheduleSaturday:
            return @"saturday";
        case MSGraphWeeklyScheduleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWeeklyScheduleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWeeklySchedule)

- (MSGraphWeeklySchedule*) toMSGraphWeeklySchedule{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWeeklySchedule userDefined];
    }
    else if([self isEqualToString:@"everyday"])
    {
          return [MSGraphWeeklySchedule everyday];
    }
    else if([self isEqualToString:@"sunday"])
    {
          return [MSGraphWeeklySchedule sunday];
    }
    else if([self isEqualToString:@"monday"])
    {
          return [MSGraphWeeklySchedule monday];
    }
    else if([self isEqualToString:@"tuesday"])
    {
          return [MSGraphWeeklySchedule tuesday];
    }
    else if([self isEqualToString:@"wednesday"])
    {
          return [MSGraphWeeklySchedule wednesday];
    }
    else if([self isEqualToString:@"thursday"])
    {
          return [MSGraphWeeklySchedule thursday];
    }
    else if([self isEqualToString:@"friday"])
    {
          return [MSGraphWeeklySchedule friday];
    }
    else if([self isEqualToString:@"saturday"])
    {
          return [MSGraphWeeklySchedule saturday];
    }
    else {
        return [MSGraphWeeklySchedule UnknownEnumValue];
    }
}

@end
