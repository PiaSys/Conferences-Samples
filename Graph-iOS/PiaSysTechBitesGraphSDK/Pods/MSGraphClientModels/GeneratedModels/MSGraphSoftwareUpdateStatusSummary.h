// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphSoftwareUpdateStatusSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setCompliantDeviceCount:, getter=compliantDeviceCount) int32_t compliantDeviceCount;
    @property (nonatomic, setter=setNonCompliantDeviceCount:, getter=nonCompliantDeviceCount) int32_t nonCompliantDeviceCount;
    @property (nonatomic, setter=setRemediatedDeviceCount:, getter=remediatedDeviceCount) int32_t remediatedDeviceCount;
    @property (nonatomic, setter=setErrorDeviceCount:, getter=errorDeviceCount) int32_t errorDeviceCount;
    @property (nonatomic, setter=setUnknownDeviceCount:, getter=unknownDeviceCount) int32_t unknownDeviceCount;
    @property (nonatomic, setter=setConflictDeviceCount:, getter=conflictDeviceCount) int32_t conflictDeviceCount;
    @property (nonatomic, setter=setNotApplicableDeviceCount:, getter=notApplicableDeviceCount) int32_t notApplicableDeviceCount;
    @property (nonatomic, setter=setCompliantUserCount:, getter=compliantUserCount) int32_t compliantUserCount;
    @property (nonatomic, setter=setNonCompliantUserCount:, getter=nonCompliantUserCount) int32_t nonCompliantUserCount;
    @property (nonatomic, setter=setRemediatedUserCount:, getter=remediatedUserCount) int32_t remediatedUserCount;
    @property (nonatomic, setter=setErrorUserCount:, getter=errorUserCount) int32_t errorUserCount;
    @property (nonatomic, setter=setUnknownUserCount:, getter=unknownUserCount) int32_t unknownUserCount;
    @property (nonatomic, setter=setConflictUserCount:, getter=conflictUserCount) int32_t conflictUserCount;
    @property (nonatomic, setter=setNotApplicableUserCount:, getter=notApplicableUserCount) int32_t notApplicableUserCount;
  
@end
