// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidGeneralDeviceConfiguration()
{
    BOOL _appsBlockClipboardSharing;
    BOOL _appsBlockCopyPaste;
    BOOL _appsBlockYouTube;
    BOOL _bluetoothBlocked;
    BOOL _cameraBlocked;
    BOOL _cellularBlockDataRoaming;
    BOOL _cellularBlockMessaging;
    BOOL _cellularBlockVoiceRoaming;
    BOOL _cellularBlockWiFiTethering;
    NSArray* _compliantAppsList;
    MSGraphAppListType* _compliantAppListType;
    BOOL _diagnosticDataBlockSubmission;
    BOOL _locationServicesBlocked;
    BOOL _googleAccountBlockAutoSync;
    BOOL _googlePlayStoreBlocked;
    BOOL _kioskModeBlockSleepButton;
    BOOL _kioskModeBlockVolumeButtons;
    NSArray* _kioskModeApps;
    BOOL _nfcBlocked;
    BOOL _passwordBlockFingerprintUnlock;
    BOOL _passwordBlockTrustAgents;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordPreviousPasswordBlockCount;
    int32_t _passwordSignInFailureCountBeforeFactoryReset;
    MSGraphAndroidRequiredPasswordType* _passwordRequiredType;
    BOOL _passwordRequired;
    BOOL _powerOffBlocked;
    BOOL _factoryResetBlocked;
    BOOL _screenCaptureBlocked;
    BOOL _deviceSharingAllowed;
    BOOL _storageBlockGoogleBackup;
    BOOL _storageBlockRemovableStorage;
    BOOL _storageRequireDeviceEncryption;
    BOOL _storageRequireRemovableStorageEncryption;
    BOOL _voiceAssistantBlocked;
    BOOL _voiceDialingBlocked;
    BOOL _webBrowserBlockPopups;
    BOOL _webBrowserBlockAutofill;
    BOOL _webBrowserBlockJavaScript;
    BOOL _webBrowserBlocked;
    MSGraphWebBrowserCookieSettings* _webBrowserCookieSettings;
    BOOL _wiFiBlocked;
    NSArray* _appsInstallAllowList;
    NSArray* _appsLaunchBlockList;
    NSArray* _appsHideList;
    BOOL _securityRequireVerifyApps;
}
@end

@implementation MSGraphAndroidGeneralDeviceConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidGeneralDeviceConfiguration";
    }
    return self;
}
- (BOOL) appsBlockClipboardSharing
{
    _appsBlockClipboardSharing = [self.dictionary[@"appsBlockClipboardSharing"] boolValue];
    return _appsBlockClipboardSharing;
}

- (void) setAppsBlockClipboardSharing: (BOOL) val
{
    _appsBlockClipboardSharing = val;
    self.dictionary[@"appsBlockClipboardSharing"] = @(val);
}

- (BOOL) appsBlockCopyPaste
{
    _appsBlockCopyPaste = [self.dictionary[@"appsBlockCopyPaste"] boolValue];
    return _appsBlockCopyPaste;
}

- (void) setAppsBlockCopyPaste: (BOOL) val
{
    _appsBlockCopyPaste = val;
    self.dictionary[@"appsBlockCopyPaste"] = @(val);
}

- (BOOL) appsBlockYouTube
{
    _appsBlockYouTube = [self.dictionary[@"appsBlockYouTube"] boolValue];
    return _appsBlockYouTube;
}

- (void) setAppsBlockYouTube: (BOOL) val
{
    _appsBlockYouTube = val;
    self.dictionary[@"appsBlockYouTube"] = @(val);
}

- (BOOL) bluetoothBlocked
{
    _bluetoothBlocked = [self.dictionary[@"bluetoothBlocked"] boolValue];
    return _bluetoothBlocked;
}

- (void) setBluetoothBlocked: (BOOL) val
{
    _bluetoothBlocked = val;
    self.dictionary[@"bluetoothBlocked"] = @(val);
}

- (BOOL) cameraBlocked
{
    _cameraBlocked = [self.dictionary[@"cameraBlocked"] boolValue];
    return _cameraBlocked;
}

- (void) setCameraBlocked: (BOOL) val
{
    _cameraBlocked = val;
    self.dictionary[@"cameraBlocked"] = @(val);
}

- (BOOL) cellularBlockDataRoaming
{
    _cellularBlockDataRoaming = [self.dictionary[@"cellularBlockDataRoaming"] boolValue];
    return _cellularBlockDataRoaming;
}

- (void) setCellularBlockDataRoaming: (BOOL) val
{
    _cellularBlockDataRoaming = val;
    self.dictionary[@"cellularBlockDataRoaming"] = @(val);
}

- (BOOL) cellularBlockMessaging
{
    _cellularBlockMessaging = [self.dictionary[@"cellularBlockMessaging"] boolValue];
    return _cellularBlockMessaging;
}

- (void) setCellularBlockMessaging: (BOOL) val
{
    _cellularBlockMessaging = val;
    self.dictionary[@"cellularBlockMessaging"] = @(val);
}

- (BOOL) cellularBlockVoiceRoaming
{
    _cellularBlockVoiceRoaming = [self.dictionary[@"cellularBlockVoiceRoaming"] boolValue];
    return _cellularBlockVoiceRoaming;
}

- (void) setCellularBlockVoiceRoaming: (BOOL) val
{
    _cellularBlockVoiceRoaming = val;
    self.dictionary[@"cellularBlockVoiceRoaming"] = @(val);
}

- (BOOL) cellularBlockWiFiTethering
{
    _cellularBlockWiFiTethering = [self.dictionary[@"cellularBlockWiFiTethering"] boolValue];
    return _cellularBlockWiFiTethering;
}

- (void) setCellularBlockWiFiTethering: (BOOL) val
{
    _cellularBlockWiFiTethering = val;
    self.dictionary[@"cellularBlockWiFiTethering"] = @(val);
}

- (NSArray*) compliantAppsList
{
    if(!_compliantAppsList){
        
    NSMutableArray *compliantAppsListResult = [NSMutableArray array];
    NSArray *compliantAppsList = self.dictionary[@"compliantAppsList"];

    if ([compliantAppsList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in compliantAppsList){
            [compliantAppsListResult addObject:tempAppListItem];
        }
    }

    _compliantAppsList = compliantAppsListResult;
        
    }
    return _compliantAppsList;
}

- (void) setCompliantAppsList: (NSArray*) val
{
    _compliantAppsList = val;
    self.dictionary[@"compliantAppsList"] = val;
}

- (MSGraphAppListType*) compliantAppListType
{
    if(!_compliantAppListType){
        _compliantAppListType = [self.dictionary[@"compliantAppListType"] toMSGraphAppListType];
    }
    return _compliantAppListType;
}

- (void) setCompliantAppListType: (MSGraphAppListType*) val
{
    _compliantAppListType = val;
    self.dictionary[@"compliantAppListType"] = val;
}

- (BOOL) diagnosticDataBlockSubmission
{
    _diagnosticDataBlockSubmission = [self.dictionary[@"diagnosticDataBlockSubmission"] boolValue];
    return _diagnosticDataBlockSubmission;
}

- (void) setDiagnosticDataBlockSubmission: (BOOL) val
{
    _diagnosticDataBlockSubmission = val;
    self.dictionary[@"diagnosticDataBlockSubmission"] = @(val);
}

- (BOOL) locationServicesBlocked
{
    _locationServicesBlocked = [self.dictionary[@"locationServicesBlocked"] boolValue];
    return _locationServicesBlocked;
}

- (void) setLocationServicesBlocked: (BOOL) val
{
    _locationServicesBlocked = val;
    self.dictionary[@"locationServicesBlocked"] = @(val);
}

- (BOOL) googleAccountBlockAutoSync
{
    _googleAccountBlockAutoSync = [self.dictionary[@"googleAccountBlockAutoSync"] boolValue];
    return _googleAccountBlockAutoSync;
}

- (void) setGoogleAccountBlockAutoSync: (BOOL) val
{
    _googleAccountBlockAutoSync = val;
    self.dictionary[@"googleAccountBlockAutoSync"] = @(val);
}

- (BOOL) googlePlayStoreBlocked
{
    _googlePlayStoreBlocked = [self.dictionary[@"googlePlayStoreBlocked"] boolValue];
    return _googlePlayStoreBlocked;
}

- (void) setGooglePlayStoreBlocked: (BOOL) val
{
    _googlePlayStoreBlocked = val;
    self.dictionary[@"googlePlayStoreBlocked"] = @(val);
}

- (BOOL) kioskModeBlockSleepButton
{
    _kioskModeBlockSleepButton = [self.dictionary[@"kioskModeBlockSleepButton"] boolValue];
    return _kioskModeBlockSleepButton;
}

- (void) setKioskModeBlockSleepButton: (BOOL) val
{
    _kioskModeBlockSleepButton = val;
    self.dictionary[@"kioskModeBlockSleepButton"] = @(val);
}

- (BOOL) kioskModeBlockVolumeButtons
{
    _kioskModeBlockVolumeButtons = [self.dictionary[@"kioskModeBlockVolumeButtons"] boolValue];
    return _kioskModeBlockVolumeButtons;
}

- (void) setKioskModeBlockVolumeButtons: (BOOL) val
{
    _kioskModeBlockVolumeButtons = val;
    self.dictionary[@"kioskModeBlockVolumeButtons"] = @(val);
}

- (NSArray*) kioskModeApps
{
    if(!_kioskModeApps){
        
    NSMutableArray *kioskModeAppsResult = [NSMutableArray array];
    NSArray *kioskModeApps = self.dictionary[@"kioskModeApps"];

    if ([kioskModeApps isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in kioskModeApps){
            [kioskModeAppsResult addObject:tempAppListItem];
        }
    }

    _kioskModeApps = kioskModeAppsResult;
        
    }
    return _kioskModeApps;
}

- (void) setKioskModeApps: (NSArray*) val
{
    _kioskModeApps = val;
    self.dictionary[@"kioskModeApps"] = val;
}

- (BOOL) nfcBlocked
{
    _nfcBlocked = [self.dictionary[@"nfcBlocked"] boolValue];
    return _nfcBlocked;
}

- (void) setNfcBlocked: (BOOL) val
{
    _nfcBlocked = val;
    self.dictionary[@"nfcBlocked"] = @(val);
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

- (MSGraphAndroidRequiredPasswordType*) passwordRequiredType
{
    if(!_passwordRequiredType){
        _passwordRequiredType = [self.dictionary[@"passwordRequiredType"] toMSGraphAndroidRequiredPasswordType];
    }
    return _passwordRequiredType;
}

- (void) setPasswordRequiredType: (MSGraphAndroidRequiredPasswordType*) val
{
    _passwordRequiredType = val;
    self.dictionary[@"passwordRequiredType"] = val;
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

- (BOOL) powerOffBlocked
{
    _powerOffBlocked = [self.dictionary[@"powerOffBlocked"] boolValue];
    return _powerOffBlocked;
}

- (void) setPowerOffBlocked: (BOOL) val
{
    _powerOffBlocked = val;
    self.dictionary[@"powerOffBlocked"] = @(val);
}

- (BOOL) factoryResetBlocked
{
    _factoryResetBlocked = [self.dictionary[@"factoryResetBlocked"] boolValue];
    return _factoryResetBlocked;
}

- (void) setFactoryResetBlocked: (BOOL) val
{
    _factoryResetBlocked = val;
    self.dictionary[@"factoryResetBlocked"] = @(val);
}

- (BOOL) screenCaptureBlocked
{
    _screenCaptureBlocked = [self.dictionary[@"screenCaptureBlocked"] boolValue];
    return _screenCaptureBlocked;
}

- (void) setScreenCaptureBlocked: (BOOL) val
{
    _screenCaptureBlocked = val;
    self.dictionary[@"screenCaptureBlocked"] = @(val);
}

- (BOOL) deviceSharingAllowed
{
    _deviceSharingAllowed = [self.dictionary[@"deviceSharingAllowed"] boolValue];
    return _deviceSharingAllowed;
}

- (void) setDeviceSharingAllowed: (BOOL) val
{
    _deviceSharingAllowed = val;
    self.dictionary[@"deviceSharingAllowed"] = @(val);
}

- (BOOL) storageBlockGoogleBackup
{
    _storageBlockGoogleBackup = [self.dictionary[@"storageBlockGoogleBackup"] boolValue];
    return _storageBlockGoogleBackup;
}

- (void) setStorageBlockGoogleBackup: (BOOL) val
{
    _storageBlockGoogleBackup = val;
    self.dictionary[@"storageBlockGoogleBackup"] = @(val);
}

- (BOOL) storageBlockRemovableStorage
{
    _storageBlockRemovableStorage = [self.dictionary[@"storageBlockRemovableStorage"] boolValue];
    return _storageBlockRemovableStorage;
}

- (void) setStorageBlockRemovableStorage: (BOOL) val
{
    _storageBlockRemovableStorage = val;
    self.dictionary[@"storageBlockRemovableStorage"] = @(val);
}

- (BOOL) storageRequireDeviceEncryption
{
    _storageRequireDeviceEncryption = [self.dictionary[@"storageRequireDeviceEncryption"] boolValue];
    return _storageRequireDeviceEncryption;
}

- (void) setStorageRequireDeviceEncryption: (BOOL) val
{
    _storageRequireDeviceEncryption = val;
    self.dictionary[@"storageRequireDeviceEncryption"] = @(val);
}

- (BOOL) storageRequireRemovableStorageEncryption
{
    _storageRequireRemovableStorageEncryption = [self.dictionary[@"storageRequireRemovableStorageEncryption"] boolValue];
    return _storageRequireRemovableStorageEncryption;
}

- (void) setStorageRequireRemovableStorageEncryption: (BOOL) val
{
    _storageRequireRemovableStorageEncryption = val;
    self.dictionary[@"storageRequireRemovableStorageEncryption"] = @(val);
}

- (BOOL) voiceAssistantBlocked
{
    _voiceAssistantBlocked = [self.dictionary[@"voiceAssistantBlocked"] boolValue];
    return _voiceAssistantBlocked;
}

- (void) setVoiceAssistantBlocked: (BOOL) val
{
    _voiceAssistantBlocked = val;
    self.dictionary[@"voiceAssistantBlocked"] = @(val);
}

- (BOOL) voiceDialingBlocked
{
    _voiceDialingBlocked = [self.dictionary[@"voiceDialingBlocked"] boolValue];
    return _voiceDialingBlocked;
}

- (void) setVoiceDialingBlocked: (BOOL) val
{
    _voiceDialingBlocked = val;
    self.dictionary[@"voiceDialingBlocked"] = @(val);
}

- (BOOL) webBrowserBlockPopups
{
    _webBrowserBlockPopups = [self.dictionary[@"webBrowserBlockPopups"] boolValue];
    return _webBrowserBlockPopups;
}

- (void) setWebBrowserBlockPopups: (BOOL) val
{
    _webBrowserBlockPopups = val;
    self.dictionary[@"webBrowserBlockPopups"] = @(val);
}

- (BOOL) webBrowserBlockAutofill
{
    _webBrowserBlockAutofill = [self.dictionary[@"webBrowserBlockAutofill"] boolValue];
    return _webBrowserBlockAutofill;
}

- (void) setWebBrowserBlockAutofill: (BOOL) val
{
    _webBrowserBlockAutofill = val;
    self.dictionary[@"webBrowserBlockAutofill"] = @(val);
}

- (BOOL) webBrowserBlockJavaScript
{
    _webBrowserBlockJavaScript = [self.dictionary[@"webBrowserBlockJavaScript"] boolValue];
    return _webBrowserBlockJavaScript;
}

- (void) setWebBrowserBlockJavaScript: (BOOL) val
{
    _webBrowserBlockJavaScript = val;
    self.dictionary[@"webBrowserBlockJavaScript"] = @(val);
}

- (BOOL) webBrowserBlocked
{
    _webBrowserBlocked = [self.dictionary[@"webBrowserBlocked"] boolValue];
    return _webBrowserBlocked;
}

- (void) setWebBrowserBlocked: (BOOL) val
{
    _webBrowserBlocked = val;
    self.dictionary[@"webBrowserBlocked"] = @(val);
}

- (MSGraphWebBrowserCookieSettings*) webBrowserCookieSettings
{
    if(!_webBrowserCookieSettings){
        _webBrowserCookieSettings = [self.dictionary[@"webBrowserCookieSettings"] toMSGraphWebBrowserCookieSettings];
    }
    return _webBrowserCookieSettings;
}

- (void) setWebBrowserCookieSettings: (MSGraphWebBrowserCookieSettings*) val
{
    _webBrowserCookieSettings = val;
    self.dictionary[@"webBrowserCookieSettings"] = val;
}

- (BOOL) wiFiBlocked
{
    _wiFiBlocked = [self.dictionary[@"wiFiBlocked"] boolValue];
    return _wiFiBlocked;
}

- (void) setWiFiBlocked: (BOOL) val
{
    _wiFiBlocked = val;
    self.dictionary[@"wiFiBlocked"] = @(val);
}

- (NSArray*) appsInstallAllowList
{
    if(!_appsInstallAllowList){
        
    NSMutableArray *appsInstallAllowListResult = [NSMutableArray array];
    NSArray *appsInstallAllowList = self.dictionary[@"appsInstallAllowList"];

    if ([appsInstallAllowList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in appsInstallAllowList){
            [appsInstallAllowListResult addObject:tempAppListItem];
        }
    }

    _appsInstallAllowList = appsInstallAllowListResult;
        
    }
    return _appsInstallAllowList;
}

- (void) setAppsInstallAllowList: (NSArray*) val
{
    _appsInstallAllowList = val;
    self.dictionary[@"appsInstallAllowList"] = val;
}

- (NSArray*) appsLaunchBlockList
{
    if(!_appsLaunchBlockList){
        
    NSMutableArray *appsLaunchBlockListResult = [NSMutableArray array];
    NSArray *appsLaunchBlockList = self.dictionary[@"appsLaunchBlockList"];

    if ([appsLaunchBlockList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in appsLaunchBlockList){
            [appsLaunchBlockListResult addObject:tempAppListItem];
        }
    }

    _appsLaunchBlockList = appsLaunchBlockListResult;
        
    }
    return _appsLaunchBlockList;
}

- (void) setAppsLaunchBlockList: (NSArray*) val
{
    _appsLaunchBlockList = val;
    self.dictionary[@"appsLaunchBlockList"] = val;
}

- (NSArray*) appsHideList
{
    if(!_appsHideList){
        
    NSMutableArray *appsHideListResult = [NSMutableArray array];
    NSArray *appsHideList = self.dictionary[@"appsHideList"];

    if ([appsHideList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in appsHideList){
            [appsHideListResult addObject:tempAppListItem];
        }
    }

    _appsHideList = appsHideListResult;
        
    }
    return _appsHideList;
}

- (void) setAppsHideList: (NSArray*) val
{
    _appsHideList = val;
    self.dictionary[@"appsHideList"] = val;
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
