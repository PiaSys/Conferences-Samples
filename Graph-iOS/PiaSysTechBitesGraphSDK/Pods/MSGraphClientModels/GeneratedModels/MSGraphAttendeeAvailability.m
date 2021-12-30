// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAttendeeAvailability()
{
    MSGraphAttendeeBase* _attendee;
    MSGraphFreeBusyStatus* _availability;
}
@end

@implementation MSGraphAttendeeAvailability

- (MSGraphAttendeeBase*) attendee
{
    if(!_attendee){
        _attendee = [[MSGraphAttendeeBase alloc] initWithDictionary: self.dictionary[@"attendee"]];
    }
    return _attendee;
}

- (void) setAttendee: (MSGraphAttendeeBase*) val
{
    _attendee = val;
    self.dictionary[@"attendee"] = val;
}

- (MSGraphFreeBusyStatus*) availability
{
    if(!_availability){
        _availability = [self.dictionary[@"availability"] toMSGraphFreeBusyStatus];
    }
    return _availability;
}

- (void) setAvailability: (MSGraphFreeBusyStatus*) val
{
    _availability = val;
    self.dictionary[@"availability"] = val;
}

@end
