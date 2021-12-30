// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsTabConfiguration, MSGraphTeamsApp; 


#import "MSGraphEntity.h"

@interface MSGraphTeamsTab : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setConfiguration:, getter=configuration) MSGraphTeamsTabConfiguration* configuration;
    @property (nullable, nonatomic, setter=setTeamsApp:, getter=teamsApp) MSGraphTeamsApp* teamsApp;
  
@end
