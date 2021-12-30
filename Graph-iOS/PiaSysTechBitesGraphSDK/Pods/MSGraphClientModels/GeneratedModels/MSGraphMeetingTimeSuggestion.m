// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMeetingTimeSuggestion()
{
    double _confidence;
    int32_t _order;
    MSGraphFreeBusyStatus* _organizerAvailability;
    NSArray* _attendeeAvailability;
    NSArray* _locations;
    NSString* _suggestionReason;
    MSGraphTimeSlot* _meetingTimeSlot;
}
@end

@implementation MSGraphMeetingTimeSuggestion

- (double) confidence
{
    _confidence = [self.dictionary[@"confidence"] floatValue];
    return _confidence;
}

- (void) setConfidence: (double) val
{
    _confidence = val;
    self.dictionary[@"confidence"] = @(val);
}

- (int32_t) order
{
    _order = [self.dictionary[@"order"] intValue];
    return _order;
}

- (void) setOrder: (int32_t) val
{
    _order = val;
    self.dictionary[@"order"] = @(val);
}

- (MSGraphFreeBusyStatus*) organizerAvailability
{
    if(!_organizerAvailability){
        _organizerAvailability = [self.dictionary[@"organizerAvailability"] toMSGraphFreeBusyStatus];
    }
    return _organizerAvailability;
}

- (void) setOrganizerAvailability: (MSGraphFreeBusyStatus*) val
{
    _organizerAvailability = val;
    self.dictionary[@"organizerAvailability"] = val;
}

- (NSArray*) attendeeAvailability
{
    if(!_attendeeAvailability){
        
    NSMutableArray *attendeeAvailabilityResult = [NSMutableArray array];
    NSArray *attendeeAvailability = self.dictionary[@"attendeeAvailability"];

    if ([attendeeAvailability isKindOfClass:[NSArray class]]){
        for (id tempAttendeeAvailability in attendeeAvailability){
            [attendeeAvailabilityResult addObject:tempAttendeeAvailability];
        }
    }

    _attendeeAvailability = attendeeAvailabilityResult;
        
    }
    return _attendeeAvailability;
}

- (void) setAttendeeAvailability: (NSArray*) val
{
    _attendeeAvailability = val;
    self.dictionary[@"attendeeAvailability"] = val;
}

- (NSArray*) locations
{
    if(!_locations){
        
    NSMutableArray *locationsResult = [NSMutableArray array];
    NSArray *locations = self.dictionary[@"locations"];

    if ([locations isKindOfClass:[NSArray class]]){
        for (id tempLocation in locations){
            [locationsResult addObject:tempLocation];
        }
    }

    _locations = locationsResult;
        
    }
    return _locations;
}

- (void) setLocations: (NSArray*) val
{
    _locations = val;
    self.dictionary[@"locations"] = val;
}

- (NSString*) suggestionReason
{
    if([[NSNull null] isEqual:self.dictionary[@"suggestionReason"]])
    {
        return nil;
    }   
    return self.dictionary[@"suggestionReason"];
}

- (void) setSuggestionReason: (NSString*) val
{
    self.dictionary[@"suggestionReason"] = val;
}

- (MSGraphTimeSlot*) meetingTimeSlot
{
    if(!_meetingTimeSlot){
        _meetingTimeSlot = [[MSGraphTimeSlot alloc] initWithDictionary: self.dictionary[@"meetingTimeSlot"]];
    }
    return _meetingTimeSlot;
}

- (void) setMeetingTimeSlot: (MSGraphTimeSlot*) val
{
    _meetingTimeSlot = val;
    self.dictionary[@"meetingTimeSlot"] = val;
}

@end
