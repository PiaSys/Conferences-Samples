// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphScheduleInformation()
{
    NSString* _scheduleId;
    NSArray* _scheduleItems;
    NSString* _availabilityView;
    MSGraphFreeBusyError* _error;
    MSGraphWorkingHours* _workingHours;
}
@end

@implementation MSGraphScheduleInformation

- (NSString*) scheduleId
{
    if([[NSNull null] isEqual:self.dictionary[@"scheduleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"scheduleId"];
}

- (void) setScheduleId: (NSString*) val
{
    self.dictionary[@"scheduleId"] = val;
}

- (NSArray*) scheduleItems
{
    if(!_scheduleItems){
        
    NSMutableArray *scheduleItemsResult = [NSMutableArray array];
    NSArray *scheduleItems = self.dictionary[@"scheduleItems"];

    if ([scheduleItems isKindOfClass:[NSArray class]]){
        for (id tempScheduleItem in scheduleItems){
            [scheduleItemsResult addObject:tempScheduleItem];
        }
    }

    _scheduleItems = scheduleItemsResult;
        
    }
    return _scheduleItems;
}

- (void) setScheduleItems: (NSArray*) val
{
    _scheduleItems = val;
    self.dictionary[@"scheduleItems"] = val;
}

- (NSString*) availabilityView
{
    if([[NSNull null] isEqual:self.dictionary[@"availabilityView"]])
    {
        return nil;
    }   
    return self.dictionary[@"availabilityView"];
}

- (void) setAvailabilityView: (NSString*) val
{
    self.dictionary[@"availabilityView"] = val;
}

- (MSGraphFreeBusyError*) error
{
    if(!_error){
        _error = [[MSGraphFreeBusyError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphFreeBusyError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (MSGraphWorkingHours*) workingHours
{
    if(!_workingHours){
        _workingHours = [[MSGraphWorkingHours alloc] initWithDictionary: self.dictionary[@"workingHours"]];
    }
    return _workingHours;
}

- (void) setWorkingHours: (MSGraphWorkingHours*) val
{
    _workingHours = val;
    self.dictionary[@"workingHours"] = val;
}

@end
