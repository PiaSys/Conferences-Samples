// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10MobileCompliancePolicy()
{
    BOOL _passwordRequired;
    BOOL _passwordBlockSimple;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinimumCharacterSetCount;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    int32_t _passwordPreviousPasswordBlockCount;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinutesOfInactivityBeforeLock;
    BOOL _passwordRequireToUnlockFromIdle;
    NSString* _osMinimumVersion;
    NSString* _osMaximumVersion;
    BOOL _earlyLaunchAntiMalwareDriverEnabled;
    BOOL _bitLockerEnabled;
    BOOL _secureBootEnabled;
    BOOL _codeIntegrityEnabled;
    BOOL _storageRequireEncryption;
}
@end

@implementation MSGraphWindows10MobileCompliancePolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10MobileCompliancePolicy";
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

- (BOOL) passwordRequireToUnlockFromIdle
{
    _passwordRequireToUnlockFromIdle = [self.dictionary[@"passwordRequireToUnlockFromIdle"] boolValue];
    return _passwordRequireToUnlockFromIdle;
}

- (void) setPasswordRequireToUnlockFromIdle: (BOOL) val
{
    _passwordRequireToUnlockFromIdle = val;
    self.dictionary[@"passwordRequireToUnlockFromIdle"] = @(val);
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

- (BOOL) earlyLaunchAntiMalwareDriverEnabled
{
    _earlyLaunchAntiMalwareDriverEnabled = [self.dictionary[@"earlyLaunchAntiMalwareDriverEnabled"] boolValue];
    return _earlyLaunchAntiMalwareDriverEnabled;
}

- (void) setEarlyLaunchAntiMalwareDriverEnabled: (BOOL) val
{
    _earlyLaunchAntiMalwareDriverEnabled = val;
    self.dictionary[@"earlyLaunchAntiMalwareDriverEnabled"] = @(val);
}

- (BOOL) bitLockerEnabled
{
    _bitLockerEnabled = [self.dictionary[@"bitLockerEnabled"] boolValue];
    return _bitLockerEnabled;
}

- (void) setBitLockerEnabled: (BOOL) val
{
    _bitLockerEnabled = val;
    self.dictionary[@"bitLockerEnabled"] = @(val);
}

- (BOOL) secureBootEnabled
{
    _secureBootEnabled = [self.dictionary[@"secureBootEnabled"] boolValue];
    return _secureBootEnabled;
}

- (void) setSecureBootEnabled: (BOOL) val
{
    _secureBootEnabled = val;
    self.dictionary[@"secureBootEnabled"] = @(val);
}

- (BOOL) codeIntegrityEnabled
{
    _codeIntegrityEnabled = [self.dictionary[@"codeIntegrityEnabled"] boolValue];
    return _codeIntegrityEnabled;
}

- (void) setCodeIntegrityEnabled: (BOOL) val
{
    _codeIntegrityEnabled = val;
    self.dictionary[@"codeIntegrityEnabled"] = @(val);
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


@end
