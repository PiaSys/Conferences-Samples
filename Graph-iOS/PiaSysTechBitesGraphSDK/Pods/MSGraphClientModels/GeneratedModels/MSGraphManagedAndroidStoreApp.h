// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAndroidMinimumOperatingSystem; 


#import "MSGraphManagedApp.h"

@interface MSGraphManagedAndroidStoreApp : MSGraphManagedApp

  @property (nullable, nonatomic, setter=setPackageId:, getter=packageId) NSString* packageId;
    @property (nonnull, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
    @property (nonnull, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphAndroidMinimumOperatingSystem* minimumSupportedOperatingSystem;
  
@end
