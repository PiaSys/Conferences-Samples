// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphRequiredPasswordType.h"
#import "MSGraphDeviceThreatProtectionLevel.h"


#import "MSGraphDeviceCompliancePolicy.h"

@interface MSGraphMacOSCompliancePolicy : MSGraphDeviceCompliancePolicy

  @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonatomic, setter=setPasswordBlockSimple:, getter=passwordBlockSimple) BOOL passwordBlockSimple;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeLock:, getter=passwordMinutesOfInactivityBeforeLock) int32_t passwordMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nullable, nonatomic, setter=setOsMinimumVersion:, getter=osMinimumVersion) NSString* osMinimumVersion;
    @property (nullable, nonatomic, setter=setOsMaximumVersion:, getter=osMaximumVersion) NSString* osMaximumVersion;
    @property (nonatomic, setter=setSystemIntegrityProtectionEnabled:, getter=systemIntegrityProtectionEnabled) BOOL systemIntegrityProtectionEnabled;
    @property (nonatomic, setter=setDeviceThreatProtectionEnabled:, getter=deviceThreatProtectionEnabled) BOOL deviceThreatProtectionEnabled;
    @property (nonnull, nonatomic, setter=setDeviceThreatProtectionRequiredSecurityLevel:, getter=deviceThreatProtectionRequiredSecurityLevel) MSGraphDeviceThreatProtectionLevel* deviceThreatProtectionRequiredSecurityLevel;
    @property (nonatomic, setter=setStorageRequireEncryption:, getter=storageRequireEncryption) BOOL storageRequireEncryption;
    @property (nonatomic, setter=setFirewallEnabled:, getter=firewallEnabled) BOOL firewallEnabled;
    @property (nonatomic, setter=setFirewallBlockAllIncoming:, getter=firewallBlockAllIncoming) BOOL firewallBlockAllIncoming;
    @property (nonatomic, setter=setFirewallEnableStealthMode:, getter=firewallEnableStealthMode) BOOL firewallEnableStealthMode;
  
@end
