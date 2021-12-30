// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphReminder()
{
    NSString* _eventId;
    MSGraphDateTimeTimeZone* _eventStartTime;
    MSGraphDateTimeTimeZone* _eventEndTime;
    NSString* _changeKey;
    NSString* _eventSubject;
    MSGraphLocation* _eventLocation;
    NSString* _eventWebLink;
    MSGraphDateTimeTimeZone* _reminderFireTime;
}
@end

@implementation MSGraphReminder

- (NSString*) eventId
{
    if([[NSNull null] isEqual:self.dictionary[@"eventId"]])
    {
        return nil;
    }   
    return self.dictionary[@"eventId"];
}

- (void) setEventId: (NSString*) val
{
    self.dictionary[@"eventId"] = val;
}

- (MSGraphDateTimeTimeZone*) eventStartTime
{
    if(!_eventStartTime){
        _eventStartTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"eventStartTime"]];
    }
    return _eventStartTime;
}

- (void) setEventStartTime: (MSGraphDateTimeTimeZone*) val
{
    _eventStartTime = val;
    self.dictionary[@"eventStartTime"] = val;
}

- (MSGraphDateTimeTimeZone*) eventEndTime
{
    if(!_eventEndTime){
        _eventEndTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"eventEndTime"]];
    }
    return _eventEndTime;
}

- (void) setEventEndTime: (MSGraphDateTimeTimeZone*) val
{
    _eventEndTime = val;
    self.dictionary[@"eventEndTime"] = val;
}

- (NSString*) changeKey
{
    if([[NSNull null] isEqual:self.dictionary[@"changeKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"changeKey"];
}

- (void) setChangeKey: (NSString*) val
{
    self.dictionary[@"changeKey"] = val;
}

- (NSString*) eventSubject
{
    if([[NSNull null] isEqual:self.dictionary[@"eventSubject"]])
    {
        return nil;
    }   
    return self.dictionary[@"eventSubject"];
}

- (void) setEventSubject: (NSString*) val
{
    self.dictionary[@"eventSubject"] = val;
}

- (MSGraphLocation*) eventLocation
{
    if(!_eventLocation){
        _eventLocation = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"eventLocation"]];
    }
    return _eventLocation;
}

- (void) setEventLocation: (MSGraphLocation*) val
{
    _eventLocation = val;
    self.dictionary[@"eventLocation"] = val;
}

- (NSString*) eventWebLink
{
    if([[NSNull null] isEqual:self.dictionary[@"eventWebLink"]])
    {
        return nil;
    }   
    return self.dictionary[@"eventWebLink"];
}

- (void) setEventWebLink: (NSString*) val
{
    self.dictionary[@"eventWebLink"] = val;
}

- (MSGraphDateTimeTimeZone*) reminderFireTime
{
    if(!_reminderFireTime){
        _reminderFireTime = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"reminderFireTime"]];
    }
    return _reminderFireTime;
}

- (void) setReminderFireTime: (MSGraphDateTimeTimeZone*) val
{
    _reminderFireTime = val;
    self.dictionary[@"reminderFireTime"] = val;
}

@end
