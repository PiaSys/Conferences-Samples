// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphKeyValuePair, MSGraphManagedMobileApp, MSGraphManagedAppPolicyDeploymentSummary; 
#import "MSGraphManagedAppDataEncryptionType.h"


#import "MSGraphManagedAppProtection.h"

@interface MSGraphDefaultManagedAppProtection : MSGraphManagedAppProtection

  @property (nonnull, nonatomic, setter=setAppDataEncryptionType:, getter=appDataEncryptionType) MSGraphManagedAppDataEncryptionType* appDataEncryptionType;
    @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setEncryptAppData:, getter=encryptAppData) BOOL encryptAppData;
    @property (nonatomic, setter=setDisableAppEncryptionIfDeviceEncryptionIsEnabled:, getter=disableAppEncryptionIfDeviceEncryptionIsEnabled) BOOL disableAppEncryptionIfDeviceEncryptionIsEnabled;
    @property (nullable, nonatomic, setter=setMinimumRequiredSdkVersion:, getter=minimumRequiredSdkVersion) NSString* minimumRequiredSdkVersion;
    @property (nonnull, nonatomic, setter=setCustomSettings:, getter=customSettings) NSArray* customSettings;
    @property (nonatomic, setter=setDeployedAppCount:, getter=deployedAppCount) int32_t deployedAppCount;
    @property (nullable, nonatomic, setter=setMinimumRequiredPatchVersion:, getter=minimumRequiredPatchVersion) NSString* minimumRequiredPatchVersion;
    @property (nullable, nonatomic, setter=setMinimumWarningPatchVersion:, getter=minimumWarningPatchVersion) NSString* minimumWarningPatchVersion;
    @property (nonatomic, setter=setFaceIdBlocked:, getter=faceIdBlocked) BOOL faceIdBlocked;
    @property (nullable, nonatomic, setter=setApps:, getter=apps) NSArray* apps;
    @property (nullable, nonatomic, setter=setDeploymentSummary:, getter=deploymentSummary) MSGraphManagedAppPolicyDeploymentSummary* deploymentSummary;
  
@end
