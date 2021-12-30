// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMacOSCompliancePolicy()
{
    BOOL _passwordRequired;
    BOOL _passwordBlockSimple;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeLock;
    int32_t _passwordPreviousPasswordBlockCount;
    int32_t _passwordMinimumCharacterSetCount;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    NSString* _osMinimumVersion;
    NSString* _osMaximumVersion;
    BOOL _systemIntegrityProtectionEnabled;
    BOOL _deviceThreatProtectionEnabled;
    MSGraphDeviceThreatProtectionLevel* _deviceThreatProtectionRequiredSecurityLevel;
    BOOL _storageRequireEncryption;
    BOOL _firewallEnabled;
    BOOL _firewallBlockAllIncoming;
    BOOL _firewallEnableStealthMode;
}
@end

@implementation MSGraphMacOSCompliancePolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.macOSCompliancePolicy";
    }
    return self;
}
- (BOOL) passwordRequired
{
    _passwordRequired = [self.dictionary[@"passwordRequired"] boolValue];
    return _passwordRequired;
}

- (void) setPasswordRequired: (BOOL) val
{
    _passwordRequired = val;
    self.dictionary[@"passwordRequired"] = @(val);
}

- (BOOL) passwordBlockSimple
{
    _passwordBlockSimple = [self.dictionary[@"passwordBlockSimple"] boolValue];
    return _passwordBlockSimple;
}

- (void) setPasswordBlockSimple: (BOOL) val
{
    _passwordBlockSimple = val;
    self.dictionary[@"passwordBlockSimple"] = @(val);
}

- (int32_t) passwordExpirationDays
{
    _passwordExpirationDays = [self.dictionary[@"passwordExpirationDays"] intValue];
    return _passwordExpirationDays;
}

- (void) setPasswordExpirationDays: (int32_t) val
{
    _passwordExpirationDays = val;
    self.dictionary[@"passwordExpirationDays"] = @(val);
}

- (int32_t) passwordMinimumLength
{
    _passwordMinimumLength = [self.dictionary[@"passwordMinimumLength"] intValue];
    return _passwordMinimumLength;
}

- (void) setPasswordMinimumLength: (int32_t) val
{
    _passwordMinimumLength = val;
    self.dictionary[@"passwordMinimumLength"] = @(val);
}

- (int32_t) passwordMinutesOfInactivityBeforeLock
{
    _passwordMinutesOfInactivityBeforeLock = [self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] intValue];
    return _passwordMinutesOfInactivityBeforeLock;
}

- (void) setPasswordMinutesOfInactivityBeforeLock: (int32_t) val
{
    _passwordMinutesOfInactivityBeforeLock = val;
    self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] = @(val);
}

- (int32_t) passwordPreviousPasswordBlockCount
{
    _passwordPreviousPasswordBlockCount = [self.dictionary[@"passwordPreviousPasswordBlockCount"] intValue];
    return _passwordPreviousPasswordBlockCount;
}

- (void) setPasswordPreviousPasswordBlockCount: (int32_t) val
{
    _passwordPreviousPasswordBlockCount = val;
    self.dictionary[@"passwordPreviousPasswordBlockCount"] = @(val);
}

- (int32_t) passwordMinimumCharacterSetCount
{
    _passwordMinimumCharacterSetCount = [self.dictionary[@"passwordMinimumCharacterSetCount"] intValue];
    return _passwordMinimumCharacterSetCount;
}

- (void) setPasswordMinimumCharacterSetCount: (int32_t) val
{
    _passwordMinimumCharacterSetCount = val;
    self.dictionary[@"passwordMinimumCharacterSetCount"] = @(val);
}

- (MSGraphRequiredPasswordType*) passwordRequiredType
{
    if(!_passwordRequiredType){
        _passwordRequiredType = [self.dictionary[@"passwordRequiredType"] toMSGraphRequiredPasswordType];
    }
    return _passwordRequiredType;
}

- (void) setPasswordRequiredType: (MSGraphRequiredPasswordType*) val
{
    _passwordRequiredType = val;
    self.dictionary[@"passwordRequiredType"] = val;
}

- (NSString*) osMinimumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMinimumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMinimumVersion"];
}

- (void) setOsMinimumVersion: (NSString*) val
{
    self.dictionary[@"osMinimumVersion"] = val;
}

- (NSString*) osMaximumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMaximumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMaximumVersion"];
}

- (void) setOsMaximumVersion: (NSString*) val
{
    self.dictionary[@"osMaximumVersion"] = val;
}

- (BOOL) systemIntegrityProtectionEnabled
{
    _systemIntegrityProtectionEnabled = [self.dictionary[@"systemIntegrityProtectionEnabled"] boolValue];
    return _systemIntegrityProtectionEnabled;
}

- (void) setSystemIntegrityProtectionEnabled: (BOOL) val
{
    _systemIntegrityProtectionEnabled = val;
    self.dictionary[@"systemIntegrityProtectionEnabled"] = @(val);
}

- (BOOL) deviceThreatProtectionEnabled
{
    _deviceThreatProtectionEnabled = [self.dictionary[@"deviceThreatProtectionEnabled"] boolValue];
    return _deviceThreatProtectionEnabled;
}

- (void) setDeviceThreatProtectionEnabled: (BOOL) val
{
    _deviceThreatProtectionEnabled = val;
    self.dictionary[@"deviceThreatProtectionEnabled"] = @(val);
}

- (MSGraphDeviceThreatProtectionLevel*) deviceThreatProtectionRequiredSecurityLevel
{
    if(!_deviceThreatProtectionRequiredSecurityLevel){
        _deviceThreatProtectionRequiredSecurityLevel = [self.dictionary[@"deviceThreatProtectionRequiredSecurityLevel"] toMSGraphDeviceThreatProtectionLevel];
    }
    return _deviceThreatProtectionRequiredSecurityLevel;
}

- (void) setDeviceThreatProtectionRequiredSecurityLevel: (MSGraphDeviceThreatProtectionLevel*) val
{
    _deviceThreatProtectionRequiredSecurityLevel = val;
    self.dictionary[@"deviceThreatProtectionRequiredSecurityLevel"] = val;
}

- (BOOL) storageRequireEncryption
{
    _storageRequireEncryption = [self.dictionary[@"storageRequireEncryption"] boolValue];
    return _storageRequireEncryption;
}

- (void) setStorageRequireEncryption: (BOOL) val
{
    _storageRequireEncryption = val;
    self.dictionary[@"storageRequireEncryption"] = @(val);
}

- (BOOL) firewallEnabled
{
    _firewallEnabled = [self.dictionary[@"firewallEnabled"] boolValue];
    return _firewallEnabled;
}

- (void) setFirewallEnabled: (BOOL) val
{
    _firewallEnabled = val;
    self.dictionary[@"firewallEnabled"] = @(val);
}

- (BOOL) firewallBlockAllIncoming
{
    _firewallBlockAllIncoming = [self.dictionary[@"firewallBlockAllIncoming"] boolValue];
    return _firewallBlockAllIncoming;
}

- (void) setFirewallBlockAllIncoming: (BOOL) val
{
    _firewallBlockAllIncoming = val;
    self.dictionary[@"firewallBlockAllIncoming"] = @(val);
}

- (BOOL) firewallEnableStealthMode
{
    _firewallEnableStealthMode = [self.dictionary[@"firewallEnableStealthMode"] boolValue];
    return _firewallEnableStealthMode;
}

- (void) setFirewallEnableStealthMode: (BOOL) val
{
    _firewallEnableStealthMode = val;
    self.dictionary[@"firewallEnableStealthMode"] = @(val);
}


@end
