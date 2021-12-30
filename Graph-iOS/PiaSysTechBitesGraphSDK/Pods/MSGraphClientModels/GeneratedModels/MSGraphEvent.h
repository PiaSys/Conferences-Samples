// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphResponseStatus, MSGraphItemBody, MSGraphDateTimeTimeZone, MSGraphLocation, MSGraphPatternedRecurrence, MSGraphAttendee, MSGraphRecipient, MSGraphAttachment, MSGraphSingleValueLegacyExtendedProperty, MSGraphMultiValueLegacyExtendedProperty, MSGraphCalendar, MSGraphExtension; 
#import "MSGraphImportance.h"
#import "MSGraphSensitivity.h"
#import "MSGraphFreeBusyStatus.h"
#import "MSGraphEventType.h"


#import "MSGraphOutlookItem.h"

@interface MSGraphEvent : MSGraphOutlookItem

  @property (nullable, nonatomic, setter=setOriginalStartTimeZone:, getter=originalStartTimeZone) NSString* originalStartTimeZone;
    @property (nullable, nonatomic, setter=setOriginalEndTimeZone:, getter=originalEndTimeZone) NSString* originalEndTimeZone;
    @property (nullable, nonatomic, setter=setResponseStatus:, getter=responseStatus) MSGraphResponseStatus* responseStatus;
    @property (nullable, nonatomic, setter=setICalUId:, getter=iCalUId) NSString* iCalUId;
    @property (nonatomic, setter=setReminderMinutesBeforeStart:, getter=reminderMinutesBeforeStart) int32_t reminderMinutesBeforeStart;
    @property (nonatomic, setter=setIsReminderOn:, getter=isReminderOn) BOOL isReminderOn;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;
    @property (nullable, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nullable, nonatomic, setter=setBodyPreview:, getter=bodyPreview) NSString* bodyPreview;
    @property (nullable, nonatomic, setter=setImportance:, getter=importance) MSGraphImportance* importance;
    @property (nullable, nonatomic, setter=setSensitivity:, getter=sensitivity) MSGraphSensitivity* sensitivity;
    @property (nullable, nonatomic, setter=setStart:, getter=start) MSGraphDateTimeTimeZone* start;
    @property (nullable, nonatomic, setter=setOriginalStart:, getter=originalStart) NSDate* originalStart;
    @property (nullable, nonatomic, setter=setEnd:, getter=end) MSGraphDateTimeTimeZone* end;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphLocation* location;
    @property (nullable, nonatomic, setter=setLocations:, getter=locations) NSArray* locations;
    @property (nonatomic, setter=setIsAllDay:, getter=isAllDay) BOOL isAllDay;
    @property (nonatomic, setter=setIsCancelled:, getter=isCancelled) BOOL isCancelled;
    @property (nonatomic, setter=setIsOrganizer:, getter=isOrganizer) BOOL isOrganizer;
    @property (nullable, nonatomic, setter=setRecurrence:, getter=recurrence) MSGraphPatternedRecurrence* recurrence;
    @property (nonatomic, setter=setResponseRequested:, getter=responseRequested) BOOL responseRequested;
    @property (nullable, nonatomic, setter=setSeriesMasterId:, getter=seriesMasterId) NSString* seriesMasterId;
    @property (nullable, nonatomic, setter=setShowAs:, getter=showAs) MSGraphFreeBusyStatus* showAs;
    @property (nullable, nonatomic, setter=setType:, getter=type) MSGraphEventType* type;
    @property (nullable, nonatomic, setter=setAttendees:, getter=attendees) NSArray* attendees;
    @property (nullable, nonatomic, setter=setOrganizer:, getter=organizer) MSGraphRecipient* organizer;
    @property (nullable, nonatomic, setter=setWebLink:, getter=webLink) NSString* webLink;
    @property (nullable, nonatomic, setter=setOnlineMeetingUrl:, getter=onlineMeetingUrl) NSString* onlineMeetingUrl;
    @property (nullable, nonatomic, setter=setAttachments:, getter=attachments) NSArray* attachments;
    @property (nullable, nonatomic, setter=setSingleValueExtendedProperties:, getter=singleValueExtendedProperties) NSArray* singleValueExtendedProperties;
    @property (nullable, nonatomic, setter=setMultiValueExtendedProperties:, getter=multiValueExtendedProperties) NSArray* multiValueExtendedProperties;
    @property (nullable, nonatomic, setter=setCalendar:, getter=calendar) MSGraphCalendar* calendar;
    @property (nullable, nonatomic, setter=setInstances:, getter=instances) NSArray* instances;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
  
@end
