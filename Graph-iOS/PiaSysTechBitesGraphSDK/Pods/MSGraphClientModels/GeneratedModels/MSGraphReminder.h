// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDateTimeTimeZone, MSGraphLocation; 


#import "MSObject.h"

@interface MSGraphReminder : MSObject

@property (nullable, nonatomic, setter=setEventId:, getter=eventId) NSString* eventId;
@property (nullable, nonatomic, setter=setEventStartTime:, getter=eventStartTime) MSGraphDateTimeTimeZone* eventStartTime;
@property (nullable, nonatomic, setter=setEventEndTime:, getter=eventEndTime) MSGraphDateTimeTimeZone* eventEndTime;
@property (nullable, nonatomic, setter=setChangeKey:, getter=changeKey) NSString* changeKey;
@property (nullable, nonatomic, setter=setEventSubject:, getter=eventSubject) NSString* eventSubject;
@property (nullable, nonatomic, setter=setEventLocation:, getter=eventLocation) MSGraphLocation* eventLocation;
@property (nullable, nonatomic, setter=setEventWebLink:, getter=eventWebLink) NSString* eventWebLink;
@property (nullable, nonatomic, setter=setReminderFireTime:, getter=reminderFireTime) MSGraphDateTimeTimeZone* reminderFireTime;

@end
