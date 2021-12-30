// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphEBookInstallSummary : MSGraphEntity

  @property (nonatomic, setter=setInstalledDeviceCount:, getter=installedDeviceCount) int32_t installedDeviceCount;
    @property (nonatomic, setter=setFailedDeviceCount:, getter=failedDeviceCount) int32_t failedDeviceCount;
    @property (nonatomic, setter=setNotInstalledDeviceCount:, getter=notInstalledDeviceCount) int32_t notInstalledDeviceCount;
    @property (nonatomic, setter=setInstalledUserCount:, getter=installedUserCount) int32_t installedUserCount;
    @property (nonatomic, setter=setFailedUserCount:, getter=failedUserCount) int32_t failedUserCount;
    @property (nonatomic, setter=setNotInstalledUserCount:, getter=notInstalledUserCount) int32_t notInstalledUserCount;
  
@end
