// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceHealthAttestationState()
{
    NSString* _lastUpdateDateTime;
    NSString* _contentNamespaceUrl;
    NSString* _deviceHealthAttestationStatus;
    NSString* _contentVersion;
    NSDate* _issuedDateTime;
    NSString* _attestationIdentityKey;
    int64_t _resetCount;
    int64_t _restartCount;
    NSString* _dataExcutionPolicy;
    NSString* _bitLockerStatus;
    NSString* _bootManagerVersion;
    NSString* _codeIntegrityCheckVersion;
    NSString* _secureBoot;
    NSString* _bootDebugging;
    NSString* _operatingSystemKernelDebugging;
    NSString* _codeIntegrity;
    NSString* _testSigning;
    NSString* _safeMode;
    NSString* _windowsPE;
    NSString* _earlyLaunchAntiMalwareDriverProtection;
    NSString* _virtualSecureMode;
    NSString* _pcrHashAlgorithm;
    NSString* _bootAppSecurityVersion;
    NSString* _bootManagerSecurityVersion;
    NSString* _tpmVersion;
    NSString* _pcr0;
    NSString* _secureBootConfigurationPolicyFingerPrint;
    NSString* _codeIntegrityPolicy;
    NSString* _bootRevisionListInfo;
    NSString* _operatingSystemRevListInfo;
    NSString* _healthStatusMismatchInfo;
    NSString* _healthAttestationSupportedStatus;
}
@end

@implementation MSGraphDeviceHealthAttestationState

- (NSString*) lastUpdateDateTime
{
    if([[NSNull null] isEqual:self.dictionary[@"lastUpdateDateTime"]])
    {
        return nil;
    }   
    return self.dictionary[@"lastUpdateDateTime"];
}

- (void) setLastUpdateDateTime: (NSString*) val
{
    self.dictionary[@"lastUpdateDateTime"] = val;
}

- (NSString*) contentNamespaceUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"contentNamespaceUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentNamespaceUrl"];
}

- (void) setContentNamespaceUrl: (NSString*) val
{
    self.dictionary[@"contentNamespaceUrl"] = val;
}

- (NSString*) deviceHealthAttestationStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceHealthAttestationStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceHealthAttestationStatus"];
}

- (void) setDeviceHealthAttestationStatus: (NSString*) val
{
    self.dictionary[@"deviceHealthAttestationStatus"] = val;
}

- (NSString*) contentVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"contentVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentVersion"];
}

- (void) setContentVersion: (NSString*) val
{
    self.dictionary[@"contentVersion"] = val;
}

- (NSDate*) issuedDateTime
{
    if(!_issuedDateTime){
        _issuedDateTime = [NSDate ms_dateFromString: self.dictionary[@"issuedDateTime"]];
    }
    return _issuedDateTime;
}

- (void) setIssuedDateTime: (NSDate*) val
{
    _issuedDateTime = val;
    self.dictionary[@"issuedDateTime"] = [val ms_toString];
}

- (NSString*) attestationIdentityKey
{
    if([[NSNull null] isEqual:self.dictionary[@"attestationIdentityKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"attestationIdentityKey"];
}

- (void) setAttestationIdentityKey: (NSString*) val
{
    self.dictionary[@"attestationIdentityKey"] = val;
}

- (int64_t) resetCount
{
    _resetCount = [self.dictionary[@"resetCount"] longLongValue];
    return _resetCount;
}

- (void) setResetCount: (int64_t) val
{
    _resetCount = val;
    self.dictionary[@"resetCount"] = @(val);
}

- (int64_t) restartCount
{
    _restartCount = [self.dictionary[@"restartCount"] longLongValue];
    return _restartCount;
}

- (void) setRestartCount: (int64_t) val
{
    _restartCount = val;
    self.dictionary[@"restartCount"] = @(val);
}

- (NSString*) dataExcutionPolicy
{
    if([[NSNull null] isEqual:self.dictionary[@"dataExcutionPolicy"]])
    {
        return nil;
    }   
    return self.dictionary[@"dataExcutionPolicy"];
}

- (void) setDataExcutionPolicy: (NSString*) val
{
    self.dictionary[@"dataExcutionPolicy"] = val;
}

- (NSString*) bitLockerStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"bitLockerStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"bitLockerStatus"];
}

- (void) setBitLockerStatus: (NSString*) val
{
    self.dictionary[@"bitLockerStatus"] = val;
}

- (NSString*) bootManagerVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"bootManagerVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"bootManagerVersion"];
}

- (void) setBootManagerVersion: (NSString*) val
{
    self.dictionary[@"bootManagerVersion"] = val;
}

- (NSString*) codeIntegrityCheckVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"codeIntegrityCheckVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"codeIntegrityCheckVersion"];
}

- (void) setCodeIntegrityCheckVersion: (NSString*) val
{
    self.dictionary[@"codeIntegrityCheckVersion"] = val;
}

- (NSString*) secureBoot
{
    if([[NSNull null] isEqual:self.dictionary[@"secureBoot"]])
    {
        return nil;
    }   
    return self.dictionary[@"secureBoot"];
}

- (void) setSecureBoot: (NSString*) val
{
    self.dictionary[@"secureBoot"] = val;
}

- (NSString*) bootDebugging
{
    if([[NSNull null] isEqual:self.dictionary[@"bootDebugging"]])
    {
        return nil;
    }   
    return self.dictionary[@"bootDebugging"];
}

- (void) setBootDebugging: (NSString*) val
{
    self.dictionary[@"bootDebugging"] = val;
}

- (NSString*) operatingSystemKernelDebugging
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystemKernelDebugging"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystemKernelDebugging"];
}

- (void) setOperatingSystemKernelDebugging: (NSString*) val
{
    self.dictionary[@"operatingSystemKernelDebugging"] = val;
}

- (NSString*) codeIntegrity
{
    if([[NSNull null] isEqual:self.dictionary[@"codeIntegrity"]])
    {
        return nil;
    }   
    return self.dictionary[@"codeIntegrity"];
}

- (void) setCodeIntegrity: (NSString*) val
{
    self.dictionary[@"codeIntegrity"] = val;
}

- (NSString*) testSigning
{
    if([[NSNull null] isEqual:self.dictionary[@"testSigning"]])
    {
        return nil;
    }   
    return self.dictionary[@"testSigning"];
}

- (void) setTestSigning: (NSString*) val
{
    self.dictionary[@"testSigning"] = val;
}

- (NSString*) safeMode
{
    if([[NSNull null] isEqual:self.dictionary[@"safeMode"]])
    {
        return nil;
    }   
    return self.dictionary[@"safeMode"];
}

- (void) setSafeMode: (NSString*) val
{
    self.dictionary[@"safeMode"] = val;
}

- (NSString*) windowsPE
{
    if([[NSNull null] isEqual:self.dictionary[@"windowsPE"]])
    {
        return nil;
    }   
    return self.dictionary[@"windowsPE"];
}

- (void) setWindowsPE: (NSString*) val
{
    self.dictionary[@"windowsPE"] = val;
}

- (NSString*) earlyLaunchAntiMalwareDriverProtection
{
    if([[NSNull null] isEqual:self.dictionary[@"earlyLaunchAntiMalwareDriverProtection"]])
    {
        return nil;
    }   
    return self.dictionary[@"earlyLaunchAntiMalwareDriverProtection"];
}

- (void) setEarlyLaunchAntiMalwareDriverProtection: (NSString*) val
{
    self.dictionary[@"earlyLaunchAntiMalwareDriverProtection"] = val;
}

- (NSString*) virtualSecureMode
{
    if([[NSNull null] isEqual:self.dictionary[@"virtualSecureMode"]])
    {
        return nil;
    }   
    return self.dictionary[@"virtualSecureMode"];
}

- (void) setVirtualSecureMode: (NSString*) val
{
    self.dictionary[@"virtualSecureMode"] = val;
}

- (NSString*) pcrHashAlgorithm
{
    if([[NSNull null] isEqual:self.dictionary[@"pcrHashAlgorithm"]])
    {
        return nil;
    }   
    return self.dictionary[@"pcrHashAlgorithm"];
}

- (void) setPcrHashAlgorithm: (NSString*) val
{
    self.dictionary[@"pcrHashAlgorithm"] = val;
}

- (NSString*) bootAppSecurityVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"bootAppSecurityVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"bootAppSecurityVersion"];
}

- (void) setBootAppSecurityVersion: (NSString*) val
{
    self.dictionary[@"bootAppSecurityVersion"] = val;
}

- (NSString*) bootManagerSecurityVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"bootManagerSecurityVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"bootManagerSecurityVersion"];
}

- (void) setBootManagerSecurityVersion: (NSString*) val
{
    self.dictionary[@"bootManagerSecurityVersion"] = val;
}

- (NSString*) tpmVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"tpmVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"tpmVersion"];
}

- (void) setTpmVersion: (NSString*) val
{
    self.dictionary[@"tpmVersion"] = val;
}

- (NSString*) pcr0
{
    if([[NSNull null] isEqual:self.dictionary[@"pcr0"]])
    {
        return nil;
    }   
    return self.dictionary[@"pcr0"];
}

- (void) setPcr0: (NSString*) val
{
    self.dictionary[@"pcr0"] = val;
}

- (NSString*) secureBootConfigurationPolicyFingerPrint
{
    if([[NSNull null] isEqual:self.dictionary[@"secureBootConfigurationPolicyFingerPrint"]])
    {
        return nil;
    }   
    return self.dictionary[@"secureBootConfigurationPolicyFingerPrint"];
}

- (void) setSecureBootConfigurationPolicyFingerPrint: (NSString*) val
{
    self.dictionary[@"secureBootConfigurationPolicyFingerPrint"] = val;
}

- (NSString*) codeIntegrityPolicy
{
    if([[NSNull null] isEqual:self.dictionary[@"codeIntegrityPolicy"]])
    {
        return nil;
    }   
    return self.dictionary[@"codeIntegrityPolicy"];
}

- (void) setCodeIntegrityPolicy: (NSString*) val
{
    self.dictionary[@"codeIntegrityPolicy"] = val;
}

- (NSString*) bootRevisionListInfo
{
    if([[NSNull null] isEqual:self.dictionary[@"bootRevisionListInfo"]])
    {
        return nil;
    }   
    return self.dictionary[@"bootRevisionListInfo"];
}

- (void) setBootRevisionListInfo: (NSString*) val
{
    self.dictionary[@"bootRevisionListInfo"] = val;
}

- (NSString*) operatingSystemRevListInfo
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystemRevListInfo"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystemRevListInfo"];
}

- (void) setOperatingSystemRevListInfo: (NSString*) val
{
    self.dictionary[@"operatingSystemRevListInfo"] = val;
}

- (NSString*) healthStatusMismatchInfo
{
    if([[NSNull null] isEqual:self.dictionary[@"healthStatusMismatchInfo"]])
    {
        return nil;
    }   
    return self.dictionary[@"healthStatusMismatchInfo"];
}

- (void) setHealthStatusMismatchInfo: (NSString*) val
{
    self.dictionary[@"healthStatusMismatchInfo"] = val;
}

- (NSString*) healthAttestationSupportedStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"healthAttestationSupportedStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"healthAttestationSupportedStatus"];
}

- (void) setHealthAttestationSupportedStatus: (NSString*) val
{
    self.dictionary[@"healthAttestationSupportedStatus"] = val;
}

@end
