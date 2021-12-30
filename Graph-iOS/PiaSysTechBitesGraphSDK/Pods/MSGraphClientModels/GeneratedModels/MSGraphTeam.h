// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamMemberSettings, MSGraphTeamGuestSettings, MSGraphTeamMessagingSettings, MSGraphTeamFunSettings, MSGraphChannel, MSGraphTeamsAppInstallation, MSGraphTeamsAsyncOperation; 


#import "MSGraphEntity.h"

@interface MSGraphTeam : MSGraphEntity

  @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setMemberSettings:, getter=memberSettings) MSGraphTeamMemberSettings* memberSettings;
    @property (nullable, nonatomic, setter=setGuestSettings:, getter=guestSettings) MSGraphTeamGuestSettings* guestSettings;
    @property (nullable, nonatomic, setter=setMessagingSettings:, getter=messagingSettings) MSGraphTeamMessagingSettings* messagingSettings;
    @property (nullable, nonatomic, setter=setFunSettings:, getter=funSettings) MSGraphTeamFunSettings* funSettings;
    @property (nonatomic, setter=setIsArchived:, getter=isArchived) BOOL isArchived;
    @property (nullable, nonatomic, setter=setChannels:, getter=channels) NSArray* channels;
    @property (nullable, nonatomic, setter=setInstalledApps:, getter=installedApps) NSArray* installedApps;
    @property (nullable, nonatomic, setter=setTeamOperations:, getter=teamOperations) NSArray* teamOperations;
  
@end
