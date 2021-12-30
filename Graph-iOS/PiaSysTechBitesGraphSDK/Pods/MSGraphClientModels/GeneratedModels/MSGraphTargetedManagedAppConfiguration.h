// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedMobileApp, MSGraphManagedAppPolicyDeploymentSummary, MSGraphTargetedManagedAppPolicyAssignment; 


#import "MSGraphManagedAppConfiguration.h"

@interface MSGraphTargetedManagedAppConfiguration : MSGraphManagedAppConfiguration

  @property (nonatomic, setter=setDeployedAppCount:, getter=deployedAppCount) int32_t deployedAppCount;
    @property (nonatomic, setter=setIsAssigned:, getter=isAssigned) BOOL isAssigned;
    @property (nullable, nonatomic, setter=setApps:, getter=apps) NSArray* apps;
    @property (nullable, nonatomic, setter=setDeploymentSummary:, getter=deploymentSummary) MSGraphManagedAppPolicyDeploymentSummary* deploymentSummary;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
