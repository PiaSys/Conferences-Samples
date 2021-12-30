// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsApp; 


#import "MSGraphEntity.h"

@interface MSGraphAppCatalogs : MSGraphEntity

  @property (nullable, nonatomic, setter=setTeamsApps:, getter=teamsApps) NSArray* teamsApps;
  
@end
