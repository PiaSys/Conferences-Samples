// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphMobileAppAssignmentSettings.h"

@interface MSGraphIosVppAppAssignmentSettings : MSGraphMobileAppAssignmentSettings

@property (nonatomic, setter=setUseDeviceLicensing:, getter=useDeviceLicensing) BOOL useDeviceLicensing;
@property (nullable, nonatomic, setter=setVpnConfigurationId:, getter=vpnConfigurationId) NSString* vpnConfigurationId;

@end
