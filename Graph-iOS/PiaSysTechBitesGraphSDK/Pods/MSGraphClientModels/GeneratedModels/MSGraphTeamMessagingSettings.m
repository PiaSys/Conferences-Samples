// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamMessagingSettings()
{
    BOOL _allowUserEditMessages;
    BOOL _allowUserDeleteMessages;
    BOOL _allowOwnerDeleteMessages;
    BOOL _allowTeamMentions;
    BOOL _allowChannelMentions;
}
@end

@implementation MSGraphTeamMessagingSettings

- (BOOL) allowUserEditMessages
{
    _allowUserEditMessages = [self.dictionary[@"allowUserEditMessages"] boolValue];
    return _allowUserEditMessages;
}

- (void) setAllowUserEditMessages: (BOOL) val
{
    _allowUserEditMessages = val;
    self.dictionary[@"allowUserEditMessages"] = @(val);
}

- (BOOL) allowUserDeleteMessages
{
    _allowUserDeleteMessages = [self.dictionary[@"allowUserDeleteMessages"] boolValue];
    return _allowUserDeleteMessages;
}

- (void) setAllowUserDeleteMessages: (BOOL) val
{
    _allowUserDeleteMessages = val;
    self.dictionary[@"allowUserDeleteMessages"] = @(val);
}

- (BOOL) allowOwnerDeleteMessages
{
    _allowOwnerDeleteMessages = [self.dictionary[@"allowOwnerDeleteMessages"] boolValue];
    return _allowOwnerDeleteMessages;
}

- (void) setAllowOwnerDeleteMessages: (BOOL) val
{
    _allowOwnerDeleteMessages = val;
    self.dictionary[@"allowOwnerDeleteMessages"] = @(val);
}

- (BOOL) allowTeamMentions
{
    _allowTeamMentions = [self.dictionary[@"allowTeamMentions"] boolValue];
    return _allowTeamMentions;
}

- (void) setAllowTeamMentions: (BOOL) val
{
    _allowTeamMentions = val;
    self.dictionary[@"allowTeamMentions"] = @(val);
}

- (BOOL) allowChannelMentions
{
    _allowChannelMentions = [self.dictionary[@"allowChannelMentions"] boolValue];
    return _allowChannelMentions;
}

- (void) setAllowChannelMentions: (BOOL) val
{
    _allowChannelMentions = val;
    self.dictionary[@"allowChannelMentions"] = @(val);
}

@end
