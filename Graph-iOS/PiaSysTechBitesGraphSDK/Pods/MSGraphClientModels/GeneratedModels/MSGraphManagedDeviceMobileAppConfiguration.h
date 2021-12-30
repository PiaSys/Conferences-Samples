// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedDeviceMobileAppConfigurationAssignment, MSGraphManagedDeviceMobileAppConfigurationDeviceStatus, MSGraphManagedDeviceMobileAppConfigurationUserStatus, MSGraphManagedDeviceMobileAppConfigurationDeviceSummary, MSGraphManagedDeviceMobileAppConfigurationUserSummary; 


#import "MSGraphEntity.h"

@interface MSGraphManagedDeviceMobileAppConfiguration : MSGraphEntity

  @property (nullable, nonatomic, setter=setTargetedMobileApps:, getter=targetedMobileApps) NSArray* targetedMobileApps;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setManagedDeviceMobileAppConfigurationDescription:, getter=managedDeviceMobileAppConfigurationDescription) NSString* managedDeviceMobileAppConfigurationDescription;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
    @property (nullable, nonatomic, setter=setDeviceStatuses:, getter=deviceStatuses) NSArray* deviceStatuses;
    @property (nullable, nonatomic, setter=setUserStatuses:, getter=userStatuses) NSArray* userStatuses;
    @property (nullable, nonatomic, setter=setDeviceStatusSummary:, getter=deviceStatusSummary) MSGraphManagedDeviceMobileAppConfigurationDeviceSummary* deviceStatusSummary;
    @property (nullable, nonatomic, setter=setUserStatusSummary:, getter=userStatusSummary) MSGraphManagedDeviceMobileAppConfigurationUserSummary* userStatusSummary;
  
@end
