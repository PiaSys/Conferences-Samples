// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSGraphMeetingInfo.h"

@interface MSGraphOrganizerMeetingInfo : MSGraphMeetingInfo

@property (nonnull, nonatomic, setter=setOrganizer:, getter=organizer) MSGraphIdentitySet* organizer;

@end
