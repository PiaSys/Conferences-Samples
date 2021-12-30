// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceOperatingSystemSummary, MSGraphDeviceExchangeAccessStateSummary; 


#import "MSGraphEntity.h"

@interface MSGraphManagedDeviceOverview : MSGraphEntity

  @property (nonatomic, setter=setEnrolledDeviceCount:, getter=enrolledDeviceCount) int32_t enrolledDeviceCount;
    @property (nonatomic, setter=setMdmEnrolledCount:, getter=mdmEnrolledCount) int32_t mdmEnrolledCount;
    @property (nonatomic, setter=setDualEnrolledDeviceCount:, getter=dualEnrolledDeviceCount) int32_t dualEnrolledDeviceCount;
    @property (nullable, nonatomic, setter=setDeviceOperatingSystemSummary:, getter=deviceOperatingSystemSummary) MSGraphDeviceOperatingSystemSummary* deviceOperatingSystemSummary;
    @property (nullable, nonatomic, setter=setDeviceExchangeAccessStateSummary:, getter=deviceExchangeAccessStateSummary) MSGraphDeviceExchangeAccessStateSummary* deviceExchangeAccessStateSummary;
  
@end
