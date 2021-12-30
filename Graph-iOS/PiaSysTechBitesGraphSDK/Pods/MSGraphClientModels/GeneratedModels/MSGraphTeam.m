// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeam()
{
    NSString* _webUrl;
    MSGraphTeamMemberSettings* _memberSettings;
    MSGraphTeamGuestSettings* _guestSettings;
    MSGraphTeamMessagingSettings* _messagingSettings;
    MSGraphTeamFunSettings* _funSettings;
    BOOL _isArchived;
    NSArray* _channels;
    NSArray* _installedApps;
    NSArray* _teamOperations;
}
@end

@implementation MSGraphTeam

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.team";
    }
    return self;
}
- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (MSGraphTeamMemberSettings*) memberSettings
{
    if(!_memberSettings){
        _memberSettings = [[MSGraphTeamMemberSettings alloc] initWithDictionary: self.dictionary[@"memberSettings"]];
    }
    return _memberSettings;
}

- (void) setMemberSettings: (MSGraphTeamMemberSettings*) val
{
    _memberSettings = val;
    self.dictionary[@"memberSettings"] = val;
}

- (MSGraphTeamGuestSettings*) guestSettings
{
    if(!_guestSettings){
        _guestSettings = [[MSGraphTeamGuestSettings alloc] initWithDictionary: self.dictionary[@"guestSettings"]];
    }
    return _guestSettings;
}

- (void) setGuestSettings: (MSGraphTeamGuestSettings*) val
{
    _guestSettings = val;
    self.dictionary[@"guestSettings"] = val;
}

- (MSGraphTeamMessagingSettings*) messagingSettings
{
    if(!_messagingSettings){
        _messagingSettings = [[MSGraphTeamMessagingSettings alloc] initWithDictionary: self.dictionary[@"messagingSettings"]];
    }
    return _messagingSettings;
}

- (void) setMessagingSettings: (MSGraphTeamMessagingSettings*) val
{
    _messagingSettings = val;
    self.dictionary[@"messagingSettings"] = val;
}

- (MSGraphTeamFunSettings*) funSettings
{
    if(!_funSettings){
        _funSettings = [[MSGraphTeamFunSettings alloc] initWithDictionary: self.dictionary[@"funSettings"]];
    }
    return _funSettings;
}

- (void) setFunSettings: (MSGraphTeamFunSettings*) val
{
    _funSettings = val;
    self.dictionary[@"funSettings"] = val;
}

- (BOOL) isArchived
{
    _isArchived = [self.dictionary[@"isArchived"] boolValue];
    return _isArchived;
}

- (void) setIsArchived: (BOOL) val
{
    _isArchived = val;
    self.dictionary[@"isArchived"] = @(val);
}

- (NSArray*) channels
{
    if(!_channels){
        
    NSMutableArray *channelsResult = [NSMutableArray array];
    NSArray *channels = self.dictionary[@"channels"];

    if ([channels isKindOfClass:[NSArray class]]){
        for (id tempChannel in channels){
            [channelsResult addObject:tempChannel];
        }
    }

    _channels = channelsResult;
        
    }
    return _channels;
}

- (void) setChannels: (NSArray*) val
{
    _channels = val;
    self.dictionary[@"channels"] = val;
}

- (NSArray*) installedApps
{
    if(!_installedApps){
        
    NSMutableArray *installedAppsResult = [NSMutableArray array];
    NSArray *installedApps = self.dictionary[@"installedApps"];

    if ([installedApps isKindOfClass:[NSArray class]]){
        for (id tempTeamsAppInstallation in installedApps){
            [installedAppsResult addObject:tempTeamsAppInstallation];
        }
    }

    _installedApps = installedAppsResult;
        
    }
    return _installedApps;
}

- (void) setInstalledApps: (NSArray*) val
{
    _installedApps = val;
    self.dictionary[@"installedApps"] = val;
}

- (NSArray*) teamOperations
{
    if(!_teamOperations){
        
    NSMutableArray *teamOperationsResult = [NSMutableArray array];
    NSArray *teamOperations = self.dictionary[@"operations"];

    if ([teamOperations isKindOfClass:[NSArray class]]){
        for (id tempTeamsAsyncOperation in teamOperations){
            [teamOperationsResult addObject:tempTeamsAsyncOperation];
        }
    }

    _teamOperations = teamOperationsResult;
        
    }
    return _teamOperations;
}

- (void) setTeamOperations: (NSArray*) val
{
    _teamOperations = val;
    self.dictionary[@"operations"] = val;
}


@end
