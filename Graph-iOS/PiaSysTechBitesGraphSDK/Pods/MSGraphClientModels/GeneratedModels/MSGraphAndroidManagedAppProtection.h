// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedMobileApp, MSGraphManagedAppPolicyDeploymentSummary; 


#import "MSGraphTargetedManagedAppProtection.h"

@interface MSGraphAndroidManagedAppProtection : MSGraphTargetedManagedAppProtection

  @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setDisableAppEncryptionIfDeviceEncryptionIsEnabled:, getter=disableAppEncryptionIfDeviceEncryptionIsEnabled) BOOL disableAppEncryptionIfDeviceEncryptionIsEnabled;
    @property (nonatomic, setter=setEncryptAppData:, getter=encryptAppData) BOOL encryptAppData;
    @property (nonatomic, setter=setDeployedAppCount:, getter=deployedAppCount) int32_t deployedAppCount;
    @property (nullable, nonatomic, setter=setMinimumRequiredPatchVersion:, getter=minimumRequiredPatchVersion) NSString* minimumRequiredPatchVersion;
    @property (nullable, nonatomic, setter=setMinimumWarningPatchVersion:, getter=minimumWarningPatchVersion) NSString* minimumWarningPatchVersion;
    @property (nullable, nonatomic, setter=setApps:, getter=apps) NSArray* apps;
    @property (nullable, nonatomic, setter=setDeploymentSummary:, getter=deploymentSummary) MSGraphManagedAppPolicyDeploymentSummary* deploymentSummary;
  
@end
