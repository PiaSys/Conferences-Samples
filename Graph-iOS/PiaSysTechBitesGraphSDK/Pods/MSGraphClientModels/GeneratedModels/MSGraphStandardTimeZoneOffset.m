// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphStandardTimeZoneOffset()
{
    MSTimeOfDay* _time;
    int32_t _dayOccurrence;
    MSGraphDayOfWeek* _dayOfWeek;
    int32_t _month;
    int32_t _year;
}
@end

@implementation MSGraphStandardTimeZoneOffset

- (MSTimeOfDay*) time
{
    if(!_time){
        _time = [MSTimeOfDay ms_timeFromString: self.dictionary[@"time"]];
    }
    return _time;
}

- (void) setTime: (MSTimeOfDay*) val
{
    _time = val;
    self.dictionary[@"time"] = [val ms_toString];
}

- (int32_t) dayOccurrence
{
    _dayOccurrence = [self.dictionary[@"dayOccurrence"] intValue];
    return _dayOccurrence;
}

- (void) setDayOccurrence: (int32_t) val
{
    _dayOccurrence = val;
    self.dictionary[@"dayOccurrence"] = @(val);
}

- (MSGraphDayOfWeek*) dayOfWeek
{
    if(!_dayOfWeek){
        _dayOfWeek = [self.dictionary[@"dayOfWeek"] toMSGraphDayOfWeek];
    }
    return _dayOfWeek;
}

- (void) setDayOfWeek: (MSGraphDayOfWeek*) val
{
    _dayOfWeek = val;
    self.dictionary[@"dayOfWeek"] = val;
}

- (int32_t) month
{
    _month = [self.dictionary[@"month"] intValue];
    return _month;
}

- (void) setMonth: (int32_t) val
{
    _month = val;
    self.dictionary[@"month"] = @(val);
}

- (int32_t) year
{
    _year = [self.dictionary[@"year"] intValue];
    return _year;
}

- (void) setYear: (int32_t) val
{
    _year = val;
    self.dictionary[@"year"] = @(val);
}

@end
