// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppListItem; 
#import "MSGraphAppListType.h"
#import "MSGraphAndroidRequiredPasswordType.h"
#import "MSGraphWebBrowserCookieSettings.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphAndroidGeneralDeviceConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAppsBlockClipboardSharing:, getter=appsBlockClipboardSharing) BOOL appsBlockClipboardSharing;
    @property (nonatomic, setter=setAppsBlockCopyPaste:, getter=appsBlockCopyPaste) BOOL appsBlockCopyPaste;
    @property (nonatomic, setter=setAppsBlockYouTube:, getter=appsBlockYouTube) BOOL appsBlockYouTube;
    @property (nonatomic, setter=setBluetoothBlocked:, getter=bluetoothBlocked) BOOL bluetoothBlocked;
    @property (nonatomic, setter=setCameraBlocked:, getter=cameraBlocked) BOOL cameraBlocked;
    @property (nonatomic, setter=setCellularBlockDataRoaming:, getter=cellularBlockDataRoaming) BOOL cellularBlockDataRoaming;
    @property (nonatomic, setter=setCellularBlockMessaging:, getter=cellularBlockMessaging) BOOL cellularBlockMessaging;
    @property (nonatomic, setter=setCellularBlockVoiceRoaming:, getter=cellularBlockVoiceRoaming) BOOL cellularBlockVoiceRoaming;
    @property (nonatomic, setter=setCellularBlockWiFiTethering:, getter=cellularBlockWiFiTethering) BOOL cellularBlockWiFiTethering;
    @property (nullable, nonatomic, setter=setCompliantAppsList:, getter=compliantAppsList) NSArray* compliantAppsList;
    @property (nonnull, nonatomic, setter=setCompliantAppListType:, getter=compliantAppListType) MSGraphAppListType* compliantAppListType;
    @property (nonatomic, setter=setDiagnosticDataBlockSubmission:, getter=diagnosticDataBlockSubmission) BOOL diagnosticDataBlockSubmission;
    @property (nonatomic, setter=setLocationServicesBlocked:, getter=locationServicesBlocked) BOOL locationServicesBlocked;
    @property (nonatomic, setter=setGoogleAccountBlockAutoSync:, getter=googleAccountBlockAutoSync) BOOL googleAccountBlockAutoSync;
    @property (nonatomic, setter=setGooglePlayStoreBlocked:, getter=googlePlayStoreBlocked) BOOL googlePlayStoreBlocked;
    @property (nonatomic, setter=setKioskModeBlockSleepButton:, getter=kioskModeBlockSleepButton) BOOL kioskModeBlockSleepButton;
    @property (nonatomic, setter=setKioskModeBlockVolumeButtons:, getter=kioskModeBlockVolumeButtons) BOOL kioskModeBlockVolumeButtons;
    @property (nullable, nonatomic, setter=setKioskModeApps:, getter=kioskModeApps) NSArray* kioskModeApps;
    @property (nonatomic, setter=setNfcBlocked:, getter=nfcBlocked) BOOL nfcBlocked;
    @property (nonatomic, setter=setPasswordBlockFingerprintUnlock:, getter=passwordBlockFingerprintUnlock) BOOL passwordBlockFingerprintUnlock;
    @property (nonatomic, setter=setPasswordBlockTrustAgents:, getter=passwordBlockTrustAgents) BOOL passwordBlockTrustAgents;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordSignInFailureCountBeforeFactoryReset:, getter=passwordSignInFailureCountBeforeFactoryReset) int32_t passwordSignInFailureCountBeforeFactoryReset;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphAndroidRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonatomic, setter=setPowerOffBlocked:, getter=powerOffBlocked) BOOL powerOffBlocked;
    @property (nonatomic, setter=setFactoryResetBlocked:, getter=factoryResetBlocked) BOOL factoryResetBlocked;
    @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setDeviceSharingAllowed:, getter=deviceSharingAllowed) BOOL deviceSharingAllowed;
    @property (nonatomic, setter=setStorageBlockGoogleBackup:, getter=storageBlockGoogleBackup) BOOL storageBlockGoogleBackup;
    @property (nonatomic, setter=setStorageBlockRemovableStorage:, getter=storageBlockRemovableStorage) BOOL storageBlockRemovableStorage;
    @property (nonatomic, setter=setStorageRequireDeviceEncryption:, getter=storageRequireDeviceEncryption) BOOL storageRequireDeviceEncryption;
    @property (nonatomic, setter=setStorageRequireRemovableStorageEncryption:, getter=storageRequireRemovableStorageEncryption) BOOL storageRequireRemovableStorageEncryption;
    @property (nonatomic, setter=setVoiceAssistantBlocked:, getter=voiceAssistantBlocked) BOOL voiceAssistantBlocked;
    @property (nonatomic, setter=setVoiceDialingBlocked:, getter=voiceDialingBlocked) BOOL voiceDialingBlocked;
    @property (nonatomic, setter=setWebBrowserBlockPopups:, getter=webBrowserBlockPopups) BOOL webBrowserBlockPopups;
    @property (nonatomic, setter=setWebBrowserBlockAutofill:, getter=webBrowserBlockAutofill) BOOL webBrowserBlockAutofill;
    @property (nonatomic, setter=setWebBrowserBlockJavaScript:, getter=webBrowserBlockJavaScript) BOOL webBrowserBlockJavaScript;
    @property (nonatomic, setter=setWebBrowserBlocked:, getter=webBrowserBlocked) BOOL webBrowserBlocked;
    @property (nonnull, nonatomic, setter=setWebBrowserCookieSettings:, getter=webBrowserCookieSettings) MSGraphWebBrowserCookieSettings* webBrowserCookieSettings;
    @property (nonatomic, setter=setWiFiBlocked:, getter=wiFiBlocked) BOOL wiFiBlocked;
    @property (nullable, nonatomic, setter=setAppsInstallAllowList:, getter=appsInstallAllowList) NSArray* appsInstallAllowList;
    @property (nullable, nonatomic, setter=setAppsLaunchBlockList:, getter=appsLaunchBlockList) NSArray* appsLaunchBlockList;
    @property (nullable, nonatomic, setter=setAppsHideList:, getter=appsHideList) NSArray* appsHideList;
    @property (nonatomic, setter=setSecurityRequireVerifyApps:, getter=securityRequireVerifyApps) BOOL securityRequireVerifyApps;
  
@end
