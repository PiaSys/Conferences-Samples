// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRecurrenceRange()
{
    MSGraphRecurrenceRangeType* _type;
    MSDate* _startDate;
    MSDate* _endDate;
    NSString* _recurrenceTimeZone;
    int32_t _numberOfOccurrences;
}
@end

@implementation MSGraphRecurrenceRange

- (MSGraphRecurrenceRangeType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphRecurrenceRangeType];
    }
    return _type;
}

- (void) setType: (MSGraphRecurrenceRangeType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (MSDate*) startDate
{
    if(!_startDate){
        _startDate = [MSDate ms_dateFromString: self.dictionary[@"startDate"]];
    }
    return _startDate;
}

- (void) setStartDate: (MSDate*) val
{
    _startDate = val;
    self.dictionary[@"startDate"] = [val ms_toString];
}

- (MSDate*) endDate
{
    if(!_endDate){
        _endDate = [MSDate ms_dateFromString: self.dictionary[@"endDate"]];
    }
    return _endDate;
}

- (void) setEndDate: (MSDate*) val
{
    _endDate = val;
    self.dictionary[@"endDate"] = [val ms_toString];
}

- (NSString*) recurrenceTimeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"recurrenceTimeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"recurrenceTimeZone"];
}

- (void) setRecurrenceTimeZone: (NSString*) val
{
    self.dictionary[@"recurrenceTimeZone"] = val;
}

- (int32_t) numberOfOccurrences
{
    _numberOfOccurrences = [self.dictionary[@"numberOfOccurrences"] intValue];
    return _numberOfOccurrences;
}

- (void) setNumberOfOccurrences: (int32_t) val
{
    _numberOfOccurrences = val;
    self.dictionary[@"numberOfOccurrences"] = @(val);
}

@end
