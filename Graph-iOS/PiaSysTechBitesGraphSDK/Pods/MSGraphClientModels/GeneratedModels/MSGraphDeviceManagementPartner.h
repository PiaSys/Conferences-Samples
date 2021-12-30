// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceManagementPartnerTenantState.h"
#import "MSGraphDeviceManagementPartnerAppType.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementPartner : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastHeartbeatDateTime:, getter=lastHeartbeatDateTime) NSDate* lastHeartbeatDateTime;
    @property (nonnull, nonatomic, setter=setPartnerState:, getter=partnerState) MSGraphDeviceManagementPartnerTenantState* partnerState;
    @property (nonnull, nonatomic, setter=setPartnerAppType:, getter=partnerAppType) MSGraphDeviceManagementPartnerAppType* partnerAppType;
    @property (nullable, nonatomic, setter=setSingleTenantAppId:, getter=singleTenantAppId) NSString* singleTenantAppId;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsConfigured:, getter=isConfigured) BOOL isConfigured;
    @property (nullable, nonatomic, setter=setWhenPartnerDevicesWillBeRemovedDateTime:, getter=whenPartnerDevicesWillBeRemovedDateTime) NSDate* whenPartnerDevicesWillBeRemovedDateTime;
    @property (nullable, nonatomic, setter=setWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime:, getter=whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime) NSDate* whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime;
  
@end
