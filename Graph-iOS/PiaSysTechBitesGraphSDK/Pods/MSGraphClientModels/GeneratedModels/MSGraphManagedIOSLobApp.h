// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIosDeviceType, MSGraphIosMinimumOperatingSystem; 


#import "MSGraphManagedMobileLobApp.h"

@interface MSGraphManagedIOSLobApp : MSGraphManagedMobileLobApp

  @property (nullable, nonatomic, setter=setBundleId:, getter=bundleId) NSString* bundleId;
    @property (nonnull, nonatomic, setter=setApplicableDeviceType:, getter=applicableDeviceType) MSGraphIosDeviceType* applicableDeviceType;
    @property (nullable, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphIosMinimumOperatingSystem* minimumSupportedOperatingSystem;
    @property (nullable, nonatomic, setter=setExpirationDateTime:, getter=expirationDateTime) NSDate* expirationDateTime;
    @property (nullable, nonatomic, setter=setVersionNumber:, getter=versionNumber) NSString* versionNumber;
    @property (nullable, nonatomic, setter=setBuildNumber:, getter=buildNumber) NSString* buildNumber;
  
@end
