// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphMobileAppIdentifier; 


#import "MSObject.h"

@interface MSGraphManagedAppPolicyDeploymentSummaryPerApp : MSObject

@property (nullable, nonatomic, setter=setMobileAppIdentifier:, getter=mobileAppIdentifier) MSGraphMobileAppIdentifier* mobileAppIdentifier;
@property (nonatomic, setter=setConfigurationAppliedUserCount:, getter=configurationAppliedUserCount) int32_t configurationAppliedUserCount;

@end
