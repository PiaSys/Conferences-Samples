// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosGeneralDeviceConfiguration()
{
    BOOL _accountBlockModification;
    BOOL _activationLockAllowWhenSupervised;
    BOOL _airDropBlocked;
    BOOL _airDropForceUnmanagedDropTarget;
    BOOL _airPlayForcePairingPasswordForOutgoingRequests;
    BOOL _appleWatchBlockPairing;
    BOOL _appleWatchForceWristDetection;
    BOOL _appleNewsBlocked;
    NSArray* _appsSingleAppModeList;
    NSArray* _appsVisibilityList;
    MSGraphAppListType* _appsVisibilityListType;
    BOOL _appStoreBlockAutomaticDownloads;
    BOOL _appStoreBlocked;
    BOOL _appStoreBlockInAppPurchases;
    BOOL _appStoreBlockUIAppInstallation;
    BOOL _appStoreRequirePassword;
    BOOL _bluetoothBlockModification;
    BOOL _cameraBlocked;
    BOOL _cellularBlockDataRoaming;
    BOOL _cellularBlockGlobalBackgroundFetchWhileRoaming;
    BOOL _cellularBlockPerAppDataModification;
    BOOL _cellularBlockPersonalHotspot;
    BOOL _cellularBlockVoiceRoaming;
    BOOL _certificatesBlockUntrustedTlsCertificates;
    BOOL _classroomAppBlockRemoteScreenObservation;
    BOOL _classroomAppForceUnpromptedScreenObservation;
    NSArray* _compliantAppsList;
    MSGraphAppListType* _compliantAppListType;
    BOOL _configurationProfileBlockChanges;
    BOOL _definitionLookupBlocked;
    BOOL _deviceBlockEnableRestrictions;
    BOOL _deviceBlockEraseContentAndSettings;
    BOOL _deviceBlockNameModification;
    BOOL _diagnosticDataBlockSubmission;
    BOOL _diagnosticDataBlockSubmissionModification;
    BOOL _documentsBlockManagedDocumentsInUnmanagedApps;
    BOOL _documentsBlockUnmanagedDocumentsInManagedApps;
    NSArray* _emailInDomainSuffixes;
    BOOL _enterpriseAppBlockTrust;
    BOOL _enterpriseAppBlockTrustModification;
    BOOL _faceTimeBlocked;
    BOOL _findMyFriendsBlocked;
    BOOL _gamingBlockGameCenterFriends;
    BOOL _gamingBlockMultiplayer;
    BOOL _gameCenterBlocked;
    BOOL _hostPairingBlocked;
    BOOL _iBooksStoreBlocked;
    BOOL _iBooksStoreBlockErotica;
    BOOL _iCloudBlockActivityContinuation;
    BOOL _iCloudBlockBackup;
    BOOL _iCloudBlockDocumentSync;
    BOOL _iCloudBlockManagedAppsSync;
    BOOL _iCloudBlockPhotoLibrary;
    BOOL _iCloudBlockPhotoStreamSync;
    BOOL _iCloudBlockSharedPhotoStream;
    BOOL _iCloudRequireEncryptedBackup;
    BOOL _iTunesBlockExplicitContent;
    BOOL _iTunesBlockMusicService;
    BOOL _iTunesBlockRadio;
    BOOL _keyboardBlockAutoCorrect;
    BOOL _keyboardBlockDictation;
    BOOL _keyboardBlockPredictive;
    BOOL _keyboardBlockShortcuts;
    BOOL _keyboardBlockSpellCheck;
    BOOL _kioskModeAllowAssistiveSpeak;
    BOOL _kioskModeAllowAssistiveTouchSettings;
    BOOL _kioskModeAllowAutoLock;
    BOOL _kioskModeAllowColorInversionSettings;
    BOOL _kioskModeAllowRingerSwitch;
    BOOL _kioskModeAllowScreenRotation;
    BOOL _kioskModeAllowSleepButton;
    BOOL _kioskModeAllowTouchscreen;
    BOOL _kioskModeAllowVoiceOverSettings;
    BOOL _kioskModeAllowVolumeButtons;
    BOOL _kioskModeAllowZoomSettings;
    NSString* _kioskModeAppStoreUrl;
    NSString* _kioskModeBuiltInAppId;
    BOOL _kioskModeRequireAssistiveTouch;
    BOOL _kioskModeRequireColorInversion;
    BOOL _kioskModeRequireMonoAudio;
    BOOL _kioskModeRequireVoiceOver;
    BOOL _kioskModeRequireZoom;
    NSString* _kioskModeManagedAppId;
    BOOL _lockScreenBlockControlCenter;
    BOOL _lockScreenBlockNotificationView;
    BOOL _lockScreenBlockPassbook;
    BOOL _lockScreenBlockTodayView;
    MSGraphMediaContentRatingAustralia* _mediaContentRatingAustralia;
    MSGraphMediaContentRatingCanada* _mediaContentRatingCanada;
    MSGraphMediaContentRatingFrance* _mediaContentRatingFrance;
    MSGraphMediaContentRatingGermany* _mediaContentRatingGermany;
    MSGraphMediaContentRatingIreland* _mediaContentRatingIreland;
    MSGraphMediaContentRatingJapan* _mediaContentRatingJapan;
    MSGraphMediaContentRatingNewZealand* _mediaContentRatingNewZealand;
    MSGraphMediaContentRatingUnitedKingdom* _mediaContentRatingUnitedKingdom;
    MSGraphMediaContentRatingUnitedStates* _mediaContentRatingUnitedStates;
    NSArray* _networkUsageRules;
    MSGraphRatingAppsType* _mediaContentRatingApps;
    BOOL _messagesBlocked;
    BOOL _notificationsBlockSettingsModification;
    BOOL _passcodeBlockFingerprintUnlock;
    BOOL _passcodeBlockFingerprintModification;
    BOOL _passcodeBlockModification;
    BOOL _passcodeBlockSimple;
    int32_t _passcodeExpirationDays;
    int32_t _passcodeMinimumLength;
    int32_t _passcodeMinutesOfInactivityBeforeLock;
    int32_t _passcodeMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passcodeMinimumCharacterSetCount;
    int32_t _passcodePreviousPasscodeBlockCount;
    int32_t _passcodeSignInFailureCountBeforeWipe;
    MSGraphRequiredPasswordType* _passcodeRequiredType;
    BOOL _passcodeRequired;
    BOOL _podcastsBlocked;
    BOOL _safariBlockAutofill;
    BOOL _safariBlockJavaScript;
    BOOL _safariBlockPopups;
    BOOL _safariBlocked;
    MSGraphWebBrowserCookieSettings* _safariCookieSettings;
    NSArray* _safariManagedDomains;
    NSArray* _safariPasswordAutoFillDomains;
    BOOL _safariRequireFraudWarning;
    BOOL _screenCaptureBlocked;
    BOOL _siriBlocked;
    BOOL _siriBlockedWhenLocked;
    BOOL _siriBlockUserGeneratedContent;
    BOOL _siriRequireProfanityFilter;
    BOOL _spotlightBlockInternetResults;
    BOOL _voiceDialingBlocked;
    BOOL _wallpaperBlockModification;
    BOOL _wiFiConnectOnlyToConfiguredNetworks;
}
@end

@implementation MSGraphIosGeneralDeviceConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosGeneralDeviceConfiguration";
    }
    return self;
}
- (BOOL) accountBlockModification
{
    _accountBlockModification = [self.dictionary[@"accountBlockModification"] boolValue];
    return _accountBlockModification;
}

- (void) setAccountBlockModification: (BOOL) val
{
    _accountBlockModification = val;
    self.dictionary[@"accountBlockModification"] = @(val);
}

- (BOOL) activationLockAllowWhenSupervised
{
    _activationLockAllowWhenSupervised = [self.dictionary[@"activationLockAllowWhenSupervised"] boolValue];
    return _activationLockAllowWhenSupervised;
}

- (void) setActivationLockAllowWhenSupervised: (BOOL) val
{
    _activationLockAllowWhenSupervised = val;
    self.dictionary[@"activationLockAllowWhenSupervised"] = @(val);
}

- (BOOL) airDropBlocked
{
    _airDropBlocked = [self.dictionary[@"airDropBlocked"] boolValue];
    return _airDropBlocked;
}

- (void) setAirDropBlocked: (BOOL) val
{
    _airDropBlocked = val;
    self.dictionary[@"airDropBlocked"] = @(val);
}

- (BOOL) airDropForceUnmanagedDropTarget
{
    _airDropForceUnmanagedDropTarget = [self.dictionary[@"airDropForceUnmanagedDropTarget"] boolValue];
    return _airDropForceUnmanagedDropTarget;
}

- (void) setAirDropForceUnmanagedDropTarget: (BOOL) val
{
    _airDropForceUnmanagedDropTarget = val;
    self.dictionary[@"airDropForceUnmanagedDropTarget"] = @(val);
}

- (BOOL) airPlayForcePairingPasswordForOutgoingRequests
{
    _airPlayForcePairingPasswordForOutgoingRequests = [self.dictionary[@"airPlayForcePairingPasswordForOutgoingRequests"] boolValue];
    return _airPlayForcePairingPasswordForOutgoingRequests;
}

- (void) setAirPlayForcePairingPasswordForOutgoingRequests: (BOOL) val
{
    _airPlayForcePairingPasswordForOutgoingRequests = val;
    self.dictionary[@"airPlayForcePairingPasswordForOutgoingRequests"] = @(val);
}

- (BOOL) appleWatchBlockPairing
{
    _appleWatchBlockPairing = [self.dictionary[@"appleWatchBlockPairing"] boolValue];
    return _appleWatchBlockPairing;
}

- (void) setAppleWatchBlockPairing: (BOOL) val
{
    _appleWatchBlockPairing = val;
    self.dictionary[@"appleWatchBlockPairing"] = @(val);
}

- (BOOL) appleWatchForceWristDetection
{
    _appleWatchForceWristDetection = [self.dictionary[@"appleWatchForceWristDetection"] boolValue];
    return _appleWatchForceWristDetection;
}

- (void) setAppleWatchForceWristDetection: (BOOL) val
{
    _appleWatchForceWristDetection = val;
    self.dictionary[@"appleWatchForceWristDetection"] = @(val);
}

- (BOOL) appleNewsBlocked
{
    _appleNewsBlocked = [self.dictionary[@"appleNewsBlocked"] boolValue];
    return _appleNewsBlocked;
}

- (void) setAppleNewsBlocked: (BOOL) val
{
    _appleNewsBlocked = val;
    self.dictionary[@"appleNewsBlocked"] = @(val);
}

- (NSArray*) appsSingleAppModeList
{
    if(!_appsSingleAppModeList){
        
    NSMutableArray *appsSingleAppModeListResult = [NSMutableArray array];
    NSArray *appsSingleAppModeList = self.dictionary[@"appsSingleAppModeList"];

    if ([appsSingleAppModeList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in appsSingleAppModeList){
            [appsSingleAppModeListResult addObject:tempAppListItem];
        }
    }

    _appsSingleAppModeList = appsSingleAppModeListResult;
        
    }
    return _appsSingleAppModeList;
}

- (void) setAppsSingleAppModeList: (NSArray*) val
{
    _appsSingleAppModeList = val;
    self.dictionary[@"appsSingleAppModeList"] = val;
}

- (NSArray*) appsVisibilityList
{
    if(!_appsVisibilityList){
        
    NSMutableArray *appsVisibilityListResult = [NSMutableArray array];
    NSArray *appsVisibilityList = self.dictionary[@"appsVisibilityList"];

    if ([appsVisibilityList isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in appsVisibilityList){
            [appsVisibilityListResult addObject:tempAppListItem];
        }
    }

    _appsVisibilityList = appsVisibilityListResult;
        
    }
    return _appsVisibilityList;
}

- (void) setAppsVisibilityList: (NSArray*) val
{
    _appsVisibilityList = val;
    self.dictionary[@"appsVisibilityList"] = val;
}

- (MSGraphAppListType*) appsVisibilityListType
{
    if(!_appsVisibilityListType){
        _appsVisibilityListType = [self.dictionary[@"appsVisibilityListType"] toMSGraphAppListType];
    }
    return _appsVisibilityListType;
}

- (void) setAppsVisibilityListType: (MSGraphAppListType*) val
{
    _appsVisibilityListType = val;
    self.dictionary[@"appsVisibilityListType"] = val;
}

- (BOOL) appStoreBlockAutomaticDownloads
{
    _appStoreBlockAutomaticDownloads = [self.dictionary[@"appStoreBlockAutomaticDownloads"] boolValue];
    return _appStoreBlockAutomaticDownloads;
}

- (void) setAppStoreBlockAutomaticDownloads: (BOOL) val
{
    _appStoreBlockAutomaticDownloads = val;
    self.dictionary[@"appStoreBlockAutomaticDownloads"] = @(val);
}

- (BOOL) appStoreBlocked
{
    _appStoreBlocked = [self.dictionary[@"appStoreBlocked"] boolValue];
    return _appStoreBlocked;
}

- (void) setAppStoreBlocked: (BOOL) val
{
    _appStoreBlocked = val;
    self.dictionary[@"appStoreBlocked"] = @(val);
}

- (BOOL) appStoreBlockInAppPurchases
{
    _appStoreBlockInAppPurchases = [self.dictionary[@"appStoreBlockInAppPurchases"] boolValue];
    return _appStoreBlockInAppPurchases;
}

- (void) setAppStoreBlockInAppPurchases: (BOOL) val
{
    _appStoreBlockInAppPurchases = val;
    self.dictionary[@"appStoreBlockInAppPurchases"] = @(val);
}

- (BOOL) appStoreBlockUIAppInstallation
{
    _appStoreBlockUIAppInstallation = [self.dictionary[@"appStoreBlockUIAppInstallation"] boolValue];
    return _appStoreBlockUIAppInstallation;
}

- (void) setAppStoreBlockUIAppInstallation: (BOOL) val
{
    _appStoreBlockUIAppInstallation = val;
    self.dictionary[@"appStoreBlockUIAppInstallation"] = @(val);
}

- (BOOL) appStoreRequirePassword
{
    _appStoreRequirePassword = [self.dictionary[@"appStoreRequirePassword"] boolValue];
    return _appStoreRequirePassword;
}

- (void) setAppStoreRequirePassword: (BOOL) val
{
    _appStoreRequirePassword = val;
    self.dictionary[@"appStoreRequirePassword"] = @(val);
}

- (BOOL) bluetoothBlockModification
{
    _bluetoothBlockModification = [self.dictionary[@"bluetoothBlockModification"] boolValue];
    return _bluetoothBlockModification;
}

- (void) setBluetoothBlockModification: (BOOL) val
{
    _bluetoothBlockModification = val;
    self.dictionary[@"bluetoothBlockModification"] = @(val);
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

- (BOOL) cellularBlockGlobalBackgroundFetchWhileRoaming
{
    _cellularBlockGlobalBackgroundFetchWhileRoaming = [self.dictionary[@"cellularBlockGlobalBackgroundFetchWhileRoaming"] boolValue];
    return _cellularBlockGlobalBackgroundFetchWhileRoaming;
}

- (void) setCellularBlockGlobalBackgroundFetchWhileRoaming: (BOOL) val
{
    _cellularBlockGlobalBackgroundFetchWhileRoaming = val;
    self.dictionary[@"cellularBlockGlobalBackgroundFetchWhileRoaming"] = @(val);
}

- (BOOL) cellularBlockPerAppDataModification
{
    _cellularBlockPerAppDataModification = [self.dictionary[@"cellularBlockPerAppDataModification"] boolValue];
    return _cellularBlockPerAppDataModification;
}

- (void) setCellularBlockPerAppDataModification: (BOOL) val
{
    _cellularBlockPerAppDataModification = val;
    self.dictionary[@"cellularBlockPerAppDataModification"] = @(val);
}

- (BOOL) cellularBlockPersonalHotspot
{
    _cellularBlockPersonalHotspot = [self.dictionary[@"cellularBlockPersonalHotspot"] boolValue];
    return _cellularBlockPersonalHotspot;
}

- (void) setCellularBlockPersonalHotspot: (BOOL) val
{
    _cellularBlockPersonalHotspot = val;
    self.dictionary[@"cellularBlockPersonalHotspot"] = @(val);
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

- (BOOL) certificatesBlockUntrustedTlsCertificates
{
    _certificatesBlockUntrustedTlsCertificates = [self.dictionary[@"certificatesBlockUntrustedTlsCertificates"] boolValue];
    return _certificatesBlockUntrustedTlsCertificates;
}

- (void) setCertificatesBlockUntrustedTlsCertificates: (BOOL) val
{
    _certificatesBlockUntrustedTlsCertificates = val;
    self.dictionary[@"certificatesBlockUntrustedTlsCertificates"] = @(val);
}

- (BOOL) classroomAppBlockRemoteScreenObservation
{
    _classroomAppBlockRemoteScreenObservation = [self.dictionary[@"classroomAppBlockRemoteScreenObservation"] boolValue];
    return _classroomAppBlockRemoteScreenObservation;
}

- (void) setClassroomAppBlockRemoteScreenObservation: (BOOL) val
{
    _classroomAppBlockRemoteScreenObservation = val;
    self.dictionary[@"classroomAppBlockRemoteScreenObservation"] = @(val);
}

- (BOOL) classroomAppForceUnpromptedScreenObservation
{
    _classroomAppForceUnpromptedScreenObservation = [self.dictionary[@"classroomAppForceUnpromptedScreenObservation"] boolValue];
    return _classroomAppForceUnpromptedScreenObservation;
}

- (void) setClassroomAppForceUnpromptedScreenObservation: (BOOL) val
{
    _classroomAppForceUnpromptedScreenObservation = val;
    self.dictionary[@"classroomAppForceUnpromptedScreenObservation"] = @(val);
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

- (BOOL) configurationProfileBlockChanges
{
    _configurationProfileBlockChanges = [self.dictionary[@"configurationProfileBlockChanges"] boolValue];
    return _configurationProfileBlockChanges;
}

- (void) setConfigurationProfileBlockChanges: (BOOL) val
{
    _configurationProfileBlockChanges = val;
    self.dictionary[@"configurationProfileBlockChanges"] = @(val);
}

- (BOOL) definitionLookupBlocked
{
    _definitionLookupBlocked = [self.dictionary[@"definitionLookupBlocked"] boolValue];
    return _definitionLookupBlocked;
}

- (void) setDefinitionLookupBlocked: (BOOL) val
{
    _definitionLookupBlocked = val;
    self.dictionary[@"definitionLookupBlocked"] = @(val);
}

- (BOOL) deviceBlockEnableRestrictions
{
    _deviceBlockEnableRestrictions = [self.dictionary[@"deviceBlockEnableRestrictions"] boolValue];
    return _deviceBlockEnableRestrictions;
}

- (void) setDeviceBlockEnableRestrictions: (BOOL) val
{
    _deviceBlockEnableRestrictions = val;
    self.dictionary[@"deviceBlockEnableRestrictions"] = @(val);
}

- (BOOL) deviceBlockEraseContentAndSettings
{
    _deviceBlockEraseContentAndSettings = [self.dictionary[@"deviceBlockEraseContentAndSettings"] boolValue];
    return _deviceBlockEraseContentAndSettings;
}

- (void) setDeviceBlockEraseContentAndSettings: (BOOL) val
{
    _deviceBlockEraseContentAndSettings = val;
    self.dictionary[@"deviceBlockEraseContentAndSettings"] = @(val);
}

- (BOOL) deviceBlockNameModification
{
    _deviceBlockNameModification = [self.dictionary[@"deviceBlockNameModification"] boolValue];
    return _deviceBlockNameModification;
}

- (void) setDeviceBlockNameModification: (BOOL) val
{
    _deviceBlockNameModification = val;
    self.dictionary[@"deviceBlockNameModification"] = @(val);
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

- (BOOL) diagnosticDataBlockSubmissionModification
{
    _diagnosticDataBlockSubmissionModification = [self.dictionary[@"diagnosticDataBlockSubmissionModification"] boolValue];
    return _diagnosticDataBlockSubmissionModification;
}

- (void) setDiagnosticDataBlockSubmissionModification: (BOOL) val
{
    _diagnosticDataBlockSubmissionModification = val;
    self.dictionary[@"diagnosticDataBlockSubmissionModification"] = @(val);
}

- (BOOL) documentsBlockManagedDocumentsInUnmanagedApps
{
    _documentsBlockManagedDocumentsInUnmanagedApps = [self.dictionary[@"documentsBlockManagedDocumentsInUnmanagedApps"] boolValue];
    return _documentsBlockManagedDocumentsInUnmanagedApps;
}

- (void) setDocumentsBlockManagedDocumentsInUnmanagedApps: (BOOL) val
{
    _documentsBlockManagedDocumentsInUnmanagedApps = val;
    self.dictionary[@"documentsBlockManagedDocumentsInUnmanagedApps"] = @(val);
}

- (BOOL) documentsBlockUnmanagedDocumentsInManagedApps
{
    _documentsBlockUnmanagedDocumentsInManagedApps = [self.dictionary[@"documentsBlockUnmanagedDocumentsInManagedApps"] boolValue];
    return _documentsBlockUnmanagedDocumentsInManagedApps;
}

- (void) setDocumentsBlockUnmanagedDocumentsInManagedApps: (BOOL) val
{
    _documentsBlockUnmanagedDocumentsInManagedApps = val;
    self.dictionary[@"documentsBlockUnmanagedDocumentsInManagedApps"] = @(val);
}

- (NSArray*) emailInDomainSuffixes
{
    if([[NSNull null] isEqual:self.dictionary[@"emailInDomainSuffixes"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailInDomainSuffixes"];
}

- (void) setEmailInDomainSuffixes: (NSArray*) val
{
    self.dictionary[@"emailInDomainSuffixes"] = val;
}

- (BOOL) enterpriseAppBlockTrust
{
    _enterpriseAppBlockTrust = [self.dictionary[@"enterpriseAppBlockTrust"] boolValue];
    return _enterpriseAppBlockTrust;
}

- (void) setEnterpriseAppBlockTrust: (BOOL) val
{
    _enterpriseAppBlockTrust = val;
    self.dictionary[@"enterpriseAppBlockTrust"] = @(val);
}

- (BOOL) enterpriseAppBlockTrustModification
{
    _enterpriseAppBlockTrustModification = [self.dictionary[@"enterpriseAppBlockTrustModification"] boolValue];
    return _enterpriseAppBlockTrustModification;
}

- (void) setEnterpriseAppBlockTrustModification: (BOOL) val
{
    _enterpriseAppBlockTrustModification = val;
    self.dictionary[@"enterpriseAppBlockTrustModification"] = @(val);
}

- (BOOL) faceTimeBlocked
{
    _faceTimeBlocked = [self.dictionary[@"faceTimeBlocked"] boolValue];
    return _faceTimeBlocked;
}

- (void) setFaceTimeBlocked: (BOOL) val
{
    _faceTimeBlocked = val;
    self.dictionary[@"faceTimeBlocked"] = @(val);
}

- (BOOL) findMyFriendsBlocked
{
    _findMyFriendsBlocked = [self.dictionary[@"findMyFriendsBlocked"] boolValue];
    return _findMyFriendsBlocked;
}

- (void) setFindMyFriendsBlocked: (BOOL) val
{
    _findMyFriendsBlocked = val;
    self.dictionary[@"findMyFriendsBlocked"] = @(val);
}

- (BOOL) gamingBlockGameCenterFriends
{
    _gamingBlockGameCenterFriends = [self.dictionary[@"gamingBlockGameCenterFriends"] boolValue];
    return _gamingBlockGameCenterFriends;
}

- (void) setGamingBlockGameCenterFriends: (BOOL) val
{
    _gamingBlockGameCenterFriends = val;
    self.dictionary[@"gamingBlockGameCenterFriends"] = @(val);
}

- (BOOL) gamingBlockMultiplayer
{
    _gamingBlockMultiplayer = [self.dictionary[@"gamingBlockMultiplayer"] boolValue];
    return _gamingBlockMultiplayer;
}

- (void) setGamingBlockMultiplayer: (BOOL) val
{
    _gamingBlockMultiplayer = val;
    self.dictionary[@"gamingBlockMultiplayer"] = @(val);
}

- (BOOL) gameCenterBlocked
{
    _gameCenterBlocked = [self.dictionary[@"gameCenterBlocked"] boolValue];
    return _gameCenterBlocked;
}

- (void) setGameCenterBlocked: (BOOL) val
{
    _gameCenterBlocked = val;
    self.dictionary[@"gameCenterBlocked"] = @(val);
}

- (BOOL) hostPairingBlocked
{
    _hostPairingBlocked = [self.dictionary[@"hostPairingBlocked"] boolValue];
    return _hostPairingBlocked;
}

- (void) setHostPairingBlocked: (BOOL) val
{
    _hostPairingBlocked = val;
    self.dictionary[@"hostPairingBlocked"] = @(val);
}

- (BOOL) iBooksStoreBlocked
{
    _iBooksStoreBlocked = [self.dictionary[@"iBooksStoreBlocked"] boolValue];
    return _iBooksStoreBlocked;
}

- (void) setIBooksStoreBlocked: (BOOL) val
{
    _iBooksStoreBlocked = val;
    self.dictionary[@"iBooksStoreBlocked"] = @(val);
}

- (BOOL) iBooksStoreBlockErotica
{
    _iBooksStoreBlockErotica = [self.dictionary[@"iBooksStoreBlockErotica"] boolValue];
    return _iBooksStoreBlockErotica;
}

- (void) setIBooksStoreBlockErotica: (BOOL) val
{
    _iBooksStoreBlockErotica = val;
    self.dictionary[@"iBooksStoreBlockErotica"] = @(val);
}

- (BOOL) iCloudBlockActivityContinuation
{
    _iCloudBlockActivityContinuation = [self.dictionary[@"iCloudBlockActivityContinuation"] boolValue];
    return _iCloudBlockActivityContinuation;
}

- (void) setICloudBlockActivityContinuation: (BOOL) val
{
    _iCloudBlockActivityContinuation = val;
    self.dictionary[@"iCloudBlockActivityContinuation"] = @(val);
}

- (BOOL) iCloudBlockBackup
{
    _iCloudBlockBackup = [self.dictionary[@"iCloudBlockBackup"] boolValue];
    return _iCloudBlockBackup;
}

- (void) setICloudBlockBackup: (BOOL) val
{
    _iCloudBlockBackup = val;
    self.dictionary[@"iCloudBlockBackup"] = @(val);
}

- (BOOL) iCloudBlockDocumentSync
{
    _iCloudBlockDocumentSync = [self.dictionary[@"iCloudBlockDocumentSync"] boolValue];
    return _iCloudBlockDocumentSync;
}

- (void) setICloudBlockDocumentSync: (BOOL) val
{
    _iCloudBlockDocumentSync = val;
    self.dictionary[@"iCloudBlockDocumentSync"] = @(val);
}

- (BOOL) iCloudBlockManagedAppsSync
{
    _iCloudBlockManagedAppsSync = [self.dictionary[@"iCloudBlockManagedAppsSync"] boolValue];
    return _iCloudBlockManagedAppsSync;
}

- (void) setICloudBlockManagedAppsSync: (BOOL) val
{
    _iCloudBlockManagedAppsSync = val;
    self.dictionary[@"iCloudBlockManagedAppsSync"] = @(val);
}

- (BOOL) iCloudBlockPhotoLibrary
{
    _iCloudBlockPhotoLibrary = [self.dictionary[@"iCloudBlockPhotoLibrary"] boolValue];
    return _iCloudBlockPhotoLibrary;
}

- (void) setICloudBlockPhotoLibrary: (BOOL) val
{
    _iCloudBlockPhotoLibrary = val;
    self.dictionary[@"iCloudBlockPhotoLibrary"] = @(val);
}

- (BOOL) iCloudBlockPhotoStreamSync
{
    _iCloudBlockPhotoStreamSync = [self.dictionary[@"iCloudBlockPhotoStreamSync"] boolValue];
    return _iCloudBlockPhotoStreamSync;
}

- (void) setICloudBlockPhotoStreamSync: (BOOL) val
{
    _iCloudBlockPhotoStreamSync = val;
    self.dictionary[@"iCloudBlockPhotoStreamSync"] = @(val);
}

- (BOOL) iCloudBlockSharedPhotoStream
{
    _iCloudBlockSharedPhotoStream = [self.dictionary[@"iCloudBlockSharedPhotoStream"] boolValue];
    return _iCloudBlockSharedPhotoStream;
}

- (void) setICloudBlockSharedPhotoStream: (BOOL) val
{
    _iCloudBlockSharedPhotoStream = val;
    self.dictionary[@"iCloudBlockSharedPhotoStream"] = @(val);
}

- (BOOL) iCloudRequireEncryptedBackup
{
    _iCloudRequireEncryptedBackup = [self.dictionary[@"iCloudRequireEncryptedBackup"] boolValue];
    return _iCloudRequireEncryptedBackup;
}

- (void) setICloudRequireEncryptedBackup: (BOOL) val
{
    _iCloudRequireEncryptedBackup = val;
    self.dictionary[@"iCloudRequireEncryptedBackup"] = @(val);
}

- (BOOL) iTunesBlockExplicitContent
{
    _iTunesBlockExplicitContent = [self.dictionary[@"iTunesBlockExplicitContent"] boolValue];
    return _iTunesBlockExplicitContent;
}

- (void) setITunesBlockExplicitContent: (BOOL) val
{
    _iTunesBlockExplicitContent = val;
    self.dictionary[@"iTunesBlockExplicitContent"] = @(val);
}

- (BOOL) iTunesBlockMusicService
{
    _iTunesBlockMusicService = [self.dictionary[@"iTunesBlockMusicService"] boolValue];
    return _iTunesBlockMusicService;
}

- (void) setITunesBlockMusicService: (BOOL) val
{
    _iTunesBlockMusicService = val;
    self.dictionary[@"iTunesBlockMusicService"] = @(val);
}

- (BOOL) iTunesBlockRadio
{
    _iTunesBlockRadio = [self.dictionary[@"iTunesBlockRadio"] boolValue];
    return _iTunesBlockRadio;
}

- (void) setITunesBlockRadio: (BOOL) val
{
    _iTunesBlockRadio = val;
    self.dictionary[@"iTunesBlockRadio"] = @(val);
}

- (BOOL) keyboardBlockAutoCorrect
{
    _keyboardBlockAutoCorrect = [self.dictionary[@"keyboardBlockAutoCorrect"] boolValue];
    return _keyboardBlockAutoCorrect;
}

- (void) setKeyboardBlockAutoCorrect: (BOOL) val
{
    _keyboardBlockAutoCorrect = val;
    self.dictionary[@"keyboardBlockAutoCorrect"] = @(val);
}

- (BOOL) keyboardBlockDictation
{
    _keyboardBlockDictation = [self.dictionary[@"keyboardBlockDictation"] boolValue];
    return _keyboardBlockDictation;
}

- (void) setKeyboardBlockDictation: (BOOL) val
{
    _keyboardBlockDictation = val;
    self.dictionary[@"keyboardBlockDictation"] = @(val);
}

- (BOOL) keyboardBlockPredictive
{
    _keyboardBlockPredictive = [self.dictionary[@"keyboardBlockPredictive"] boolValue];
    return _keyboardBlockPredictive;
}

- (void) setKeyboardBlockPredictive: (BOOL) val
{
    _keyboardBlockPredictive = val;
    self.dictionary[@"keyboardBlockPredictive"] = @(val);
}

- (BOOL) keyboardBlockShortcuts
{
    _keyboardBlockShortcuts = [self.dictionary[@"keyboardBlockShortcuts"] boolValue];
    return _keyboardBlockShortcuts;
}

- (void) setKeyboardBlockShortcuts: (BOOL) val
{
    _keyboardBlockShortcuts = val;
    self.dictionary[@"keyboardBlockShortcuts"] = @(val);
}

- (BOOL) keyboardBlockSpellCheck
{
    _keyboardBlockSpellCheck = [self.dictionary[@"keyboardBlockSpellCheck"] boolValue];
    return _keyboardBlockSpellCheck;
}

- (void) setKeyboardBlockSpellCheck: (BOOL) val
{
    _keyboardBlockSpellCheck = val;
    self.dictionary[@"keyboardBlockSpellCheck"] = @(val);
}

- (BOOL) kioskModeAllowAssistiveSpeak
{
    _kioskModeAllowAssistiveSpeak = [self.dictionary[@"kioskModeAllowAssistiveSpeak"] boolValue];
    return _kioskModeAllowAssistiveSpeak;
}

- (void) setKioskModeAllowAssistiveSpeak: (BOOL) val
{
    _kioskModeAllowAssistiveSpeak = val;
    self.dictionary[@"kioskModeAllowAssistiveSpeak"] = @(val);
}

- (BOOL) kioskModeAllowAssistiveTouchSettings
{
    _kioskModeAllowAssistiveTouchSettings = [self.dictionary[@"kioskModeAllowAssistiveTouchSettings"] boolValue];
    return _kioskModeAllowAssistiveTouchSettings;
}

- (void) setKioskModeAllowAssistiveTouchSettings: (BOOL) val
{
    _kioskModeAllowAssistiveTouchSettings = val;
    self.dictionary[@"kioskModeAllowAssistiveTouchSettings"] = @(val);
}

- (BOOL) kioskModeAllowAutoLock
{
    _kioskModeAllowAutoLock = [self.dictionary[@"kioskModeAllowAutoLock"] boolValue];
    return _kioskModeAllowAutoLock;
}

- (void) setKioskModeAllowAutoLock: (BOOL) val
{
    _kioskModeAllowAutoLock = val;
    self.dictionary[@"kioskModeAllowAutoLock"] = @(val);
}

- (BOOL) kioskModeAllowColorInversionSettings
{
    _kioskModeAllowColorInversionSettings = [self.dictionary[@"kioskModeAllowColorInversionSettings"] boolValue];
    return _kioskModeAllowColorInversionSettings;
}

- (void) setKioskModeAllowColorInversionSettings: (BOOL) val
{
    _kioskModeAllowColorInversionSettings = val;
    self.dictionary[@"kioskModeAllowColorInversionSettings"] = @(val);
}

- (BOOL) kioskModeAllowRingerSwitch
{
    _kioskModeAllowRingerSwitch = [self.dictionary[@"kioskModeAllowRingerSwitch"] boolValue];
    return _kioskModeAllowRingerSwitch;
}

- (void) setKioskModeAllowRingerSwitch: (BOOL) val
{
    _kioskModeAllowRingerSwitch = val;
    self.dictionary[@"kioskModeAllowRingerSwitch"] = @(val);
}

- (BOOL) kioskModeAllowScreenRotation
{
    _kioskModeAllowScreenRotation = [self.dictionary[@"kioskModeAllowScreenRotation"] boolValue];
    return _kioskModeAllowScreenRotation;
}

- (void) setKioskModeAllowScreenRotation: (BOOL) val
{
    _kioskModeAllowScreenRotation = val;
    self.dictionary[@"kioskModeAllowScreenRotation"] = @(val);
}

- (BOOL) kioskModeAllowSleepButton
{
    _kioskModeAllowSleepButton = [self.dictionary[@"kioskModeAllowSleepButton"] boolValue];
    return _kioskModeAllowSleepButton;
}

- (void) setKioskModeAllowSleepButton: (BOOL) val
{
    _kioskModeAllowSleepButton = val;
    self.dictionary[@"kioskModeAllowSleepButton"] = @(val);
}

- (BOOL) kioskModeAllowTouchscreen
{
    _kioskModeAllowTouchscreen = [self.dictionary[@"kioskModeAllowTouchscreen"] boolValue];
    return _kioskModeAllowTouchscreen;
}

- (void) setKioskModeAllowTouchscreen: (BOOL) val
{
    _kioskModeAllowTouchscreen = val;
    self.dictionary[@"kioskModeAllowTouchscreen"] = @(val);
}

- (BOOL) kioskModeAllowVoiceOverSettings
{
    _kioskModeAllowVoiceOverSettings = [self.dictionary[@"kioskModeAllowVoiceOverSettings"] boolValue];
    return _kioskModeAllowVoiceOverSettings;
}

- (void) setKioskModeAllowVoiceOverSettings: (BOOL) val
{
    _kioskModeAllowVoiceOverSettings = val;
    self.dictionary[@"kioskModeAllowVoiceOverSettings"] = @(val);
}

- (BOOL) kioskModeAllowVolumeButtons
{
    _kioskModeAllowVolumeButtons = [self.dictionary[@"kioskModeAllowVolumeButtons"] boolValue];
    return _kioskModeAllowVolumeButtons;
}

- (void) setKioskModeAllowVolumeButtons: (BOOL) val
{
    _kioskModeAllowVolumeButtons = val;
    self.dictionary[@"kioskModeAllowVolumeButtons"] = @(val);
}

- (BOOL) kioskModeAllowZoomSettings
{
    _kioskModeAllowZoomSettings = [self.dictionary[@"kioskModeAllowZoomSettings"] boolValue];
    return _kioskModeAllowZoomSettings;
}

- (void) setKioskModeAllowZoomSettings: (BOOL) val
{
    _kioskModeAllowZoomSettings = val;
    self.dictionary[@"kioskModeAllowZoomSettings"] = @(val);
}

- (NSString*) kioskModeAppStoreUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"kioskModeAppStoreUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"kioskModeAppStoreUrl"];
}

- (void) setKioskModeAppStoreUrl: (NSString*) val
{
    self.dictionary[@"kioskModeAppStoreUrl"] = val;
}

- (NSString*) kioskModeBuiltInAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"kioskModeBuiltInAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"kioskModeBuiltInAppId"];
}

- (void) setKioskModeBuiltInAppId: (NSString*) val
{
    self.dictionary[@"kioskModeBuiltInAppId"] = val;
}

- (BOOL) kioskModeRequireAssistiveTouch
{
    _kioskModeRequireAssistiveTouch = [self.dictionary[@"kioskModeRequireAssistiveTouch"] boolValue];
    return _kioskModeRequireAssistiveTouch;
}

- (void) setKioskModeRequireAssistiveTouch: (BOOL) val
{
    _kioskModeRequireAssistiveTouch = val;
    self.dictionary[@"kioskModeRequireAssistiveTouch"] = @(val);
}

- (BOOL) kioskModeRequireColorInversion
{
    _kioskModeRequireColorInversion = [self.dictionary[@"kioskModeRequireColorInversion"] boolValue];
    return _kioskModeRequireColorInversion;
}

- (void) setKioskModeRequireColorInversion: (BOOL) val
{
    _kioskModeRequireColorInversion = val;
    self.dictionary[@"kioskModeRequireColorInversion"] = @(val);
}

- (BOOL) kioskModeRequireMonoAudio
{
    _kioskModeRequireMonoAudio = [self.dictionary[@"kioskModeRequireMonoAudio"] boolValue];
    return _kioskModeRequireMonoAudio;
}

- (void) setKioskModeRequireMonoAudio: (BOOL) val
{
    _kioskModeRequireMonoAudio = val;
    self.dictionary[@"kioskModeRequireMonoAudio"] = @(val);
}

- (BOOL) kioskModeRequireVoiceOver
{
    _kioskModeRequireVoiceOver = [self.dictionary[@"kioskModeRequireVoiceOver"] boolValue];
    return _kioskModeRequireVoiceOver;
}

- (void) setKioskModeRequireVoiceOver: (BOOL) val
{
    _kioskModeRequireVoiceOver = val;
    self.dictionary[@"kioskModeRequireVoiceOver"] = @(val);
}

- (BOOL) kioskModeRequireZoom
{
    _kioskModeRequireZoom = [self.dictionary[@"kioskModeRequireZoom"] boolValue];
    return _kioskModeRequireZoom;
}

- (void) setKioskModeRequireZoom: (BOOL) val
{
    _kioskModeRequireZoom = val;
    self.dictionary[@"kioskModeRequireZoom"] = @(val);
}

- (NSString*) kioskModeManagedAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"kioskModeManagedAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"kioskModeManagedAppId"];
}

- (void) setKioskModeManagedAppId: (NSString*) val
{
    self.dictionary[@"kioskModeManagedAppId"] = val;
}

- (BOOL) lockScreenBlockControlCenter
{
    _lockScreenBlockControlCenter = [self.dictionary[@"lockScreenBlockControlCenter"] boolValue];
    return _lockScreenBlockControlCenter;
}

- (void) setLockScreenBlockControlCenter: (BOOL) val
{
    _lockScreenBlockControlCenter = val;
    self.dictionary[@"lockScreenBlockControlCenter"] = @(val);
}

- (BOOL) lockScreenBlockNotificationView
{
    _lockScreenBlockNotificationView = [self.dictionary[@"lockScreenBlockNotificationView"] boolValue];
    return _lockScreenBlockNotificationView;
}

- (void) setLockScreenBlockNotificationView: (BOOL) val
{
    _lockScreenBlockNotificationView = val;
    self.dictionary[@"lockScreenBlockNotificationView"] = @(val);
}

- (BOOL) lockScreenBlockPassbook
{
    _lockScreenBlockPassbook = [self.dictionary[@"lockScreenBlockPassbook"] boolValue];
    return _lockScreenBlockPassbook;
}

- (void) setLockScreenBlockPassbook: (BOOL) val
{
    _lockScreenBlockPassbook = val;
    self.dictionary[@"lockScreenBlockPassbook"] = @(val);
}

- (BOOL) lockScreenBlockTodayView
{
    _lockScreenBlockTodayView = [self.dictionary[@"lockScreenBlockTodayView"] boolValue];
    return _lockScreenBlockTodayView;
}

- (void) setLockScreenBlockTodayView: (BOOL) val
{
    _lockScreenBlockTodayView = val;
    self.dictionary[@"lockScreenBlockTodayView"] = @(val);
}

- (MSGraphMediaContentRatingAustralia*) mediaContentRatingAustralia
{
    if(!_mediaContentRatingAustralia){
        _mediaContentRatingAustralia = [[MSGraphMediaContentRatingAustralia alloc] initWithDictionary: self.dictionary[@"mediaContentRatingAustralia"]];
    }
    return _mediaContentRatingAustralia;
}

- (void) setMediaContentRatingAustralia: (MSGraphMediaContentRatingAustralia*) val
{
    _mediaContentRatingAustralia = val;
    self.dictionary[@"mediaContentRatingAustralia"] = val;
}

- (MSGraphMediaContentRatingCanada*) mediaContentRatingCanada
{
    if(!_mediaContentRatingCanada){
        _mediaContentRatingCanada = [[MSGraphMediaContentRatingCanada alloc] initWithDictionary: self.dictionary[@"mediaContentRatingCanada"]];
    }
    return _mediaContentRatingCanada;
}

- (void) setMediaContentRatingCanada: (MSGraphMediaContentRatingCanada*) val
{
    _mediaContentRatingCanada = val;
    self.dictionary[@"mediaContentRatingCanada"] = val;
}

- (MSGraphMediaContentRatingFrance*) mediaContentRatingFrance
{
    if(!_mediaContentRatingFrance){
        _mediaContentRatingFrance = [[MSGraphMediaContentRatingFrance alloc] initWithDictionary: self.dictionary[@"mediaContentRatingFrance"]];
    }
    return _mediaContentRatingFrance;
}

- (void) setMediaContentRatingFrance: (MSGraphMediaContentRatingFrance*) val
{
    _mediaContentRatingFrance = val;
    self.dictionary[@"mediaContentRatingFrance"] = val;
}

- (MSGraphMediaContentRatingGermany*) mediaContentRatingGermany
{
    if(!_mediaContentRatingGermany){
        _mediaContentRatingGermany = [[MSGraphMediaContentRatingGermany alloc] initWithDictionary: self.dictionary[@"mediaContentRatingGermany"]];
    }
    return _mediaContentRatingGermany;
}

- (void) setMediaContentRatingGermany: (MSGraphMediaContentRatingGermany*) val
{
    _mediaContentRatingGermany = val;
    self.dictionary[@"mediaContentRatingGermany"] = val;
}

- (MSGraphMediaContentRatingIreland*) mediaContentRatingIreland
{
    if(!_mediaContentRatingIreland){
        _mediaContentRatingIreland = [[MSGraphMediaContentRatingIreland alloc] initWithDictionary: self.dictionary[@"mediaContentRatingIreland"]];
    }
    return _mediaContentRatingIreland;
}

- (void) setMediaContentRatingIreland: (MSGraphMediaContentRatingIreland*) val
{
    _mediaContentRatingIreland = val;
    self.dictionary[@"mediaContentRatingIreland"] = val;
}

- (MSGraphMediaContentRatingJapan*) mediaContentRatingJapan
{
    if(!_mediaContentRatingJapan){
        _mediaContentRatingJapan = [[MSGraphMediaContentRatingJapan alloc] initWithDictionary: self.dictionary[@"mediaContentRatingJapan"]];
    }
    return _mediaContentRatingJapan;
}

- (void) setMediaContentRatingJapan: (MSGraphMediaContentRatingJapan*) val
{
    _mediaContentRatingJapan = val;
    self.dictionary[@"mediaContentRatingJapan"] = val;
}

- (MSGraphMediaContentRatingNewZealand*) mediaContentRatingNewZealand
{
    if(!_mediaContentRatingNewZealand){
        _mediaContentRatingNewZealand = [[MSGraphMediaContentRatingNewZealand alloc] initWithDictionary: self.dictionary[@"mediaContentRatingNewZealand"]];
    }
    return _mediaContentRatingNewZealand;
}

- (void) setMediaContentRatingNewZealand: (MSGraphMediaContentRatingNewZealand*) val
{
    _mediaContentRatingNewZealand = val;
    self.dictionary[@"mediaContentRatingNewZealand"] = val;
}

- (MSGraphMediaContentRatingUnitedKingdom*) mediaContentRatingUnitedKingdom
{
    if(!_mediaContentRatingUnitedKingdom){
        _mediaContentRatingUnitedKingdom = [[MSGraphMediaContentRatingUnitedKingdom alloc] initWithDictionary: self.dictionary[@"mediaContentRatingUnitedKingdom"]];
    }
    return _mediaContentRatingUnitedKingdom;
}

- (void) setMediaContentRatingUnitedKingdom: (MSGraphMediaContentRatingUnitedKingdom*) val
{
    _mediaContentRatingUnitedKingdom = val;
    self.dictionary[@"mediaContentRatingUnitedKingdom"] = val;
}

- (MSGraphMediaContentRatingUnitedStates*) mediaContentRatingUnitedStates
{
    if(!_mediaContentRatingUnitedStates){
        _mediaContentRatingUnitedStates = [[MSGraphMediaContentRatingUnitedStates alloc] initWithDictionary: self.dictionary[@"mediaContentRatingUnitedStates"]];
    }
    return _mediaContentRatingUnitedStates;
}

- (void) setMediaContentRatingUnitedStates: (MSGraphMediaContentRatingUnitedStates*) val
{
    _mediaContentRatingUnitedStates = val;
    self.dictionary[@"mediaContentRatingUnitedStates"] = val;
}

- (NSArray*) networkUsageRules
{
    if(!_networkUsageRules){
        
    NSMutableArray *networkUsageRulesResult = [NSMutableArray array];
    NSArray *networkUsageRules = self.dictionary[@"networkUsageRules"];

    if ([networkUsageRules isKindOfClass:[NSArray class]]){
        for (id tempIosNetworkUsageRule in networkUsageRules){
            [networkUsageRulesResult addObject:tempIosNetworkUsageRule];
        }
    }

    _networkUsageRules = networkUsageRulesResult;
        
    }
    return _networkUsageRules;
}

- (void) setNetworkUsageRules: (NSArray*) val
{
    _networkUsageRules = val;
    self.dictionary[@"networkUsageRules"] = val;
}

- (MSGraphRatingAppsType*) mediaContentRatingApps
{
    if(!_mediaContentRatingApps){
        _mediaContentRatingApps = [self.dictionary[@"mediaContentRatingApps"] toMSGraphRatingAppsType];
    }
    return _mediaContentRatingApps;
}

- (void) setMediaContentRatingApps: (MSGraphRatingAppsType*) val
{
    _mediaContentRatingApps = val;
    self.dictionary[@"mediaContentRatingApps"] = val;
}

- (BOOL) messagesBlocked
{
    _messagesBlocked = [self.dictionary[@"messagesBlocked"] boolValue];
    return _messagesBlocked;
}

- (void) setMessagesBlocked: (BOOL) val
{
    _messagesBlocked = val;
    self.dictionary[@"messagesBlocked"] = @(val);
}

- (BOOL) notificationsBlockSettingsModification
{
    _notificationsBlockSettingsModification = [self.dictionary[@"notificationsBlockSettingsModification"] boolValue];
    return _notificationsBlockSettingsModification;
}

- (void) setNotificationsBlockSettingsModification: (BOOL) val
{
    _notificationsBlockSettingsModification = val;
    self.dictionary[@"notificationsBlockSettingsModification"] = @(val);
}

- (BOOL) passcodeBlockFingerprintUnlock
{
    _passcodeBlockFingerprintUnlock = [self.dictionary[@"passcodeBlockFingerprintUnlock"] boolValue];
    return _passcodeBlockFingerprintUnlock;
}

- (void) setPasscodeBlockFingerprintUnlock: (BOOL) val
{
    _passcodeBlockFingerprintUnlock = val;
    self.dictionary[@"passcodeBlockFingerprintUnlock"] = @(val);
}

- (BOOL) passcodeBlockFingerprintModification
{
    _passcodeBlockFingerprintModification = [self.dictionary[@"passcodeBlockFingerprintModification"] boolValue];
    return _passcodeBlockFingerprintModification;
}

- (void) setPasscodeBlockFingerprintModification: (BOOL) val
{
    _passcodeBlockFingerprintModification = val;
    self.dictionary[@"passcodeBlockFingerprintModification"] = @(val);
}

- (BOOL) passcodeBlockModification
{
    _passcodeBlockModification = [self.dictionary[@"passcodeBlockModification"] boolValue];
    return _passcodeBlockModification;
}

- (void) setPasscodeBlockModification: (BOOL) val
{
    _passcodeBlockModification = val;
    self.dictionary[@"passcodeBlockModification"] = @(val);
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

- (int32_t) passcodeMinutesOfInactivityBeforeScreenTimeout
{
    _passcodeMinutesOfInactivityBeforeScreenTimeout = [self.dictionary[@"passcodeMinutesOfInactivityBeforeScreenTimeout"] intValue];
    return _passcodeMinutesOfInactivityBeforeScreenTimeout;
}

- (void) setPasscodeMinutesOfInactivityBeforeScreenTimeout: (int32_t) val
{
    _passcodeMinutesOfInactivityBeforeScreenTimeout = val;
    self.dictionary[@"passcodeMinutesOfInactivityBeforeScreenTimeout"] = @(val);
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

- (int32_t) passcodeSignInFailureCountBeforeWipe
{
    _passcodeSignInFailureCountBeforeWipe = [self.dictionary[@"passcodeSignInFailureCountBeforeWipe"] intValue];
    return _passcodeSignInFailureCountBeforeWipe;
}

- (void) setPasscodeSignInFailureCountBeforeWipe: (int32_t) val
{
    _passcodeSignInFailureCountBeforeWipe = val;
    self.dictionary[@"passcodeSignInFailureCountBeforeWipe"] = @(val);
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

- (BOOL) podcastsBlocked
{
    _podcastsBlocked = [self.dictionary[@"podcastsBlocked"] boolValue];
    return _podcastsBlocked;
}

- (void) setPodcastsBlocked: (BOOL) val
{
    _podcastsBlocked = val;
    self.dictionary[@"podcastsBlocked"] = @(val);
}

- (BOOL) safariBlockAutofill
{
    _safariBlockAutofill = [self.dictionary[@"safariBlockAutofill"] boolValue];
    return _safariBlockAutofill;
}

- (void) setSafariBlockAutofill: (BOOL) val
{
    _safariBlockAutofill = val;
    self.dictionary[@"safariBlockAutofill"] = @(val);
}

- (BOOL) safariBlockJavaScript
{
    _safariBlockJavaScript = [self.dictionary[@"safariBlockJavaScript"] boolValue];
    return _safariBlockJavaScript;
}

- (void) setSafariBlockJavaScript: (BOOL) val
{
    _safariBlockJavaScript = val;
    self.dictionary[@"safariBlockJavaScript"] = @(val);
}

- (BOOL) safariBlockPopups
{
    _safariBlockPopups = [self.dictionary[@"safariBlockPopups"] boolValue];
    return _safariBlockPopups;
}

- (void) setSafariBlockPopups: (BOOL) val
{
    _safariBlockPopups = val;
    self.dictionary[@"safariBlockPopups"] = @(val);
}

- (BOOL) safariBlocked
{
    _safariBlocked = [self.dictionary[@"safariBlocked"] boolValue];
    return _safariBlocked;
}

- (void) setSafariBlocked: (BOOL) val
{
    _safariBlocked = val;
    self.dictionary[@"safariBlocked"] = @(val);
}

- (MSGraphWebBrowserCookieSettings*) safariCookieSettings
{
    if(!_safariCookieSettings){
        _safariCookieSettings = [self.dictionary[@"safariCookieSettings"] toMSGraphWebBrowserCookieSettings];
    }
    return _safariCookieSettings;
}

- (void) setSafariCookieSettings: (MSGraphWebBrowserCookieSettings*) val
{
    _safariCookieSettings = val;
    self.dictionary[@"safariCookieSettings"] = val;
}

- (NSArray*) safariManagedDomains
{
    if([[NSNull null] isEqual:self.dictionary[@"safariManagedDomains"]])
    {
        return nil;
    }   
    return self.dictionary[@"safariManagedDomains"];
}

- (void) setSafariManagedDomains: (NSArray*) val
{
    self.dictionary[@"safariManagedDomains"] = val;
}

- (NSArray*) safariPasswordAutoFillDomains
{
    if([[NSNull null] isEqual:self.dictionary[@"safariPasswordAutoFillDomains"]])
    {
        return nil;
    }   
    return self.dictionary[@"safariPasswordAutoFillDomains"];
}

- (void) setSafariPasswordAutoFillDomains: (NSArray*) val
{
    self.dictionary[@"safariPasswordAutoFillDomains"] = val;
}

- (BOOL) safariRequireFraudWarning
{
    _safariRequireFraudWarning = [self.dictionary[@"safariRequireFraudWarning"] boolValue];
    return _safariRequireFraudWarning;
}

- (void) setSafariRequireFraudWarning: (BOOL) val
{
    _safariRequireFraudWarning = val;
    self.dictionary[@"safariRequireFraudWarning"] = @(val);
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

- (BOOL) siriBlocked
{
    _siriBlocked = [self.dictionary[@"siriBlocked"] boolValue];
    return _siriBlocked;
}

- (void) setSiriBlocked: (BOOL) val
{
    _siriBlocked = val;
    self.dictionary[@"siriBlocked"] = @(val);
}

- (BOOL) siriBlockedWhenLocked
{
    _siriBlockedWhenLocked = [self.dictionary[@"siriBlockedWhenLocked"] boolValue];
    return _siriBlockedWhenLocked;
}

- (void) setSiriBlockedWhenLocked: (BOOL) val
{
    _siriBlockedWhenLocked = val;
    self.dictionary[@"siriBlockedWhenLocked"] = @(val);
}

- (BOOL) siriBlockUserGeneratedContent
{
    _siriBlockUserGeneratedContent = [self.dictionary[@"siriBlockUserGeneratedContent"] boolValue];
    return _siriBlockUserGeneratedContent;
}

- (void) setSiriBlockUserGeneratedContent: (BOOL) val
{
    _siriBlockUserGeneratedContent = val;
    self.dictionary[@"siriBlockUserGeneratedContent"] = @(val);
}

- (BOOL) siriRequireProfanityFilter
{
    _siriRequireProfanityFilter = [self.dictionary[@"siriRequireProfanityFilter"] boolValue];
    return _siriRequireProfanityFilter;
}

- (void) setSiriRequireProfanityFilter: (BOOL) val
{
    _siriRequireProfanityFilter = val;
    self.dictionary[@"siriRequireProfanityFilter"] = @(val);
}

- (BOOL) spotlightBlockInternetResults
{
    _spotlightBlockInternetResults = [self.dictionary[@"spotlightBlockInternetResults"] boolValue];
    return _spotlightBlockInternetResults;
}

- (void) setSpotlightBlockInternetResults: (BOOL) val
{
    _spotlightBlockInternetResults = val;
    self.dictionary[@"spotlightBlockInternetResults"] = @(val);
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

- (BOOL) wallpaperBlockModification
{
    _wallpaperBlockModification = [self.dictionary[@"wallpaperBlockModification"] boolValue];
    return _wallpaperBlockModification;
}

- (void) setWallpaperBlockModification: (BOOL) val
{
    _wallpaperBlockModification = val;
    self.dictionary[@"wallpaperBlockModification"] = @(val);
}

- (BOOL) wiFiConnectOnlyToConfiguredNetworks
{
    _wiFiConnectOnlyToConfiguredNetworks = [self.dictionary[@"wiFiConnectOnlyToConfiguredNetworks"] boolValue];
    return _wiFiConnectOnlyToConfiguredNetworks;
}

- (void) setWiFiConnectOnlyToConfiguredNetworks: (BOOL) val
{
    _wiFiConnectOnlyToConfiguredNetworks = val;
    self.dictionary[@"wiFiConnectOnlyToConfiguredNetworks"] = @(val);
}


@end
