// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphAndroidWorkProfileRequiredPasswordType.h"
#import "MSGraphAndroidWorkProfileCrossProfileDataSharingType.h"
#import "MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphAndroidWorkProfileGeneralDeviceConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setPasswordBlockFingerprintUnlock:, getter=passwordBlockFingerprintUnlock) BOOL passwordBlockFingerprintUnlock;
    @property (nonatomic, setter=setPasswordBlockTrustAgents:, getter=passwordBlockTrustAgents) BOOL passwordBlockTrustAgents;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordSignInFailureCountBeforeFactoryReset:, getter=passwordSignInFailureCountBeforeFactoryReset) int32_t passwordSignInFailureCountBeforeFactoryReset;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphAndroidWorkProfileRequiredPasswordType* passwordRequiredType;
    @property (nonnull, nonatomic, setter=setWorkProfileDataSharingType:, getter=workProfileDataSharingType) MSGraphAndroidWorkProfileCrossProfileDataSharingType* workProfileDataSharingType;
    @property (nonatomic, setter=setWorkProfileBlockNotificationsWhileDeviceLocked:, getter=workProfileBlockNotificationsWhileDeviceLocked) BOOL workProfileBlockNotificationsWhileDeviceLocked;
    @property (nonatomic, setter=setWorkProfileBlockAddingAccounts:, getter=workProfileBlockAddingAccounts) BOOL workProfileBlockAddingAccounts;
    @property (nonatomic, setter=setWorkProfileBluetoothEnableContactSharing:, getter=workProfileBluetoothEnableContactSharing) BOOL workProfileBluetoothEnableContactSharing;
    @property (nonatomic, setter=setWorkProfileBlockScreenCapture:, getter=workProfileBlockScreenCapture) BOOL workProfileBlockScreenCapture;
    @property (nonatomic, setter=setWorkProfileBlockCrossProfileCallerId:, getter=workProfileBlockCrossProfileCallerId) BOOL workProfileBlockCrossProfileCallerId;
    @property (nonatomic, setter=setWorkProfileBlockCamera:, getter=workProfileBlockCamera) BOOL workProfileBlockCamera;
    @property (nonatomic, setter=setWorkProfileBlockCrossProfileContactsSearch:, getter=workProfileBlockCrossProfileContactsSearch) BOOL workProfileBlockCrossProfileContactsSearch;
    @property (nonatomic, setter=setWorkProfileBlockCrossProfileCopyPaste:, getter=workProfileBlockCrossProfileCopyPaste) BOOL workProfileBlockCrossProfileCopyPaste;
    @property (nonnull, nonatomic, setter=setWorkProfileDefaultAppPermissionPolicy:, getter=workProfileDefaultAppPermissionPolicy) MSGraphAndroidWorkProfileDefaultAppPermissionPolicyType* workProfileDefaultAppPermissionPolicy;
    @property (nonatomic, setter=setWorkProfilePasswordBlockFingerprintUnlock:, getter=workProfilePasswordBlockFingerprintUnlock) BOOL workProfilePasswordBlockFingerprintUnlock;
    @property (nonatomic, setter=setWorkProfilePasswordBlockTrustAgents:, getter=workProfilePasswordBlockTrustAgents) BOOL workProfilePasswordBlockTrustAgents;
    @property (nonatomic, setter=setWorkProfilePasswordExpirationDays:, getter=workProfilePasswordExpirationDays) int32_t workProfilePasswordExpirationDays;
    @property (nonatomic, setter=setWorkProfilePasswordMinimumLength:, getter=workProfilePasswordMinimumLength) int32_t workProfilePasswordMinimumLength;
    @property (nonatomic, setter=setWorkProfilePasswordMinNumericCharacters:, getter=workProfilePasswordMinNumericCharacters) int32_t workProfilePasswordMinNumericCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinNonLetterCharacters:, getter=workProfilePasswordMinNonLetterCharacters) int32_t workProfilePasswordMinNonLetterCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinLetterCharacters:, getter=workProfilePasswordMinLetterCharacters) int32_t workProfilePasswordMinLetterCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinLowerCaseCharacters:, getter=workProfilePasswordMinLowerCaseCharacters) int32_t workProfilePasswordMinLowerCaseCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinUpperCaseCharacters:, getter=workProfilePasswordMinUpperCaseCharacters) int32_t workProfilePasswordMinUpperCaseCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinSymbolCharacters:, getter=workProfilePasswordMinSymbolCharacters) int32_t workProfilePasswordMinSymbolCharacters;
    @property (nonatomic, setter=setWorkProfilePasswordMinutesOfInactivityBeforeScreenTimeout:, getter=workProfilePasswordMinutesOfInactivityBeforeScreenTimeout) int32_t workProfilePasswordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setWorkProfilePasswordPreviousPasswordBlockCount:, getter=workProfilePasswordPreviousPasswordBlockCount) int32_t workProfilePasswordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setWorkProfilePasswordSignInFailureCountBeforeFactoryReset:, getter=workProfilePasswordSignInFailureCountBeforeFactoryReset) int32_t workProfilePasswordSignInFailureCountBeforeFactoryReset;
    @property (nonnull, nonatomic, setter=setWorkProfilePasswordRequiredType:, getter=workProfilePasswordRequiredType) MSGraphAndroidWorkProfileRequiredPasswordType* workProfilePasswordRequiredType;
    @property (nonatomic, setter=setWorkProfileRequirePassword:, getter=workProfileRequirePassword) BOOL workProfileRequirePassword;
    @property (nonatomic, setter=setSecurityRequireVerifyApps:, getter=securityRequireVerifyApps) BOOL securityRequireVerifyApps;
  
@end
