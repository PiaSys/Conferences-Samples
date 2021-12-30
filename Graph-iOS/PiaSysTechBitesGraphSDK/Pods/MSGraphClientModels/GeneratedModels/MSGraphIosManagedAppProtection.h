// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedMobileApp, MSGraphManagedAppPolicyDeploymentSummary; 
#import "MSGraphManagedAppDataEncryptionType.h"


#import "MSGraphTargetedManagedAppProtection.h"

@interface MSGraphIosManagedAppProtection : MSGraphTargetedManagedAppProtection

  @property (nonnull, nonatomic, setter=setAppDataEncryptionType:, getter=appDataEncryptionType) MSGraphManagedAppDataEncryptionType* appDataEncryptionType;
    @property (nullable, nonatomic, setter=setMinimumRequiredSdkVersion:, getter=minimumRequiredSdkVersion) NSString* minimumRequiredSdkVersion;
    @property (nonatomic, setter=setDeployedAppCount:, getter=deployedAppCount) int32_t deployedAppCount;
    @property (nonatomic, setter=setFaceIdBlocked:, getter=faceIdBlocked) BOOL faceIdBlocked;
    @property (nullable, nonatomic, setter=setApps:, getter=apps) NSArray* apps;
    @property (nullable, nonatomic, setter=setDeploymentSummary:, getter=deploymentSummary) MSGraphManagedAppPolicyDeploymentSummary* deploymentSummary;
  
@end
