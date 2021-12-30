// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAndroidMinimumOperatingSystem; 


#import "MSGraphManagedMobileLobApp.h"

@interface MSGraphManagedAndroidLobApp : MSGraphManagedMobileLobApp

  @property (nullable, nonatomic, setter=setPackageId:, getter=packageId) NSString* packageId;
    @property (nullable, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphAndroidMinimumOperatingSystem* minimumSupportedOperatingSystem;
    @property (nullable, nonatomic, setter=setVersionName:, getter=versionName) NSString* versionName;
    @property (nullable, nonatomic, setter=setVersionCode:, getter=versionCode) NSString* versionCode;
  
@end
