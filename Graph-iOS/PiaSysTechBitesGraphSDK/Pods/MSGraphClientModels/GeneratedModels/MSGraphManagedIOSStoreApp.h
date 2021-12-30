// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIosDeviceType, MSGraphIosMinimumOperatingSystem; 


#import "MSGraphManagedApp.h"

@interface MSGraphManagedIOSStoreApp : MSGraphManagedApp

  @property (nullable, nonatomic, setter=setBundleId:, getter=bundleId) NSString* bundleId;
    @property (nonnull, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
    @property (nonnull, nonatomic, setter=setApplicableDeviceType:, getter=applicableDeviceType) MSGraphIosDeviceType* applicableDeviceType;
    @property (nonnull, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphIosMinimumOperatingSystem* minimumSupportedOperatingSystem;
  
@end
