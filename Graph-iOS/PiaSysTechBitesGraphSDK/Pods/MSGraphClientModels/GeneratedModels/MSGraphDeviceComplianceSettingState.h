// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphComplianceStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceComplianceSettingState : MSGraphEntity

  @property (nullable, nonatomic, setter=setSetting:, getter=setting) NSString* setting;
    @property (nullable, nonatomic, setter=setSettingName:, getter=settingName) NSString* settingName;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nullable, nonatomic, setter=setDeviceName:, getter=deviceName) NSString* deviceName;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setUserEmail:, getter=userEmail) NSString* userEmail;
    @property (nullable, nonatomic, setter=setUserName:, getter=userName) NSString* userName;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nullable, nonatomic, setter=setDeviceModel:, getter=deviceModel) NSString* deviceModel;
    @property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphComplianceStatus* state;
    @property (nonnull, nonatomic, setter=setComplianceGracePeriodExpirationDateTime:, getter=complianceGracePeriodExpirationDateTime) NSDate* complianceGracePeriodExpirationDateTime;
  
@end
