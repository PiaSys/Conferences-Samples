// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphMobileThreatPartnerTenantState.h"


#import "MSGraphEntity.h"

@interface MSGraphMobileThreatDefenseConnector : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastHeartbeatDateTime:, getter=lastHeartbeatDateTime) NSDate* lastHeartbeatDateTime;
    @property (nonnull, nonatomic, setter=setPartnerState:, getter=partnerState) MSGraphMobileThreatPartnerTenantState* partnerState;
    @property (nonatomic, setter=setAndroidEnabled:, getter=androidEnabled) BOOL androidEnabled;
    @property (nonatomic, setter=setIosEnabled:, getter=iosEnabled) BOOL iosEnabled;
    @property (nonatomic, setter=setAndroidDeviceBlockedOnMissingPartnerData:, getter=androidDeviceBlockedOnMissingPartnerData) BOOL androidDeviceBlockedOnMissingPartnerData;
    @property (nonatomic, setter=setIosDeviceBlockedOnMissingPartnerData:, getter=iosDeviceBlockedOnMissingPartnerData) BOOL iosDeviceBlockedOnMissingPartnerData;
    @property (nonatomic, setter=setPartnerUnsupportedOsVersionBlocked:, getter=partnerUnsupportedOsVersionBlocked) BOOL partnerUnsupportedOsVersionBlocked;
    @property (nonatomic, setter=setPartnerUnresponsivenessThresholdInDays:, getter=partnerUnresponsivenessThresholdInDays) int32_t partnerUnresponsivenessThresholdInDays;
  
@end
