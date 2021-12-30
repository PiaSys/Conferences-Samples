// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDayOfWeek.h"

@interface MSGraphDayOfWeek () {
    MSGraphDayOfWeekValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDayOfWeekValue enumValue;
@end

@implementation MSGraphDayOfWeek

+ (MSGraphDayOfWeek*) sunday {
    static MSGraphDayOfWeek *_sunday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sunday = [[MSGraphDayOfWeek alloc] init];
        _sunday.enumValue = MSGraphDayOfWeekSunday;
    });
    return _sunday;
}
+ (MSGraphDayOfWeek*) monday {
    static MSGraphDayOfWeek *_monday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _monday = [[MSGraphDayOfWeek alloc] init];
        _monday.enumValue = MSGraphDayOfWeekMonday;
    });
    return _monday;
}
+ (MSGraphDayOfWeek*) tuesday {
    static MSGraphDayOfWeek *_tuesday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tuesday = [[MSGraphDayOfWeek alloc] init];
        _tuesday.enumValue = MSGraphDayOfWeekTuesday;
    });
    return _tuesday;
}
+ (MSGraphDayOfWeek*) wednesday {
    static MSGraphDayOfWeek *_wednesday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wednesday = [[MSGraphDayOfWeek alloc] init];
        _wednesday.enumValue = MSGraphDayOfWeekWednesday;
    });
    return _wednesday;
}
+ (MSGraphDayOfWeek*) thursday {
    static MSGraphDayOfWeek *_thursday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _thursday = [[MSGraphDayOfWeek alloc] init];
        _thursday.enumValue = MSGraphDayOfWeekThursday;
    });
    return _thursday;
}
+ (MSGraphDayOfWeek*) friday {
    static MSGraphDayOfWeek *_friday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _friday = [[MSGraphDayOfWeek alloc] init];
        _friday.enumValue = MSGraphDayOfWeekFriday;
    });
    return _friday;
}
+ (MSGraphDayOfWeek*) saturday {
    static MSGraphDayOfWeek *_saturday;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _saturday = [[MSGraphDayOfWeek alloc] init];
        _saturday.enumValue = MSGraphDayOfWeekSaturday;
    });
    return _saturday;
}

+ (MSGraphDayOfWeek*) UnknownEnumValue {
    static MSGraphDayOfWeek *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDayOfWeek alloc] init];
        _unknownValue.enumValue = MSGraphDayOfWeekEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDayOfWeek*) dayOfWeekWithEnumValue:(MSGraphDayOfWeekValue)val {

    switch(val)
    {
        case MSGraphDayOfWeekSunday:
            return [MSGraphDayOfWeek sunday];
        case MSGraphDayOfWeekMonday:
            return [MSGraphDayOfWeek monday];
        case MSGraphDayOfWeekTuesday:
            return [MSGraphDayOfWeek tuesday];
        case MSGraphDayOfWeekWednesday:
            return [MSGraphDayOfWeek wednesday];
        case MSGraphDayOfWeekThursday:
            return [MSGraphDayOfWeek thursday];
        case MSGraphDayOfWeekFriday:
            return [MSGraphDayOfWeek friday];
        case MSGraphDayOfWeekSaturday:
            return [MSGraphDayOfWeek saturday];
        case MSGraphDayOfWeekEndOfEnum:
        default:
            return [MSGraphDayOfWeek UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDayOfWeekSunday:
            return @"sunday";
        case MSGraphDayOfWeekMonday:
            return @"monday";
        case MSGraphDayOfWeekTuesday:
            return @"tuesday";
        case MSGraphDayOfWeekWednesday:
            return @"wednesday";
        case MSGraphDayOfWeekThursday:
            return @"thursday";
        case MSGraphDayOfWeekFriday:
            return @"friday";
        case MSGraphDayOfWeekSaturday:
            return @"saturday";
        case MSGraphDayOfWeekEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDayOfWeekValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDayOfWeek)

- (MSGraphDayOfWeek*) toMSGraphDayOfWeek{

    if([self isEqualToString:@"sunday"])
    {
          return [MSGraphDayOfWeek sunday];
    }
    else if([self isEqualToString:@"monday"])
    {
          return [MSGraphDayOfWeek monday];
    }
    else if([self isEqualToString:@"tuesday"])
    {
          return [MSGraphDayOfWeek tuesday];
    }
    else if([self isEqualToString:@"wednesday"])
    {
          return [MSGraphDayOfWeek wednesday];
    }
    else if([self isEqualToString:@"thursday"])
    {
          return [MSGraphDayOfWeek thursday];
    }
    else if([self isEqualToString:@"friday"])
    {
          return [MSGraphDayOfWeek friday];
    }
    else if([self isEqualToString:@"saturday"])
    {
          return [MSGraphDayOfWeek saturday];
    }
    else {
        return [MSGraphDayOfWeek UnknownEnumValue];
    }
}

@end
