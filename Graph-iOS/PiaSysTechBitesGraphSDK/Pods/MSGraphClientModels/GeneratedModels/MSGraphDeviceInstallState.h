// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphInstallState.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceInstallState : MSGraphEntity

  @property (nullable, nonatomic, setter=setDeviceName:, getter=deviceName) NSString* deviceName;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nonnull, nonatomic, setter=setLastSyncDateTime:, getter=lastSyncDateTime) NSDate* lastSyncDateTime;
    @property (nonnull, nonatomic, setter=setInstallState:, getter=installState) MSGraphInstallState* installState;
    @property (nullable, nonatomic, setter=setErrorCode:, getter=errorCode) NSString* errorCode;
    @property (nullable, nonatomic, setter=setOsVersion:, getter=osVersion) NSString* osVersion;
    @property (nullable, nonatomic, setter=setOsDescription:, getter=osDescription) NSString* osDescription;
    @property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;
  
@end
