// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceConfigurationAssignment, MSGraphDeviceConfigurationDeviceStatus, MSGraphDeviceConfigurationUserStatus, MSGraphDeviceConfigurationDeviceOverview, MSGraphDeviceConfigurationUserOverview, MSGraphSettingStateDeviceSummary; 


#import "MSGraphEntity.h"

@interface MSGraphDeviceConfiguration : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDeviceConfigurationDescription:, getter=deviceConfigurationDescription) NSString* deviceConfigurationDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
    @property (nullable, nonatomic, setter=setDeviceStatuses:, getter=deviceStatuses) NSArray* deviceStatuses;
    @property (nullable, nonatomic, setter=setUserStatuses:, getter=userStatuses) NSArray* userStatuses;
    @property (nullable, nonatomic, setter=setDeviceStatusOverview:, getter=deviceStatusOverview) MSGraphDeviceConfigurationDeviceOverview* deviceStatusOverview;
    @property (nullable, nonatomic, setter=setUserStatusOverview:, getter=userStatusOverview) MSGraphDeviceConfigurationUserOverview* userStatusOverview;
    @property (nullable, nonatomic, setter=setDeviceSettingStateSummaries:, getter=deviceSettingStateSummaries) NSArray* deviceSettingStateSummaries;
  
@end
