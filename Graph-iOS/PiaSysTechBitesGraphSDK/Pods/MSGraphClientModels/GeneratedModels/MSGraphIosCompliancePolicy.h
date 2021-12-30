// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphRequiredPasswordType.h"
#import "MSGraphDeviceThreatProtectionLevel.h"


#import "MSGraphDeviceCompliancePolicy.h"

@interface MSGraphIosCompliancePolicy : MSGraphDeviceCompliancePolicy

  @property (nonatomic, setter=setPasscodeBlockSimple:, getter=passcodeBlockSimple) BOOL passcodeBlockSimple;
    @property (nonatomic, setter=setPasscodeExpirationDays:, getter=passcodeExpirationDays) int32_t passcodeExpirationDays;
    @property (nonatomic, setter=setPasscodeMinimumLength:, getter=passcodeMinimumLength) int32_t passcodeMinimumLength;
    @property (nonatomic, setter=setPasscodeMinutesOfInactivityBeforeLock:, getter=passcodeMinutesOfInactivityBeforeLock) int32_t passcodeMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasscodePreviousPasscodeBlockCount:, getter=passcodePreviousPasscodeBlockCount) int32_t passcodePreviousPasscodeBlockCount;
    @property (nonatomic, setter=setPasscodeMinimumCharacterSetCount:, getter=passcodeMinimumCharacterSetCount) int32_t passcodeMinimumCharacterSetCount;
    @property (nonnull, nonatomic, setter=setPasscodeRequiredType:, getter=passcodeRequiredType) MSGraphRequiredPasswordType* passcodeRequiredType;
    @property (nonatomic, setter=setPasscodeRequired:, getter=passcodeRequired) BOOL passcodeRequired;
    @property (nullable, nonatomic, setter=setOsMinimumVersion:, getter=osMinimumVersion) NSString* osMinimumVersion;
    @property (nullable, nonatomic, setter=setOsMaximumVersion:, getter=osMaximumVersion) NSString* osMaximumVersion;
    @property (nonatomic, setter=setSecurityBlockJailbrokenDevices:, getter=securityBlockJailbrokenDevices) BOOL securityBlockJailbrokenDevices;
    @property (nonatomic, setter=setDeviceThreatProtectionEnabled:, getter=deviceThreatProtectionEnabled) BOOL deviceThreatProtectionEnabled;
    @property (nonnull, nonatomic, setter=setDeviceThreatProtectionRequiredSecurityLevel:, getter=deviceThreatProtectionRequiredSecurityLevel) MSGraphDeviceThreatProtectionLevel* deviceThreatProtectionRequiredSecurityLevel;
    @property (nonatomic, setter=setManagedEmailProfileRequired:, getter=managedEmailProfileRequired) BOOL managedEmailProfileRequired;
  
@end
