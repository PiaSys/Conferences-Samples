// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphIosUpdatesInstallStatus.h"
#import "MSGraphComplianceStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphIosUpdateDeviceStatus : MSGraphEntity

  @property (nonnull, nonatomic, setter=setInstallStatus:, getter=installStatus) MSGraphIosUpdatesInstallStatus* installStatus;
    @property (nullable, nonatomic, setter=setOsVersion:, getter=osVersion) NSString* osVersion;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setDeviceDisplayName:, getter=deviceDisplayName) NSString* deviceDisplayName;
    @property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;
    @property (nullable, nonatomic, setter=setDeviceModel:, getter=deviceModel) NSString* deviceModel;
    @property (nonnull, nonatomic, setter=setComplianceGracePeriodExpirationDateTime:, getter=complianceGracePeriodExpirationDateTime) NSDate* complianceGracePeriodExpirationDateTime;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphComplianceStatus* status;
    @property (nonnull, nonatomic, setter=setLastReportedDateTime:, getter=lastReportedDateTime) NSDate* lastReportedDateTime;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
