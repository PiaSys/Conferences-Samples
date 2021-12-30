// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphMeetingParticipantInfo; 


#import "MSObject.h"

@interface MSGraphMeetingParticipants : MSObject

@property (nullable, nonatomic, setter=setOrganizer:, getter=organizer) MSGraphMeetingParticipantInfo* organizer;
@property (nullable, nonatomic, setter=setAttendees:, getter=attendees) NSArray* attendees;

@end
