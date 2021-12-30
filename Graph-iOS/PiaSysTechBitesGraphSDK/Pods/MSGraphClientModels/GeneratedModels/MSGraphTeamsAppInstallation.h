// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsApp, MSGraphTeamsAppDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphTeamsAppInstallation : MSGraphEntity

  @property (nullable, nonatomic, setter=setTeamsApp:, getter=teamsApp) MSGraphTeamsApp* teamsApp;
    @property (nullable, nonatomic, setter=setTeamsAppDefinition:, getter=teamsAppDefinition) MSGraphTeamsAppDefinition* teamsAppDefinition;
  
@end
