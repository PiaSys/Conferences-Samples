// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidWorkProfileGeneralDeviceConfiguration()
{
    BOOL _passwordBlockFingerprintUnlock;
    BOOL _passwordBlockTrustAgents;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordPreviousPasswordBlockCount;
    int32_t _passwordSignInFailureCountBeforeFactoryReset;
    MSGraphAndroidWorkProfileRequiredPasswordType* _passwordRequiredType;
    MSGraphAndroidWorkProfileCrossProfileDataSharingType* _workProfileDataSharingType;
    BOOL _workProfileBlockNotificationsWhileDeviceLocked;
    BOOL _workProfileBlockAddingAccounts;
    BOOL _workProfileBluetoothEnableContactSharing;
    BOOL _workProfileBlockScreenCapture;
    BOOL _workProfileBlockCrossProfileCallerId;
    BOOL _workProfileBlockCamera;
    BOOL _workProfileBlockCrossProfileContactsSearch;
    BOOL _workProfileBlockCrossProfileCopyPaste;
    MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType* _workProfileDefaultAppPermissionPolicy;
    BOOL _workProfilePasswordBlockFingerprintUnlock;
    BOOL _workProfilePasswordBlockTrustAgents;
    int32_t _workProfilePasswordExpirationDays;
    int32_t _workProfilePasswordMinimumLength;
    int32_t _workProfilePasswordMinNumericCharacters;
    int32_t _workProfilePasswordMinNonLetterCharacters;
    int32_t _workProfilePasswordMinLetterCharacters;
    int32_t _workProfilePasswordMinLowerCaseCharacters;
    int32_t _workProfilePasswordMinUpperCaseCharacters;
    int32_t _workProfilePasswordMinSymbolCharacters;
    int32_t _workProfilePasswordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _workProfilePasswordPreviousPasswordBlockCount;
    int32_t _workProfilePasswordSignInFailureCountBeforeFactoryReset;
    MSGraphAndroidWorkProfileRequiredPasswordType* _workProfilePasswordRequiredType;
    BOOL _workProfileRequirePassword;
    BOOL _securityRequireVerifyApps;
}
@end

@implementation MSGraphAndroidWorkProfileGeneralDeviceConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration";
    }
    return self;
}
- (BOOL) passwordBlockFingerprintUnlock
{
    _passwordBlockFingerprintUnlock = [self.dictionary[@"passwordBlockFingerprintUnlock"] boolValue];
    return _passwordBlockFingerprintUnlock;
}

- (void) setPasswordBlockFingerprintUnlock: (BOOL) val
{
    _passwordBlockFingerprintUnlock = val;
    self.dictionary[@"passwordBlockFingerprintUnlock"] = @(val);
}

- (BOOL) passwordBlockTrustAgents
{
    _passwordBlockTrustAgents = [self.dictionary[@"passwordBlockTrustAgents"] boolValue];
    return _passwordBlockTrustAgents;
}

- (void) setPasswordBlockTrustAgents: (BOOL) val
{
    _passwordBlockTrustAgents = val;
    self.dictionary[@"passwordBlockTrustAgents"] = @(val);
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

- (int32_t) passwordMinutesOfInactivityBeforeScreenTimeout
{
    _passwordMinutesOfInactivityBeforeScreenTimeout = [self.dictionary[@"passwordMinutesOfInactivityBeforeScreenTimeout"] intValue];
    return _passwordMinutesOfInactivityBeforeScreenTimeout;
}

- (void) setPasswordMinutesOfInactivityBeforeScreenTimeout: (int32_t) val
{
    _passwordMinutesOfInactivityBeforeScreenTimeout = val;
    self.dictionary[@"passwordMinutesOfInactivityBeforeScreenTimeout"] = @(val);
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

- (int32_t) passwordSignInFailureCountBeforeFactoryReset
{
    _passwordSignInFailureCountBeforeFactoryReset = [self.dictionary[@"passwordSignInFailureCountBeforeFactoryReset"] intValue];
    return _passwordSignInFailureCountBeforeFactoryReset;
}

- (void) setPasswordSignInFailureCountBeforeFactoryReset: (int32_t) val
{
    _passwordSignInFailureCountBeforeFactoryReset = val;
    self.dictionary[@"passwordSignInFailureCountBeforeFactoryReset"] = @(val);
}

- (MSGraphAndroidWorkProfileRequiredPasswordType*) passwordRequiredType
{
    if(!_passwordRequiredType){
        _passwordRequiredType = [self.dictionary[@"passwordRequiredType"] toMSGraphAndroidWorkProfileRequiredPasswordType];
    }
    return _passwordRequiredType;
}

- (void) setPasswordRequiredType: (MSGraphAndroidWorkProfileRequiredPasswordType*) val
{
    _passwordRequiredType = val;
    self.dictionary[@"passwordRequiredType"] = val;
}

- (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) workProfileDataSharingType
{
    if(!_workProfileDataSharingType){
        _workProfileDataSharingType = [self.dictionary[@"workProfileDataSharingType"] toMSGraphAndroidWorkProfileCrossProfileDataSharingType];
    }
    return _workProfileDataSharingType;
}

- (void) setWorkProfileDataSharingType: (MSGraphAndroidWorkProfileCrossProfileDataSharingType*) val
{
    _workProfileDataSharingType = val;
    self.dictionary[@"workProfileDataSharingType"] = val;
}

- (BOOL) workProfileBlockNotificationsWhileDeviceLocked
{
    _workProfileBlockNotificationsWhileDeviceLocked = [self.dictionary[@"workProfileBlockNotificationsWhileDeviceLocked"] boolValue];
    return _workProfileBlockNotificationsWhileDeviceLocked;
}

- (void) setWorkProfileBlockNotificationsWhileDeviceLocked: (BOOL) val
{
    _workProfileBlockNotificationsWhileDeviceLocked = val;
    self.dictionary[@"workProfileBlockNotificationsWhileDeviceLocked"] = @(val);
}

- (BOOL) workProfileBlockAddingAccounts
{
    _workProfileBlockAddingAccounts = [self.dictionary[@"workProfileBlockAddingAccounts"] boolValue];
    return _workProfileBlockAddingAccounts;
}

- (void) setWorkProfileBlockAddingAccounts: (BOOL) val
{
    _workProfileBlockAddingAccounts = val;
    self.dictionary[@"workProfileBlockAddingAccounts"] = @(val);
}

- (BOOL) workProfileBluetoothEnableContactSharing
{
    _workProfileBluetoothEnableContactSharing = [self.dictionary[@"workProfileBluetoothEnableContactSharing"] boolValue];
    return _workProfileBluetoothEnableContactSharing;
}

- (void) setWorkProfileBluetoothEnableContactSharing: (BOOL) val
{
    _workProfileBluetoothEnableContactSharing = val;
    self.dictionary[@"workProfileBluetoothEnableContactSharing"] = @(val);
}

- (BOOL) workProfileBlockScreenCapture
{
    _workProfileBlockScreenCapture = [self.dictionary[@"workProfileBlockScreenCapture"] boolValue];
    return _workProfileBlockScreenCapture;
}

- (void) setWorkProfileBlockScreenCapture: (BOOL) val
{
    _workProfileBlockScreenCapture = val;
    self.dictionary[@"workProfileBlockScreenCapture"] = @(val);
}

- (BOOL) workProfileBlockCrossProfileCallerId
{
    _workProfileBlockCrossProfileCallerId = [self.dictionary[@"workProfileBlockCrossProfileCallerId"] boolValue];
    return _workProfileBlockCrossProfileCallerId;
}

- (void) setWorkProfileBlockCrossProfileCallerId: (BOOL) val
{
    _workProfileBlockCrossProfileCallerId = val;
    self.dictionary[@"workProfileBlockCrossProfileCallerId"] = @(val);
}

- (BOOL) workProfileBlockCamera
{
    _workProfileBlockCamera = [self.dictionary[@"workProfileBlockCamera"] boolValue];
    return _workProfileBlockCamera;
}

- (void) setWorkProfileBlockCamera: (BOOL) val
{
    _workProfileBlockCamera = val;
    self.dictionary[@"workProfileBlockCamera"] = @(val);
}

- (BOOL) workProfileBlockCrossProfileContactsSearch
{
    _workProfileBlockCrossProfileContactsSearch = [self.dictionary[@"workProfileBlockCrossProfileContactsSearch"] boolValue];
    return _workProfileBlockCrossProfileContactsSearch;
}

- (void) setWorkProfileBlockCrossProfileContactsSearch: (BOOL) val
{
    _workProfileBlockCrossProfileContactsSearch = val;
    self.dictionary[@"workProfileBlockCrossProfileContactsSearch"] = @(val);
}

- (BOOL) workProfileBlockCrossProfileCopyPaste
{
    _workProfileBlockCrossProfileCopyPaste = [self.dictionary[@"workProfileBlockCrossProfileCopyPaste"] boolValue];
    return _workProfileBlockCrossProfileCopyPaste;
}

- (void) setWorkProfileBlockCrossProfileCopyPaste: (BOOL) val
{
    _workProfileBlockCrossProfileCopyPaste = val;
    self.dictionary[@"workProfileBlockCrossProfileCopyPaste"] = @(val);
}

- (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) workProfileDefaultAppPermissionPolicy
{
    if(!_workProfileDefaultAppPermissionPolicy){
        _workProfileDefaultAppPermissionPolicy = [self.dictionary[@"workProfileDefaultAppPermissionPolicy"] toMSGraphAndroidWorkProfileDefaultAppPermissionPolicyType];
    }
    return _workProfileDefaultAppPermissionPolicy;
}

- (void) setWorkProfileDefaultAppPermissionPolicy: (MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType*) val
{
    _workProfileDefaultAppPermissionPolicy = val;
    self.dictionary[@"workProfileDefaultAppPermissionPolicy"] = val;
}

- (BOOL) workProfilePasswordBlockFingerprintUnlock
{
    _workProfilePasswordBlockFingerprintUnlock = [self.dictionary[@"workProfilePasswordBlockFingerprintUnlock"] boolValue];
    return _workProfilePasswordBlockFingerprintUnlock;
}

- (void) setWorkProfilePasswordBlockFingerprintUnlock: (BOOL) val
{
    _workProfilePasswordBlockFingerprintUnlock = val;
    self.dictionary[@"workProfilePasswordBlockFingerprintUnlock"] = @(val);
}

- (BOOL) workProfilePasswordBlockTrustAgents
{
    _workProfilePasswordBlockTrustAgents = [self.dictionary[@"workProfilePasswordBlockTrustAgents"] boolValue];
    return _workProfilePasswordBlockTrustAgents;
}

- (void) setWorkProfilePasswordBlockTrustAgents: (BOOL) val
{
    _workProfilePasswordBlockTrustAgents = val;
    self.dictionary[@"workProfilePasswordBlockTrustAgents"] = @(val);
}

- (int32_t) workProfilePasswordExpirationDays
{
    _workProfilePasswordExpirationDays = [self.dictionary[@"workProfilePasswordExpirationDays"] intValue];
    return _workProfilePasswordExpirationDays;
}

- (void) setWorkProfilePasswordExpirationDays: (int32_t) val
{
    _workProfilePasswordExpirationDays = val;
    self.dictionary[@"workProfilePasswordExpirationDays"] = @(val);
}

- (int32_t) workProfilePasswordMinimumLength
{
    _workProfilePasswordMinimumLength = [self.dictionary[@"workProfilePasswordMinimumLength"] intValue];
    return _workProfilePasswordMinimumLength;
}

- (void) setWorkProfilePasswordMinimumLength: (int32_t) val
{
    _workProfilePasswordMinimumLength = val;
    self.dictionary[@"workProfilePasswordMinimumLength"] = @(val);
}

- (int32_t) workProfilePasswordMinNumericCharacters
{
    _workProfilePasswordMinNumericCharacters = [self.dictionary[@"workProfilePasswordMinNumericCharacters"] intValue];
    return _workProfilePasswordMinNumericCharacters;
}

- (void) setWorkProfilePasswordMinNumericCharacters: (int32_t) val
{
    _workProfilePasswordMinNumericCharacters = val;
    self.dictionary[@"workProfilePasswordMinNumericCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinNonLetterCharacters
{
    _workProfilePasswordMinNonLetterCharacters = [self.dictionary[@"workProfilePasswordMinNonLetterCharacters"] intValue];
    return _workProfilePasswordMinNonLetterCharacters;
}

- (void) setWorkProfilePasswordMinNonLetterCharacters: (int32_t) val
{
    _workProfilePasswordMinNonLetterCharacters = val;
    self.dictionary[@"workProfilePasswordMinNonLetterCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinLetterCharacters
{
    _workProfilePasswordMinLetterCharacters = [self.dictionary[@"workProfilePasswordMinLetterCharacters"] intValue];
    return _workProfilePasswordMinLetterCharacters;
}

- (void) setWorkProfilePasswordMinLetterCharacters: (int32_t) val
{
    _workProfilePasswordMinLetterCharacters = val;
    self.dictionary[@"workProfilePasswordMinLetterCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinLowerCaseCharacters
{
    _workProfilePasswordMinLowerCaseCharacters = [self.dictionary[@"workProfilePasswordMinLowerCaseCharacters"] intValue];
    return _workProfilePasswordMinLowerCaseCharacters;
}

- (void) setWorkProfilePasswordMinLowerCaseCharacters: (int32_t) val
{
    _workProfilePasswordMinLowerCaseCharacters = val;
    self.dictionary[@"workProfilePasswordMinLowerCaseCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinUpperCaseCharacters
{
    _workProfilePasswordMinUpperCaseCharacters = [self.dictionary[@"workProfilePasswordMinUpperCaseCharacters"] intValue];
    return _workProfilePasswordMinUpperCaseCharacters;
}

- (void) setWorkProfilePasswordMinUpperCaseCharacters: (int32_t) val
{
    _workProfilePasswordMinUpperCaseCharacters = val;
    self.dictionary[@"workProfilePasswordMinUpperCaseCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinSymbolCharacters
{
    _workProfilePasswordMinSymbolCharacters = [self.dictionary[@"workProfilePasswordMinSymbolCharacters"] intValue];
    return _workProfilePasswordMinSymbolCharacters;
}

- (void) setWorkProfilePasswordMinSymbolCharacters: (int32_t) val
{
    _workProfilePasswordMinSymbolCharacters = val;
    self.dictionary[@"workProfilePasswordMinSymbolCharacters"] = @(val);
}

- (int32_t) workProfilePasswordMinutesOfInactivityBeforeScreenTimeout
{
    _workProfilePasswordMinutesOfInactivityBeforeScreenTimeout = [self.dictionary[@"workProfilePasswordMinutesOfInactivityBeforeScreenTimeout"] intValue];
    return _workProfilePasswordMinutesOfInactivityBeforeScreenTimeout;
}

- (void) setWorkProfilePasswordMinutesOfInactivityBeforeScreenTimeout: (int32_t) val
{
    _workProfilePasswordMinutesOfInactivityBeforeScreenTimeout = val;
    self.dictionary[@"workProfilePasswordMinutesOfInactivityBeforeScreenTimeout"] = @(val);
}

- (int32_t) workProfilePasswordPreviousPasswordBlockCount
{
    _workProfilePasswordPreviousPasswordBlockCount = [self.dictionary[@"workProfilePasswordPreviousPasswordBlockCount"] intValue];
    return _workProfilePasswordPreviousPasswordBlockCount;
}

- (void) setWorkProfilePasswordPreviousPasswordBlockCount: (int32_t) val
{
    _workProfilePasswordPreviousPasswordBlockCount = val;
    self.dictionary[@"workProfilePasswordPreviousPasswordBlockCount"] = @(val);
}

- (int32_t) workProfilePasswordSignInFailureCountBeforeFactoryReset
{
    _workProfilePasswordSignInFailureCountBeforeFactoryReset = [self.dictionary[@"workProfilePasswordSignInFailureCountBeforeFactoryReset"] intValue];
    return _workProfilePasswordSignInFailureCountBeforeFactoryReset;
}

- (void) setWorkProfilePasswordSignInFailureCountBeforeFactoryReset: (int32_t) val
{
    _workProfilePasswordSignInFailureCountBeforeFactoryReset = val;
    self.dictionary[@"workProfilePasswordSignInFailureCountBeforeFactoryReset"] = @(val);
}

- (MSGraphAndroidWorkProfileRequiredPasswordType*) workProfilePasswordRequiredType
{
    if(!_workProfilePasswordRequiredType){
        _workProfilePasswordRequiredType = [self.dictionary[@"workProfilePasswordRequiredType"] toMSGraphAndroidWorkProfileRequiredPasswordType];
    }
    return _workProfilePasswordRequiredType;
}

- (void) setWorkProfilePasswordRequiredType: (MSGraphAndroidWorkProfileRequiredPasswordType*) val
{
    _workProfilePasswordRequiredType = val;
    self.dictionary[@"workProfilePasswordRequiredType"] = val;
}

- (BOOL) workProfileRequirePassword
{
    _workProfileRequirePassword = [self.dictionary[@"workProfileRequirePassword"] boolValue];
    return _workProfileRequirePassword;
}

- (void) setWorkProfileRequirePassword: (BOOL) val
{
    _workProfileRequirePassword = val;
    self.dictionary[@"workProfileRequirePassword"] = @(val);
}

- (BOOL) securityRequireVerifyApps
{
    _securityRequireVerifyApps = [self.dictionary[@"securityRequireVerifyApps"] boolValue];
    return _securityRequireVerifyApps;
}

- (void) setSecurityRequireVerifyApps: (BOOL) val
{
    _securityRequireVerifyApps = val;
    self.dictionary[@"securityRequireVerifyApps"] = @(val);
}


@end
