// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAttendeeAvailability, MSGraphLocation, MSGraphTimeSlot; 
#import "MSGraphFreeBusyStatus.h"


#import "MSObject.h"

@interface MSGraphMeetingTimeSuggestion : MSObject

@property (nonatomic, setter=setConfidence:, getter=confidence) double confidence;
@property (nonatomic, setter=setOrder:, getter=order) int32_t order;
@property (nullable, nonatomic, setter=setOrganizerAvailability:, getter=organizerAvailability) MSGraphFreeBusyStatus* organizerAvailability;
@property (nullable, nonatomic, setter=setAttendeeAvailability:, getter=attendeeAvailability) NSArray* attendeeAvailability;
@property (nullable, nonatomic, setter=setLocations:, getter=locations) NSArray* locations;
@property (nullable, nonatomic, setter=setSuggestionReason:, getter=suggestionReason) NSString* suggestionReason;
@property (nullable, nonatomic, setter=setMeetingTimeSlot:, getter=meetingTimeSlot) MSGraphTimeSlot* meetingTimeSlot;

@end
