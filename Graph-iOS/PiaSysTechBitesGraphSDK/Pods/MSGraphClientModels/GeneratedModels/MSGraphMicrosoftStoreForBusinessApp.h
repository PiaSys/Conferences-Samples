// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphMicrosoftStoreForBusinessLicenseType.h"


#import "MSGraphMobileApp.h"

@interface MSGraphMicrosoftStoreForBusinessApp : MSGraphMobileApp

  @property (nonatomic, setter=setUsedLicenseCount:, getter=usedLicenseCount) int32_t usedLicenseCount;
    @property (nonatomic, setter=setTotalLicenseCount:, getter=totalLicenseCount) int32_t totalLicenseCount;
    @property (nullable, nonatomic, setter=setProductKey:, getter=productKey) NSString* productKey;
    @property (nonnull, nonatomic, setter=setLicenseType:, getter=licenseType) MSGraphMicrosoftStoreForBusinessLicenseType* licenseType;
    @property (nullable, nonatomic, setter=setPackageIdentityName:, getter=packageIdentityName) NSString* packageIdentityName;
  
@end
