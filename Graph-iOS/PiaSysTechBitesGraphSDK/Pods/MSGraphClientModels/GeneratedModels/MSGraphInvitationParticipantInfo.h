// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphParticipantInfo.h"

@interface MSGraphInvitationParticipantInfo : MSGraphParticipantInfo

@property (nullable, nonatomic, setter=setReplacesCallId:, getter=replacesCallId) NSString* replacesCallId;

@end
