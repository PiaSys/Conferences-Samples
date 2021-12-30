// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphEditionUpgradeLicenseType.h"
#import "MSGraphWindows10EditionType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphEditionUpgradeConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setLicenseType:, getter=licenseType) MSGraphEditionUpgradeLicenseType* licenseType;
    @property (nonnull, nonatomic, setter=setTargetEdition:, getter=targetEdition) MSGraphWindows10EditionType* targetEdition;
    @property (nullable, nonatomic, setter=setLicense:, getter=license) NSString* license;
    @property (nullable, nonatomic, setter=setProductKey:, getter=productKey) NSString* productKey;
  
@end
