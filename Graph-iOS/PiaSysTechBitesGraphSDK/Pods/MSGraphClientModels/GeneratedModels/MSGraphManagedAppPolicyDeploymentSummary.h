// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedAppPolicyDeploymentSummaryPerApp; 


#import "MSGraphEntity.h"

@interface MSGraphManagedAppPolicyDeploymentSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setConfigurationDeployedUserCount:, getter=configurationDeployedUserCount) int32_t configurationDeployedUserCount;
    @property (nonnull, nonatomic, setter=setLastRefreshTime:, getter=lastRefreshTime) NSDate* lastRefreshTime;
    @property (nullable, nonatomic, setter=setConfigurationDeploymentSummaryPerApp:, getter=configurationDeploymentSummaryPerApp) NSArray* configurationDeploymentSummaryPerApp;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
  
@end
