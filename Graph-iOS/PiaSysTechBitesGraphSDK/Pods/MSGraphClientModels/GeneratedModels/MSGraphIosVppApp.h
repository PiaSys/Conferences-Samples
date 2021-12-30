// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphVppLicensingType, MSGraphIosDeviceType; 
#import "MSGraphVppTokenAccountType.h"


#import "MSGraphMobileApp.h"

@interface MSGraphIosVppApp : MSGraphMobileApp

  @property (nonatomic, setter=setUsedLicenseCount:, getter=usedLicenseCount) int32_t usedLicenseCount;
    @property (nonatomic, setter=setTotalLicenseCount:, getter=totalLicenseCount) int32_t totalLicenseCount;
    @property (nullable, nonatomic, setter=setReleaseDateTime:, getter=releaseDateTime) NSDate* releaseDateTime;
    @property (nullable, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
    @property (nullable, nonatomic, setter=setLicensingType:, getter=licensingType) MSGraphVppLicensingType* licensingType;
    @property (nullable, nonatomic, setter=setApplicableDeviceType:, getter=applicableDeviceType) MSGraphIosDeviceType* applicableDeviceType;
    @property (nullable, nonatomic, setter=setVppTokenOrganizationName:, getter=vppTokenOrganizationName) NSString* vppTokenOrganizationName;
    @property (nonnull, nonatomic, setter=setVppTokenAccountType:, getter=vppTokenAccountType) MSGraphVppTokenAccountType* vppTokenAccountType;
    @property (nullable, nonatomic, setter=setVppTokenAppleId:, getter=vppTokenAppleId) NSString* vppTokenAppleId;
    @property (nullable, nonatomic, setter=setBundleId:, getter=bundleId) NSString* bundleId;
  
@end
