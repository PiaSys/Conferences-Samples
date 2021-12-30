// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkingHours()
{
    NSArray* _daysOfWeek;
    MSTimeOfDay* _startTime;
    MSTimeOfDay* _endTime;
    MSGraphTimeZoneBase* _timeZone;
}
@end

@implementation MSGraphWorkingHours

- (NSArray*) daysOfWeek
{
    if(!_daysOfWeek){
        
    NSMutableArray *daysOfWeekResult = [NSMutableArray array];
    NSArray *daysOfWeek = self.dictionary[@"daysOfWeek"];

    if ([daysOfWeek isKindOfClass:[NSArray class]]){
        for (id tempDayOfWeek in daysOfWeek){
            [daysOfWeekResult addObject:tempDayOfWeek];
        }
    }

    _daysOfWeek = daysOfWeekResult;
        
    }
    return _daysOfWeek;
}

- (void) setDaysOfWeek: (NSArray*) val
{
    _daysOfWeek = val;
    self.dictionary[@"daysOfWeek"] = val;
}

- (MSTimeOfDay*) startTime
{
    if(!_startTime){
        _startTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"startTime"]];
    }
    return _startTime;
}

- (void) setStartTime: (MSTimeOfDay*) val
{
    _startTime = val;
    self.dictionary[@"startTime"] = [val ms_toString];
}

- (MSTimeOfDay*) endTime
{
    if(!_endTime){
        _endTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"endTime"]];
    }
    return _endTime;
}

- (void) setEndTime: (MSTimeOfDay*) val
{
    _endTime = val;
    self.dictionary[@"endTime"] = [val ms_toString];
}

- (MSGraphTimeZoneBase*) timeZone
{
    if(!_timeZone){
        _timeZone = [[MSGraphTimeZoneBase alloc] initWithDictionary: self.dictionary[@"timeZone"]];
    }
    return _timeZone;
}

- (void) setTimeZone: (MSGraphTimeZoneBase*) val
{
    _timeZone = val;
    self.dictionary[@"timeZone"] = val;
}

@end
