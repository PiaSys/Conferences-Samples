// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphComplianceStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceConfigurationUserStatus : MSGraphEntity

  @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nonatomic, setter=setDevicesCount:, getter=devicesCount) int32_t devicesCount;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphComplianceStatus* status;
    @property (nonnull, nonatomic, setter=setLastReportedDateTime:, getter=lastReportedDateTime) NSDate* lastReportedDateTime;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
  
@end
