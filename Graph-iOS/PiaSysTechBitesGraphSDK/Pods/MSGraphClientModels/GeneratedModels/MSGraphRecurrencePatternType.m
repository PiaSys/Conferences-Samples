// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRecurrencePatternType.h"

@interface MSGraphRecurrencePatternType () {
    MSGraphRecurrencePatternTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRecurrencePatternTypeValue enumValue;
@end

@implementation MSGraphRecurrencePatternType

+ (MSGraphRecurrencePatternType*) daily {
    static MSGraphRecurrencePatternType *_daily;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _daily = [[MSGraphRecurrencePatternType alloc] init];
        _daily.enumValue = MSGraphRecurrencePatternTypeDaily;
    });
    return _daily;
}
+ (MSGraphRecurrencePatternType*) weekly {
    static MSGraphRecurrencePatternType *_weekly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _weekly = [[MSGraphRecurrencePatternType alloc] init];
        _weekly.enumValue = MSGraphRecurrencePatternTypeWeekly;
    });
    return _weekly;
}
+ (MSGraphRecurrencePatternType*) absoluteMonthly {
    static MSGraphRecurrencePatternType *_absoluteMonthly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _absoluteMonthly = [[MSGraphRecurrencePatternType alloc] init];
        _absoluteMonthly.enumValue = MSGraphRecurrencePatternTypeAbsoluteMonthly;
    });
    return _absoluteMonthly;
}
+ (MSGraphRecurrencePatternType*) relativeMonthly {
    static MSGraphRecurrencePatternType *_relativeMonthly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _relativeMonthly = [[MSGraphRecurrencePatternType alloc] init];
        _relativeMonthly.enumValue = MSGraphRecurrencePatternTypeRelativeMonthly;
    });
    return _relativeMonthly;
}
+ (MSGraphRecurrencePatternType*) absoluteYearly {
    static MSGraphRecurrencePatternType *_absoluteYearly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _absoluteYearly = [[MSGraphRecurrencePatternType alloc] init];
        _absoluteYearly.enumValue = MSGraphRecurrencePatternTypeAbsoluteYearly;
    });
    return _absoluteYearly;
}
+ (MSGraphRecurrencePatternType*) relativeYearly {
    static MSGraphRecurrencePatternType *_relativeYearly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _relativeYearly = [[MSGraphRecurrencePatternType alloc] init];
        _relativeYearly.enumValue = MSGraphRecurrencePatternTypeRelativeYearly;
    });
    return _relativeYearly;
}

+ (MSGraphRecurrencePatternType*) UnknownEnumValue {
    static MSGraphRecurrencePatternType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRecurrencePatternType alloc] init];
        _unknownValue.enumValue = MSGraphRecurrencePatternTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRecurrencePatternType*) recurrencePatternTypeWithEnumValue:(MSGraphRecurrencePatternTypeValue)val {

    switch(val)
    {
        case MSGraphRecurrencePatternTypeDaily:
            return [MSGraphRecurrencePatternType daily];
        case MSGraphRecurrencePatternTypeWeekly:
            return [MSGraphRecurrencePatternType weekly];
        case MSGraphRecurrencePatternTypeAbsoluteMonthly:
            return [MSGraphRecurrencePatternType absoluteMonthly];
        case MSGraphRecurrencePatternTypeRelativeMonthly:
            return [MSGraphRecurrencePatternType relativeMonthly];
        case MSGraphRecurrencePatternTypeAbsoluteYearly:
            return [MSGraphRecurrencePatternType absoluteYearly];
        case MSGraphRecurrencePatternTypeRelativeYearly:
            return [MSGraphRecurrencePatternType relativeYearly];
        case MSGraphRecurrencePatternTypeEndOfEnum:
        default:
            return [MSGraphRecurrencePatternType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRecurrencePatternTypeDaily:
            return @"daily";
        case MSGraphRecurrencePatternTypeWeekly:
            return @"weekly";
        case MSGraphRecurrencePatternTypeAbsoluteMonthly:
            return @"absoluteMonthly";
        case MSGraphRecurrencePatternTypeRelativeMonthly:
            return @"relativeMonthly";
        case MSGraphRecurrencePatternTypeAbsoluteYearly:
            return @"absoluteYearly";
        case MSGraphRecurrencePatternTypeRelativeYearly:
            return @"relativeYearly";
        case MSGraphRecurrencePatternTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRecurrencePatternTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRecurrencePatternType)

- (MSGraphRecurrencePatternType*) toMSGraphRecurrencePatternType{

    if([self isEqualToString:@"daily"])
    {
          return [MSGraphRecurrencePatternType daily];
    }
    else if([self isEqualToString:@"weekly"])
    {
          return [MSGraphRecurrencePatternType weekly];
    }
    else if([self isEqualToString:@"absoluteMonthly"])
    {
          return [MSGraphRecurrencePatternType absoluteMonthly];
    }
    else if([self isEqualToString:@"relativeMonthly"])
    {
          return [MSGraphRecurrencePatternType relativeMonthly];
    }
    else if([self isEqualToString:@"absoluteYearly"])
    {
          return [MSGraphRecurrencePatternType absoluteYearly];
    }
    else if([self isEqualToString:@"relativeYearly"])
    {
          return [MSGraphRecurrencePatternType relativeYearly];
    }
    else {
        return [MSGraphRecurrencePatternType UnknownEnumValue];
    }
}

@end
