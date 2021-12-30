// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceCompliancePolicySettingState; 
#import "MSGraphPolicyPlatformType.h"
#import "MSGraphComplianceStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceCompliancePolicyState : MSGraphEntity

  @property (nullable, nonatomic, setter=setSettingStates:, getter=settingStates) NSArray* settingStates;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nonnull, nonatomic, setter=setPlatformType:, getter=platformType) MSGraphPolicyPlatformType* platformType;
    @property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphComplianceStatus* state;
    @property (nonatomic, setter=setSettingCount:, getter=settingCount) int32_t settingCount;
  
@end
