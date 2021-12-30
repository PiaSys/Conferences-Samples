// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphAttendeeBase; 
#import "MSGraphFreeBusyStatus.h"


#import "MSObject.h"

@interface MSGraphAttendeeAvailability : MSObject

@property (nullable, nonatomic, setter=setAttendee:, getter=attendee) MSGraphAttendeeBase* attendee;
@property (nullable, nonatomic, setter=setAvailability:, getter=availability) MSGraphFreeBusyStatus* availability;

@end
