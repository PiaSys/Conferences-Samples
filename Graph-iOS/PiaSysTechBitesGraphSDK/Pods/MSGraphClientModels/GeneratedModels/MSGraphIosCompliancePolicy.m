// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosCompliancePolicy()
{
    BOOL _passcodeBlockSimple;
    int32_t _passcodeExpirationDays;
    int32_t _passcodeMinimumLength;
    int32_t _passcodeMinutesOfInactivityBeforeLock;
    int32_t _passcodePreviousPasscodeBlockCount;
    int32_t _passcodeMinimumCharacterSetCount;
    MSGraphRequiredPasswordType* _passcodeRequiredType;
    BOOL _passcodeRequired;
    NSString* _osMinimumVersion;
    NSString* _osMaximumVersion;
    BOOL _securityBlockJailbrokenDevices;
    BOOL _deviceThreatProtectionEnabled;
    MSGraphDeviceThreatProtectionLevel* _deviceThreatProtectionRequiredSecurityLevel;
    BOOL _managedEmailProfileRequired;
}
@end

@implementation MSGraphIosCompliancePolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosCompliancePolicy";
    }
    return self;
}
- (BOOL) passcodeBlockSimple
{
    _passcodeBlockSimple = [self.dictionary[@"passcodeBlockSimple"] boolValue];
    return _passcodeBlockSimple;
}

- (void) setPasscodeBlockSimple: (BOOL) val
{
    _passcodeBlockSimple = val;
    self.dictionary[@"passcodeBlockSimple"] = @(val);
}

- (int32_t) passcodeExpirationDays
{
    _passcodeExpirationDays = [self.dictionary[@"passcodeExpirationDays"] intValue];
    return _passcodeExpirationDays;
}

- (void) setPasscodeExpirationDays: (int32_t) val
{
    _passcodeExpirationDays = val;
    self.dictionary[@"passcodeExpirationDays"] = @(val);
}

- (int32_t) passcodeMinimumLength
{
    _passcodeMinimumLength = [self.dictionary[@"passcodeMinimumLength"] intValue];
    return _passcodeMinimumLength;
}

- (void) setPasscodeMinimumLength: (int32_t) val
{
    _passcodeMinimumLength = val;
    self.dictionary[@"passcodeMinimumLength"] = @(val);
}

- (int32_t) passcodeMinutesOfInactivityBeforeLock
{
    _passcodeMinutesOfInactivityBeforeLock = [self.dictionary[@"passcodeMinutesOfInactivityBeforeLock"] intValue];
    return _passcodeMinutesOfInactivityBeforeLock;
}

- (void) setPasscodeMinutesOfInactivityBeforeLock: (int32_t) val
{
    _passcodeMinutesOfInactivityBeforeLock = val;
    self.dictionary[@"passcodeMinutesOfInactivityBeforeLock"] = @(val);
}

- (int32_t) passcodePreviousPasscodeBlockCount
{
    _passcodePreviousPasscodeBlockCount = [self.dictionary[@"passcodePreviousPasscodeBlockCount"] intValue];
    return _passcodePreviousPasscodeBlockCount;
}

- (void) setPasscodePreviousPasscodeBlockCount: (int32_t) val
{
    _passcodePreviousPasscodeBlockCount = val;
    self.dictionary[@"passcodePreviousPasscodeBlockCount"] = @(val);
}

- (int32_t) passcodeMinimumCharacterSetCount
{
    _passcodeMinimumCharacterSetCount = [self.dictionary[@"passcodeMinimumCharacterSetCount"] intValue];
    return _passcodeMinimumCharacterSetCount;
}

- (void) setPasscodeMinimumCharacterSetCount: (int32_t) val
{
    _passcodeMinimumCharacterSetCount = val;
    self.dictionary[@"passcodeMinimumCharacterSetCount"] = @(val);
}

- (MSGraphRequiredPasswordType*) passcodeRequiredType
{
    if(!_passcodeRequiredType){
        _passcodeRequiredType = [self.dictionary[@"passcodeRequiredType"] toMSGraphRequiredPasswordType];
    }
    return _passcodeRequiredType;
}

- (void) setPasscodeRequiredType: (MSGraphRequiredPasswordType*) val
{
    _passcodeRequiredType = val;
    self.dictionary[@"passcodeRequiredType"] = val;
}

- (BOOL) passcodeRequired
{
    _passcodeRequired = [self.dictionary[@"passcodeRequired"] boolValue];
    return _passcodeRequired;
}

- (void) setPasscodeRequired: (BOOL) val
{
    _passcodeRequired = val;
    self.dictionary[@"passcodeRequired"] = @(val);
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

- (BOOL) securityBlockJailbrokenDevices
{
    _securityBlockJailbrokenDevices = [self.dictionary[@"securityBlockJailbrokenDevices"] boolValue];
    return _securityBlockJailbrokenDevices;
}

- (void) setSecurityBlockJailbrokenDevices: (BOOL) val
{
    _securityBlockJailbrokenDevices = val;
    self.dictionary[@"securityBlockJailbrokenDevices"] = @(val);
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

- (BOOL) managedEmailProfileRequired
{
    _managedEmailProfileRequired = [self.dictionary[@"managedEmailProfileRequired"] boolValue];
    return _managedEmailProfileRequired;
}

- (void) setManagedEmailProfileRequired: (BOOL) val
{
    _managedEmailProfileRequired = val;
    self.dictionary[@"managedEmailProfileRequired"] = @(val);
}


@end
