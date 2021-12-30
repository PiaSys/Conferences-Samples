// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceInstallState; 


#import "MSGraphEntity.h"

@interface MSGraphUserInstallStateSummary : MSGraphEntity

  @property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;
    @property (nonatomic, setter=setInstalledDeviceCount:, getter=installedDeviceCount) int32_t installedDeviceCount;
    @property (nonatomic, setter=setFailedDeviceCount:, getter=failedDeviceCount) int32_t failedDeviceCount;
    @property (nonatomic, setter=setNotInstalledDeviceCount:, getter=notInstalledDeviceCount) int32_t notInstalledDeviceCount;
    @property (nullable, nonatomic, setter=setDeviceStates:, getter=deviceStates) NSArray* deviceStates;
  
@end
