// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphInvitationParticipantInfo; 


#import "MSGraphCommsOperation.h"

@interface MSGraphInviteParticipantsOperation : MSGraphCommsOperation

  @property (nonnull, nonatomic, setter=setParticipants:, getter=participants) NSArray* participants;
  
@end
