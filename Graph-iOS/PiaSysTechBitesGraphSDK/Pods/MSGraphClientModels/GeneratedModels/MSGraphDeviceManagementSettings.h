// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceManagementSettings : MSObject

@property (nonatomic, setter=setDeviceComplianceCheckinThresholdDays:, getter=deviceComplianceCheckinThresholdDays) int32_t deviceComplianceCheckinThresholdDays;
@property (nonatomic, setter=setIsScheduledActionEnabled:, getter=isScheduledActionEnabled) BOOL isScheduledActionEnabled;
@property (nonatomic, setter=setSecureByDefault:, getter=secureByDefault) BOOL secureByDefault;

@end
