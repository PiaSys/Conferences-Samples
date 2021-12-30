// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTeamsAppDefinition; 
#import "MSGraphTeamsAppDistributionMethod.h"


#import "MSGraphEntity.h"

@interface MSGraphTeamsApp : MSGraphEntity

  @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setDistributionMethod:, getter=distributionMethod) MSGraphTeamsAppDistributionMethod* distributionMethod;
    @property (nullable, nonatomic, setter=setAppDefinitions:, getter=appDefinitions) NSArray* appDefinitions;
  
@end
