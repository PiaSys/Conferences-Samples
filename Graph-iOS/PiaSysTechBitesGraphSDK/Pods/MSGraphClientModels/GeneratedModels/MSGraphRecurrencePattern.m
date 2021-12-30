// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecurrencePattern()
{
    MSGraphRecurrencePatternType* _type;
    int32_t _interval;
    int32_t _month;
    int32_t _dayOfMonth;
    NSArray* _daysOfWeek;
    MSGraphDayOfWeek* _firstDayOfWeek;
    MSGraphWeekIndex* _index;
}
@end

@implementation MSGraphRecurrencePattern

- (MSGraphRecurrencePatternType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphRecurrencePatternType];
    }
    return _type;
}

- (void) setType: (MSGraphRecurrencePatternType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (int32_t) interval
{
    _interval = [self.dictionary[@"interval"] intValue];
    return _interval;
}

- (void) setInterval: (int32_t) val
{
    _interval = val;
    self.dictionary[@"interval"] = @(val);
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

- (int32_t) dayOfMonth
{
    _dayOfMonth = [self.dictionary[@"dayOfMonth"] intValue];
    return _dayOfMonth;
}

- (void) setDayOfMonth: (int32_t) val
{
    _dayOfMonth = val;
    self.dictionary[@"dayOfMonth"] = @(val);
}

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

- (MSGraphDayOfWeek*) firstDayOfWeek
{
    if(!_firstDayOfWeek){
        _firstDayOfWeek = [self.dictionary[@"firstDayOfWeek"] toMSGraphDayOfWeek];
    }
    return _firstDayOfWeek;
}

- (void) setFirstDayOfWeek: (MSGraphDayOfWeek*) val
{
    _firstDayOfWeek = val;
    self.dictionary[@"firstDayOfWeek"] = val;
}

- (MSGraphWeekIndex*) index
{
    if(!_index){
        _index = [self.dictionary[@"index"] toMSGraphWeekIndex];
    }
    return _index;
}

- (void) setIndex: (MSGraphWeekIndex*) val
{
    _index = val;
    self.dictionary[@"index"] = val;
}

@end
