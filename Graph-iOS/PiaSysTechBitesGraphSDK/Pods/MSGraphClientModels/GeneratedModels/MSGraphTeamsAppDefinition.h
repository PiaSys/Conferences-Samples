// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphTeamsAppDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setTeamsAppId:, getter=teamsAppId) NSString* teamsAppId;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
  
@end
