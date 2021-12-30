// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTeamMessagingSettings : MSObject

@property (nonatomic, setter=setAllowUserEditMessages:, getter=allowUserEditMessages) BOOL allowUserEditMessages;
@property (nonatomic, setter=setAllowUserDeleteMessages:, getter=allowUserDeleteMessages) BOOL allowUserDeleteMessages;
@property (nonatomic, setter=setAllowOwnerDeleteMessages:, getter=allowOwnerDeleteMessages) BOOL allowOwnerDeleteMessages;
@property (nonatomic, setter=setAllowTeamMentions:, getter=allowTeamMentions) BOOL allowTeamMentions;
@property (nonatomic, setter=setAllowChannelMentions:, getter=allowChannelMentions) BOOL allowChannelMentions;

@end
