// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphSettingStateDeviceSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setSettingName:, getter=settingName) NSString* settingName;
    @property (nullable, nonatomic, setter=setInstancePath:, getter=instancePath) NSString* instancePath;
    @property (nonatomic, setter=setUnknownDeviceCount:, getter=unknownDeviceCount) int32_t unknownDeviceCount;
    @property (nonatomic, setter=setNotApplicableDeviceCount:, getter=notApplicableDeviceCount) int32_t notApplicableDeviceCount;
    @property (nonatomic, setter=setCompliantDeviceCount:, getter=compliantDeviceCount) int32_t compliantDeviceCount;
    @property (nonatomic, setter=setRemediatedDeviceCount:, getter=remediatedDeviceCount) int32_t remediatedDeviceCount;
    @property (nonatomic, setter=setNonCompliantDeviceCount:, getter=nonCompliantDeviceCount) int32_t nonCompliantDeviceCount;
    @property (nonatomic, setter=setErrorDeviceCount:, getter=errorDeviceCount) int32_t errorDeviceCount;
    @property (nonatomic, setter=setConflictDeviceCount:, getter=conflictDeviceCount) int32_t conflictDeviceCount;
  
@end
