// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceHealthAttestationState : MSObject

@property (nullable, nonatomic, setter=setLastUpdateDateTime:, getter=lastUpdateDateTime) NSString* lastUpdateDateTime;
@property (nullable, nonatomic, setter=setContentNamespaceUrl:, getter=contentNamespaceUrl) NSString* contentNamespaceUrl;
@property (nullable, nonatomic, setter=setDeviceHealthAttestationStatus:, getter=deviceHealthAttestationStatus) NSString* deviceHealthAttestationStatus;
@property (nullable, nonatomic, setter=setContentVersion:, getter=contentVersion) NSString* contentVersion;
@property (nonnull, nonatomic, setter=setIssuedDateTime:, getter=issuedDateTime) NSDate* issuedDateTime;
@property (nullable, nonatomic, setter=setAttestationIdentityKey:, getter=attestationIdentityKey) NSString* attestationIdentityKey;
@property (nonatomic, setter=setResetCount:, getter=resetCount) int64_t resetCount;
@property (nonatomic, setter=setRestartCount:, getter=restartCount) int64_t restartCount;
@property (nullable, nonatomic, setter=setDataExcutionPolicy:, getter=dataExcutionPolicy) NSString* dataExcutionPolicy;
@property (nullable, nonatomic, setter=setBitLockerStatus:, getter=bitLockerStatus) NSString* bitLockerStatus;
@property (nullable, nonatomic, setter=setBootManagerVersion:, getter=bootManagerVersion) NSString* bootManagerVersion;
@property (nullable, nonatomic, setter=setCodeIntegrityCheckVersion:, getter=codeIntegrityCheckVersion) NSString* codeIntegrityCheckVersion;
@property (nullable, nonatomic, setter=setSecureBoot:, getter=secureBoot) NSString* secureBoot;
@property (nullable, nonatomic, setter=setBootDebugging:, getter=bootDebugging) NSString* bootDebugging;
@property (nullable, nonatomic, setter=setOperatingSystemKernelDebugging:, getter=operatingSystemKernelDebugging) NSString* operatingSystemKernelDebugging;
@property (nullable, nonatomic, setter=setCodeIntegrity:, getter=codeIntegrity) NSString* codeIntegrity;
@property (nullable, nonatomic, setter=setTestSigning:, getter=testSigning) NSString* testSigning;
@property (nullable, nonatomic, setter=setSafeMode:, getter=safeMode) NSString* safeMode;
@property (nullable, nonatomic, setter=setWindowsPE:, getter=windowsPE) NSString* windowsPE;
@property (nullable, nonatomic, setter=setEarlyLaunchAntiMalwareDriverProtection:, getter=earlyLaunchAntiMalwareDriverProtection) NSString* earlyLaunchAntiMalwareDriverProtection;
@property (nullable, nonatomic, setter=setVirtualSecureMode:, getter=virtualSecureMode) NSString* virtualSecureMode;
@property (nullable, nonatomic, setter=setPcrHashAlgorithm:, getter=pcrHashAlgorithm) NSString* pcrHashAlgorithm;
@property (nullable, nonatomic, setter=setBootAppSecurityVersion:, getter=bootAppSecurityVersion) NSString* bootAppSecurityVersion;
@property (nullable, nonatomic, setter=setBootManagerSecurityVersion:, getter=bootManagerSecurityVersion) NSString* bootManagerSecurityVersion;
@property (nullable, nonatomic, setter=setTpmVersion:, getter=tpmVersion) NSString* tpmVersion;
@property (nullable, nonatomic, setter=setPcr0:, getter=pcr0) NSString* pcr0;
@property (nullable, nonatomic, setter=setSecureBootConfigurationPolicyFingerPrint:, getter=secureBootConfigurationPolicyFingerPrint) NSString* secureBootConfigurationPolicyFingerPrint;
@property (nullable, nonatomic, setter=setCodeIntegrityPolicy:, getter=codeIntegrityPolicy) NSString* codeIntegrityPolicy;
@property (nullable, nonatomic, setter=setBootRevisionListInfo:, getter=bootRevisionListInfo) NSString* bootRevisionListInfo;
@property (nullable, nonatomic, setter=setOperatingSystemRevListInfo:, getter=operatingSystemRevListInfo) NSString* operatingSystemRevListInfo;
@property (nullable, nonatomic, setter=setHealthStatusMismatchInfo:, getter=healthStatusMismatchInfo) NSString* healthStatusMismatchInfo;
@property (nullable, nonatomic, setter=setHealthAttestationSupportedStatus:, getter=healthAttestationSupportedStatus) NSString* healthAttestationSupportedStatus;

@end
