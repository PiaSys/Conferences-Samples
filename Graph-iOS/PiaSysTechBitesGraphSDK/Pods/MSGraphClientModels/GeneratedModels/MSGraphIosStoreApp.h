// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIosDeviceType, MSGraphIosMinimumOperatingSystem; 


#import "MSGraphMobileApp.h"

@interface MSGraphIosStoreApp : MSGraphMobileApp

  @property (nullable, nonatomic, setter=setBundleId:, getter=bundleId) NSString* bundleId;
    @property (nullable, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
    @property (nonnull, nonatomic, setter=setApplicableDeviceType:, getter=applicableDeviceType) MSGraphIosDeviceType* applicableDeviceType;
    @property (nullable, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphIosMinimumOperatingSystem* minimumSupportedOperatingSystem;
  
@end
