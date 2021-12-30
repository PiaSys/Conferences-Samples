// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConfigurationManagerClientEnabledFeatures : MSObject

@property (nonatomic, setter=setInventory:, getter=inventory) BOOL inventory;
@property (nonatomic, setter=setModernApps:, getter=modernApps) BOOL modernApps;
@property (nonatomic, setter=setResourceAccess:, getter=resourceAccess) BOOL resourceAccess;
@property (nonatomic, setter=setDeviceConfiguration:, getter=deviceConfiguration) BOOL deviceConfiguration;
@property (nonatomic, setter=setCompliancePolicy:, getter=compliancePolicy) BOOL compliancePolicy;
@property (nonatomic, setter=setWindowsUpdateForBusiness:, getter=windowsUpdateForBusiness) BOOL windowsUpdateForBusiness;

@end
