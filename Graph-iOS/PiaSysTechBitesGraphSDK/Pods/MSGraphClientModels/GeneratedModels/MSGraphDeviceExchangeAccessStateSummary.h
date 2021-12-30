// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceExchangeAccessStateSummary : MSObject

@property (nonatomic, setter=setAllowedDeviceCount:, getter=allowedDeviceCount) int32_t allowedDeviceCount;
@property (nonatomic, setter=setBlockedDeviceCount:, getter=blockedDeviceCount) int32_t blockedDeviceCount;
@property (nonatomic, setter=setQuarantinedDeviceCount:, getter=quarantinedDeviceCount) int32_t quarantinedDeviceCount;
@property (nonatomic, setter=setUnknownDeviceCount:, getter=unknownDeviceCount) int32_t unknownDeviceCount;
@property (nonatomic, setter=setUnavailableDeviceCount:, getter=unavailableDeviceCount) int32_t unavailableDeviceCount;

@end
