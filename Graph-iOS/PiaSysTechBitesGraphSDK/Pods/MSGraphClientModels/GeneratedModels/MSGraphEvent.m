// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEvent()
{
    NSString* _originalStartTimeZone;
    NSString* _originalEndTimeZone;
    MSGraphResponseStatus* _responseStatus;
    NSString* _iCalUId;
    int32_t _reminderMinutesBeforeStart;
    BOOL _isReminderOn;
    BOOL _hasAttachments;
    NSString* _subject;
    MSGraphItemBody* _body;
    NSString* _bodyPreview;
    MSGraphImportance* _importance;
    MSGraphSensitivity* _sensitivity;
    MSGraphDateTimeTimeZone* _start;
    NSDate* _originalStart;
    MSGraphDateTimeTimeZone* _end;
    MSGraphLocation* _location;
    NSArray* _locations;
    BOOL _isAllDay;
    BOOL _isCancelled;
    BOOL _isOrganizer;
    MSGraphPatternedRecurrence* _recurrence;
    BOOL _responseRequested;
    NSString* _seriesMasterId;
    MSGraphFreeBusyStatus* _showAs;
    MSGraphEventType* _type;
    NSArray* _attendees;
    MSGraphRecipient* _organizer;
    NSString* _webLink;
    NSString* _onlineMeetingUrl;
    NSArray* _attachments;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    MSGraphCalendar* _calendar;
    NSArray* _instances;
    NSArray* _extensions;
}
@end

@implementation MSGraphEvent

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.event";
    }
    return self;
}
- (NSString*) originalStartTimeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"originalStartTimeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"originalStartTimeZone"];
}

- (void) setOriginalStartTimeZone: (NSString*) val
{
    self.dictionary[@"originalStartTimeZone"] = val;
}

- (NSString*) originalEndTimeZone
{
    if([[NSNull null] isEqual:self.dictionary[@"originalEndTimeZone"]])
    {
        return nil;
    }   
    return self.dictionary[@"originalEndTimeZone"];
}

- (void) setOriginalEndTimeZone: (NSString*) val
{
    self.dictionary[@"originalEndTimeZone"] = val;
}

- (MSGraphResponseStatus*) responseStatus
{
    if(!_responseStatus){
        _responseStatus = [[MSGraphResponseStatus alloc] initWithDictionary: self.dictionary[@"responseStatus"]];
    }
    return _responseStatus;
}

- (void) setResponseStatus: (MSGraphResponseStatus*) val
{
    _responseStatus = val;
    self.dictionary[@"responseStatus"] = val;
}

- (NSString*) iCalUId
{
    if([[NSNull null] isEqual:self.dictionary[@"iCalUId"]])
    {
        return nil;
    }   
    return self.dictionary[@"iCalUId"];
}

- (void) setICalUId: (NSString*) val
{
    self.dictionary[@"iCalUId"] = val;
}

- (int32_t) reminderMinutesBeforeStart
{
    _reminderMinutesBeforeStart = [self.dictionary[@"reminderMinutesBeforeStart"] intValue];
    return _reminderMinutesBeforeStart;
}

- (void) setReminderMinutesBeforeStart: (int32_t) val
{
    _reminderMinutesBeforeStart = val;
    self.dictionary[@"reminderMinutesBeforeStart"] = @(val);
}

- (BOOL) isReminderOn
{
    _isReminderOn = [self.dictionary[@"isReminderOn"] boolValue];
    return _isReminderOn;
}

- (void) setIsReminderOn: (BOOL) val
{
    _isReminderOn = val;
    self.dictionary[@"isReminderOn"] = @(val);
}

- (BOOL) hasAttachments
{
    _hasAttachments = [self.dictionary[@"hasAttachments"] boolValue];
    return _hasAttachments;
}

- (void) setHasAttachments: (BOOL) val
{
    _hasAttachments = val;
    self.dictionary[@"hasAttachments"] = @(val);
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}

- (MSGraphItemBody*) body
{
    if(!_body){
        _body = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"body"]];
    }
    return _body;
}

- (void) setBody: (MSGraphItemBody*) val
{
    _body = val;
    self.dictionary[@"body"] = val;
}

- (NSString*) bodyPreview
{
    if([[NSNull null] isEqual:self.dictionary[@"bodyPreview"]])
    {
        return nil;
    }   
    return self.dictionary[@"bodyPreview"];
}

- (void) setBodyPreview: (NSString*) val
{
    self.dictionary[@"bodyPreview"] = val;
}

- (MSGraphImportance*) importance
{
    if(!_importance){
        _importance = [self.dictionary[@"importance"] toMSGraphImportance];
    }
    return _importance;
}

- (void) setImportance: (MSGraphImportance*) val
{
    _importance = val;
    self.dictionary[@"importance"] = val;
}

- (MSGraphSensitivity*) sensitivity
{
    if(!_sensitivity){
        _sensitivity = [self.dictionary[@"sensitivity"] toMSGraphSensitivity];
    }
    return _sensitivity;
}

- (void) setSensitivity: (MSGraphSensitivity*) val
{
    _sensitivity = val;
    self.dictionary[@"sensitivity"] = val;
}

- (MSGraphDateTimeTimeZone*) start
{
    if(!_start){
        _start = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"start"]];
    }
    return _start;
}

- (void) setStart: (MSGraphDateTimeTimeZone*) val
{
    _start = val;
    self.dictionary[@"start"] = val;
}

- (NSDate*) originalStart
{
    if(!_originalStart){
        _originalStart = [NSDate ms_dateFromString: self.dictionary[@"originalStart"]];
    }
    return _originalStart;
}

- (void) setOriginalStart: (NSDate*) val
{
    _originalStart = val;
    self.dictionary[@"originalStart"] = [val ms_toString];
}

- (MSGraphDateTimeTimeZone*) end
{
    if(!_end){
        _end = [[MSGraphDateTimeTimeZone alloc] initWithDictionary: self.dictionary[@"end"]];
    }
    return _end;
}

- (void) setEnd: (MSGraphDateTimeTimeZone*) val
{
    _end = val;
    self.dictionary[@"end"] = val;
}

- (MSGraphLocation*) location
{
    if(!_location){
        _location = [[MSGraphLocation alloc] initWithDictionary: self.dictionary[@"location"]];
    }
    return _location;
}

- (void) setLocation: (MSGraphLocation*) val
{
    _location = val;
    self.dictionary[@"location"] = val;
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

- (BOOL) isAllDay
{
    _isAllDay = [self.dictionary[@"isAllDay"] boolValue];
    return _isAllDay;
}

- (void) setIsAllDay: (BOOL) val
{
    _isAllDay = val;
    self.dictionary[@"isAllDay"] = @(val);
}

- (BOOL) isCancelled
{
    _isCancelled = [self.dictionary[@"isCancelled"] boolValue];
    return _isCancelled;
}

- (void) setIsCancelled: (BOOL) val
{
    _isCancelled = val;
    self.dictionary[@"isCancelled"] = @(val);
}

- (BOOL) isOrganizer
{
    _isOrganizer = [self.dictionary[@"isOrganizer"] boolValue];
    return _isOrganizer;
}

- (void) setIsOrganizer: (BOOL) val
{
    _isOrganizer = val;
    self.dictionary[@"isOrganizer"] = @(val);
}

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (BOOL) responseRequested
{
    _responseRequested = [self.dictionary[@"responseRequested"] boolValue];
    return _responseRequested;
}

- (void) setResponseRequested: (BOOL) val
{
    _responseRequested = val;
    self.dictionary[@"responseRequested"] = @(val);
}

- (NSString*) seriesMasterId
{
    if([[NSNull null] isEqual:self.dictionary[@"seriesMasterId"]])
    {
        return nil;
    }   
    return self.dictionary[@"seriesMasterId"];
}

- (void) setSeriesMasterId: (NSString*) val
{
    self.dictionary[@"seriesMasterId"] = val;
}

- (MSGraphFreeBusyStatus*) showAs
{
    if(!_showAs){
        _showAs = [self.dictionary[@"showAs"] toMSGraphFreeBusyStatus];
    }
    return _showAs;
}

- (void) setShowAs: (MSGraphFreeBusyStatus*) val
{
    _showAs = val;
    self.dictionary[@"showAs"] = val;
}

- (MSGraphEventType*) type
{
    if(!_type){
        _type = [self.dictionary[@"type"] toMSGraphEventType];
    }
    return _type;
}

- (void) setType: (MSGraphEventType*) val
{
    _type = val;
    self.dictionary[@"type"] = val;
}

- (NSArray*) attendees
{
    if(!_attendees){
        
    NSMutableArray *attendeesResult = [NSMutableArray array];
    NSArray *attendees = self.dictionary[@"attendees"];

    if ([attendees isKindOfClass:[NSArray class]]){
        for (id tempAttendee in attendees){
            [attendeesResult addObject:tempAttendee];
        }
    }

    _attendees = attendeesResult;
        
    }
    return _attendees;
}

- (void) setAttendees: (NSArray*) val
{
    _attendees = val;
    self.dictionary[@"attendees"] = val;
}

- (MSGraphRecipient*) organizer
{
    if(!_organizer){
        _organizer = [[MSGraphRecipient alloc] initWithDictionary: self.dictionary[@"organizer"]];
    }
    return _organizer;
}

- (void) setOrganizer: (MSGraphRecipient*) val
{
    _organizer = val;
    self.dictionary[@"organizer"] = val;
}

- (NSString*) webLink
{
    if([[NSNull null] isEqual:self.dictionary[@"webLink"]])
    {
        return nil;
    }   
    return self.dictionary[@"webLink"];
}

- (void) setWebLink: (NSString*) val
{
    self.dictionary[@"webLink"] = val;
}

- (NSString*) onlineMeetingUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"onlineMeetingUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"onlineMeetingUrl"];
}

- (void) setOnlineMeetingUrl: (NSString*) val
{
    self.dictionary[@"onlineMeetingUrl"] = val;
}

- (NSArray*) attachments
{
    if(!_attachments){
        
    NSMutableArray *attachmentsResult = [NSMutableArray array];
    NSArray *attachments = self.dictionary[@"attachments"];

    if ([attachments isKindOfClass:[NSArray class]]){
        for (id tempAttachment in attachments){
            [attachmentsResult addObject:tempAttachment];
        }
    }

    _attachments = attachmentsResult;
        
    }
    return _attachments;
}

- (void) setAttachments: (NSArray*) val
{
    _attachments = val;
    self.dictionary[@"attachments"] = val;
}

- (NSArray*) singleValueExtendedProperties
{
    if(!_singleValueExtendedProperties){
        
    NSMutableArray *singleValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *singleValueExtendedProperties = self.dictionary[@"singleValueExtendedProperties"];

    if ([singleValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempSingleValueLegacyExtendedProperty in singleValueExtendedProperties){
            [singleValueExtendedPropertiesResult addObject:tempSingleValueLegacyExtendedProperty];
        }
    }

    _singleValueExtendedProperties = singleValueExtendedPropertiesResult;
        
    }
    return _singleValueExtendedProperties;
}

- (void) setSingleValueExtendedProperties: (NSArray*) val
{
    _singleValueExtendedProperties = val;
    self.dictionary[@"singleValueExtendedProperties"] = val;
}

- (NSArray*) multiValueExtendedProperties
{
    if(!_multiValueExtendedProperties){
        
    NSMutableArray *multiValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *multiValueExtendedProperties = self.dictionary[@"multiValueExtendedProperties"];

    if ([multiValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempMultiValueLegacyExtendedProperty in multiValueExtendedProperties){
            [multiValueExtendedPropertiesResult addObject:tempMultiValueLegacyExtendedProperty];
        }
    }

    _multiValueExtendedProperties = multiValueExtendedPropertiesResult;
        
    }
    return _multiValueExtendedProperties;
}

- (void) setMultiValueExtendedProperties: (NSArray*) val
{
    _multiValueExtendedProperties = val;
    self.dictionary[@"multiValueExtendedProperties"] = val;
}

- (MSGraphCalendar*) calendar
{
    if(!_calendar){
        _calendar = [[MSGraphCalendar alloc] initWithDictionary: self.dictionary[@"calendar"]];
    }
    return _calendar;
}

- (void) setCalendar: (MSGraphCalendar*) val
{
    _calendar = val;
    self.dictionary[@"calendar"] = val;
}

- (NSArray*) instances
{
    if(!_instances){
        
    NSMutableArray *instancesResult = [NSMutableArray array];
    NSArray *instances = self.dictionary[@"instances"];

    if ([instances isKindOfClass:[NSArray class]]){
        for (id tempEvent in instances){
            [instancesResult addObject:tempEvent];
        }
    }

    _instances = instancesResult;
        
    }
    return _instances;
}

- (void) setInstances: (NSArray*) val
{
    _instances = val;
    self.dictionary[@"instances"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}


@end
