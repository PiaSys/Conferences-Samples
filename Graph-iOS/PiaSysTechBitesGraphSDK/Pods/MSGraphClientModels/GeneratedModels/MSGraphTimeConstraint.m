// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTimeConstraint()
{
    MSGraphActivityDomain* _activityDomain;
    NSArray* _timeSlots;
}
@end

@implementation MSGraphTimeConstraint

- (MSGraphActivityDomain*) activityDomain
{
    if(!_activityDomain){
        _activityDomain = [self.dictionary[@"activityDomain"] toMSGraphActivityDomain];
    }
    return _activityDomain;
}

- (void) setActivityDomain: (MSGraphActivityDomain*) val
{
    _activityDomain = val;
    self.dictionary[@"activityDomain"] = val;
}

- (NSArray*) timeSlots
{
    if(!_timeSlots){
        
    NSMutableArray *timeSlotsResult = [NSMutableArray array];
    NSArray *timeSlots = self.dictionary[@"timeSlots"];

    if ([timeSlots isKindOfClass:[NSArray class]]){
        for (id tempTimeSlot in timeSlots){
            [timeSlotsResult addObject:tempTimeSlot];
        }
    }

    _timeSlots = timeSlotsResult;
        
    }
    return _timeSlots;
}

- (void) setTimeSlots: (NSArray*) val
{
    _timeSlots = val;
    self.dictionary[@"timeSlots"] = val;
}

@end
