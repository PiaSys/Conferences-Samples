// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppListItem, MSGraphMediaContentRatingAustralia, MSGraphMediaContentRatingCanada, MSGraphMediaContentRatingFrance, MSGraphMediaContentRatingGermany, MSGraphMediaContentRatingIreland, MSGraphMediaContentRatingJapan, MSGraphMediaContentRatingNewZealand, MSGraphMediaContentRatingUnitedKingdom, MSGraphMediaContentRatingUnitedStates, MSGraphIosNetworkUsageRule; 
#import "MSGraphAppListType.h"
#import "MSGraphRatingAppsType.h"
#import "MSGraphRequiredPasswordType.h"
#import "MSGraphWebBrowserCookieSettings.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphIosGeneralDeviceConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAccountBlockModification:, getter=accountBlockModification) BOOL accountBlockModification;
    @property (nonatomic, setter=setActivationLockAllowWhenSupervised:, getter=activationLockAllowWhenSupervised) BOOL activationLockAllowWhenSupervised;
    @property (nonatomic, setter=setAirDropBlocked:, getter=airDropBlocked) BOOL airDropBlocked;
    @property (nonatomic, setter=setAirDropForceUnmanagedDropTarget:, getter=airDropForceUnmanagedDropTarget) BOOL airDropForceUnmanagedDropTarget;
    @property (nonatomic, setter=setAirPlayForcePairingPasswordForOutgoingRequests:, getter=airPlayForcePairingPasswordForOutgoingRequests) BOOL airPlayForcePairingPasswordForOutgoingRequests;
    @property (nonatomic, setter=setAppleWatchBlockPairing:, getter=appleWatchBlockPairing) BOOL appleWatchBlockPairing;
    @property (nonatomic, setter=setAppleWatchForceWristDetection:, getter=appleWatchForceWristDetection) BOOL appleWatchForceWristDetection;
    @property (nonatomic, setter=setAppleNewsBlocked:, getter=appleNewsBlocked) BOOL appleNewsBlocked;
    @property (nullable, nonatomic, setter=setAppsSingleAppModeList:, getter=appsSingleAppModeList) NSArray* appsSingleAppModeList;
    @property (nullable, nonatomic, setter=setAppsVisibilityList:, getter=appsVisibilityList) NSArray* appsVisibilityList;
    @property (nonnull, nonatomic, setter=setAppsVisibilityListType:, getter=appsVisibilityListType) MSGraphAppListType* appsVisibilityListType;
    @property (nonatomic, setter=setAppStoreBlockAutomaticDownloads:, getter=appStoreBlockAutomaticDownloads) BOOL appStoreBlockAutomaticDownloads;
    @property (nonatomic, setter=setAppStoreBlocked:, getter=appStoreBlocked) BOOL appStoreBlocked;
    @property (nonatomic, setter=setAppStoreBlockInAppPurchases:, getter=appStoreBlockInAppPurchases) BOOL appStoreBlockInAppPurchases;
    @property (nonatomic, setter=setAppStoreBlockUIAppInstallation:, getter=appStoreBlockUIAppInstallation) BOOL appStoreBlockUIAppInstallation;
    @property (nonatomic, setter=setAppStoreRequirePassword:, getter=appStoreRequirePassword) BOOL appStoreRequirePassword;
    @property (nonatomic, setter=setBluetoothBlockModification:, getter=bluetoothBlockModification) BOOL bluetoothBlockModification;
    @property (nonatomic, setter=setCameraBlocked:, getter=cameraBlocked) BOOL cameraBlocked;
    @property (nonatomic, setter=setCellularBlockDataRoaming:, getter=cellularBlockDataRoaming) BOOL cellularBlockDataRoaming;
    @property (nonatomic, setter=setCellularBlockGlobalBackgroundFetchWhileRoaming:, getter=cellularBlockGlobalBackgroundFetchWhileRoaming) BOOL cellularBlockGlobalBackgroundFetchWhileRoaming;
    @property (nonatomic, setter=setCellularBlockPerAppDataModification:, getter=cellularBlockPerAppDataModification) BOOL cellularBlockPerAppDataModification;
    @property (nonatomic, setter=setCellularBlockPersonalHotspot:, getter=cellularBlockPersonalHotspot) BOOL cellularBlockPersonalHotspot;
    @property (nonatomic, setter=setCellularBlockVoiceRoaming:, getter=cellularBlockVoiceRoaming) BOOL cellularBlockVoiceRoaming;
    @property (nonatomic, setter=setCertificatesBlockUntrustedTlsCertificates:, getter=certificatesBlockUntrustedTlsCertificates) BOOL certificatesBlockUntrustedTlsCertificates;
    @property (nonatomic, setter=setClassroomAppBlockRemoteScreenObservation:, getter=classroomAppBlockRemoteScreenObservation) BOOL classroomAppBlockRemoteScreenObservation;
    @property (nonatomic, setter=setClassroomAppForceUnpromptedScreenObservation:, getter=classroomAppForceUnpromptedScreenObservation) BOOL classroomAppForceUnpromptedScreenObservation;
    @property (nullable, nonatomic, setter=setCompliantAppsList:, getter=compliantAppsList) NSArray* compliantAppsList;
    @property (nonnull, nonatomic, setter=setCompliantAppListType:, getter=compliantAppListType) MSGraphAppListType* compliantAppListType;
    @property (nonatomic, setter=setConfigurationProfileBlockChanges:, getter=configurationProfileBlockChanges) BOOL configurationProfileBlockChanges;
    @property (nonatomic, setter=setDefinitionLookupBlocked:, getter=definitionLookupBlocked) BOOL definitionLookupBlocked;
    @property (nonatomic, setter=setDeviceBlockEnableRestrictions:, getter=deviceBlockEnableRestrictions) BOOL deviceBlockEnableRestrictions;
    @property (nonatomic, setter=setDeviceBlockEraseContentAndSettings:, getter=deviceBlockEraseContentAndSettings) BOOL deviceBlockEraseContentAndSettings;
    @property (nonatomic, setter=setDeviceBlockNameModification:, getter=deviceBlockNameModification) BOOL deviceBlockNameModification;
    @property (nonatomic, setter=setDiagnosticDataBlockSubmission:, getter=diagnosticDataBlockSubmission) BOOL diagnosticDataBlockSubmission;
    @property (nonatomic, setter=setDiagnosticDataBlockSubmissionModification:, getter=diagnosticDataBlockSubmissionModification) BOOL diagnosticDataBlockSubmissionModification;
    @property (nonatomic, setter=setDocumentsBlockManagedDocumentsInUnmanagedApps:, getter=documentsBlockManagedDocumentsInUnmanagedApps) BOOL documentsBlockManagedDocumentsInUnmanagedApps;
    @property (nonatomic, setter=setDocumentsBlockUnmanagedDocumentsInManagedApps:, getter=documentsBlockUnmanagedDocumentsInManagedApps) BOOL documentsBlockUnmanagedDocumentsInManagedApps;
    @property (nullable, nonatomic, setter=setEmailInDomainSuffixes:, getter=emailInDomainSuffixes) NSArray* emailInDomainSuffixes;
    @property (nonatomic, setter=setEnterpriseAppBlockTrust:, getter=enterpriseAppBlockTrust) BOOL enterpriseAppBlockTrust;
    @property (nonatomic, setter=setEnterpriseAppBlockTrustModification:, getter=enterpriseAppBlockTrustModification) BOOL enterpriseAppBlockTrustModification;
    @property (nonatomic, setter=setFaceTimeBlocked:, getter=faceTimeBlocked) BOOL faceTimeBlocked;
    @property (nonatomic, setter=setFindMyFriendsBlocked:, getter=findMyFriendsBlocked) BOOL findMyFriendsBlocked;
    @property (nonatomic, setter=setGamingBlockGameCenterFriends:, getter=gamingBlockGameCenterFriends) BOOL gamingBlockGameCenterFriends;
    @property (nonatomic, setter=setGamingBlockMultiplayer:, getter=gamingBlockMultiplayer) BOOL gamingBlockMultiplayer;
    @property (nonatomic, setter=setGameCenterBlocked:, getter=gameCenterBlocked) BOOL gameCenterBlocked;
    @property (nonatomic, setter=setHostPairingBlocked:, getter=hostPairingBlocked) BOOL hostPairingBlocked;
    @property (nonatomic, setter=setIBooksStoreBlocked:, getter=iBooksStoreBlocked) BOOL iBooksStoreBlocked;
    @property (nonatomic, setter=setIBooksStoreBlockErotica:, getter=iBooksStoreBlockErotica) BOOL iBooksStoreBlockErotica;
    @property (nonatomic, setter=setICloudBlockActivityContinuation:, getter=iCloudBlockActivityContinuation) BOOL iCloudBlockActivityContinuation;
    @property (nonatomic, setter=setICloudBlockBackup:, getter=iCloudBlockBackup) BOOL iCloudBlockBackup;
    @property (nonatomic, setter=setICloudBlockDocumentSync:, getter=iCloudBlockDocumentSync) BOOL iCloudBlockDocumentSync;
    @property (nonatomic, setter=setICloudBlockManagedAppsSync:, getter=iCloudBlockManagedAppsSync) BOOL iCloudBlockManagedAppsSync;
    @property (nonatomic, setter=setICloudBlockPhotoLibrary:, getter=iCloudBlockPhotoLibrary) BOOL iCloudBlockPhotoLibrary;
    @property (nonatomic, setter=setICloudBlockPhotoStreamSync:, getter=iCloudBlockPhotoStreamSync) BOOL iCloudBlockPhotoStreamSync;
    @property (nonatomic, setter=setICloudBlockSharedPhotoStream:, getter=iCloudBlockSharedPhotoStream) BOOL iCloudBlockSharedPhotoStream;
    @property (nonatomic, setter=setICloudRequireEncryptedBackup:, getter=iCloudRequireEncryptedBackup) BOOL iCloudRequireEncryptedBackup;
    @property (nonatomic, setter=setITunesBlockExplicitContent:, getter=iTunesBlockExplicitContent) BOOL iTunesBlockExplicitContent;
    @property (nonatomic, setter=setITunesBlockMusicService:, getter=iTunesBlockMusicService) BOOL iTunesBlockMusicService;
    @property (nonatomic, setter=setITunesBlockRadio:, getter=iTunesBlockRadio) BOOL iTunesBlockRadio;
    @property (nonatomic, setter=setKeyboardBlockAutoCorrect:, getter=keyboardBlockAutoCorrect) BOOL keyboardBlockAutoCorrect;
    @property (nonatomic, setter=setKeyboardBlockDictation:, getter=keyboardBlockDictation) BOOL keyboardBlockDictation;
    @property (nonatomic, setter=setKeyboardBlockPredictive:, getter=keyboardBlockPredictive) BOOL keyboardBlockPredictive;
    @property (nonatomic, setter=setKeyboardBlockShortcuts:, getter=keyboardBlockShortcuts) BOOL keyboardBlockShortcuts;
    @property (nonatomic, setter=setKeyboardBlockSpellCheck:, getter=keyboardBlockSpellCheck) BOOL keyboardBlockSpellCheck;
    @property (nonatomic, setter=setKioskModeAllowAssistiveSpeak:, getter=kioskModeAllowAssistiveSpeak) BOOL kioskModeAllowAssistiveSpeak;
    @property (nonatomic, setter=setKioskModeAllowAssistiveTouchSettings:, getter=kioskModeAllowAssistiveTouchSettings) BOOL kioskModeAllowAssistiveTouchSettings;
    @property (nonatomic, setter=setKioskModeAllowAutoLock:, getter=kioskModeAllowAutoLock) BOOL kioskModeAllowAutoLock;
    @property (nonatomic, setter=setKioskModeAllowColorInversionSettings:, getter=kioskModeAllowColorInversionSettings) BOOL kioskModeAllowColorInversionSettings;
    @property (nonatomic, setter=setKioskModeAllowRingerSwitch:, getter=kioskModeAllowRingerSwitch) BOOL kioskModeAllowRingerSwitch;
    @property (nonatomic, setter=setKioskModeAllowScreenRotation:, getter=kioskModeAllowScreenRotation) BOOL kioskModeAllowScreenRotation;
    @property (nonatomic, setter=setKioskModeAllowSleepButton:, getter=kioskModeAllowSleepButton) BOOL kioskModeAllowSleepButton;
    @property (nonatomic, setter=setKioskModeAllowTouchscreen:, getter=kioskModeAllowTouchscreen) BOOL kioskModeAllowTouchscreen;
    @property (nonatomic, setter=setKioskModeAllowVoiceOverSettings:, getter=kioskModeAllowVoiceOverSettings) BOOL kioskModeAllowVoiceOverSettings;
    @property (nonatomic, setter=setKioskModeAllowVolumeButtons:, getter=kioskModeAllowVolumeButtons) BOOL kioskModeAllowVolumeButtons;
    @property (nonatomic, setter=setKioskModeAllowZoomSettings:, getter=kioskModeAllowZoomSettings) BOOL kioskModeAllowZoomSettings;
    @property (nullable, nonatomic, setter=setKioskModeAppStoreUrl:, getter=kioskModeAppStoreUrl) NSString* kioskModeAppStoreUrl;
    @property (nullable, nonatomic, setter=setKioskModeBuiltInAppId:, getter=kioskModeBuiltInAppId) NSString* kioskModeBuiltInAppId;
    @property (nonatomic, setter=setKioskModeRequireAssistiveTouch:, getter=kioskModeRequireAssistiveTouch) BOOL kioskModeRequireAssistiveTouch;
    @property (nonatomic, setter=setKioskModeRequireColorInversion:, getter=kioskModeRequireColorInversion) BOOL kioskModeRequireColorInversion;
    @property (nonatomic, setter=setKioskModeRequireMonoAudio:, getter=kioskModeRequireMonoAudio) BOOL kioskModeRequireMonoAudio;
    @property (nonatomic, setter=setKioskModeRequireVoiceOver:, getter=kioskModeRequireVoiceOver) BOOL kioskModeRequireVoiceOver;
    @property (nonatomic, setter=setKioskModeRequireZoom:, getter=kioskModeRequireZoom) BOOL kioskModeRequireZoom;
    @property (nullable, nonatomic, setter=setKioskModeManagedAppId:, getter=kioskModeManagedAppId) NSString* kioskModeManagedAppId;
    @property (nonatomic, setter=setLockScreenBlockControlCenter:, getter=lockScreenBlockControlCenter) BOOL lockScreenBlockControlCenter;
    @property (nonatomic, setter=setLockScreenBlockNotificationView:, getter=lockScreenBlockNotificationView) BOOL lockScreenBlockNotificationView;
    @property (nonatomic, setter=setLockScreenBlockPassbook:, getter=lockScreenBlockPassbook) BOOL lockScreenBlockPassbook;
    @property (nonatomic, setter=setLockScreenBlockTodayView:, getter=lockScreenBlockTodayView) BOOL lockScreenBlockTodayView;
    @property (nullable, nonatomic, setter=setMediaContentRatingAustralia:, getter=mediaContentRatingAustralia) MSGraphMediaContentRatingAustralia* mediaContentRatingAustralia;
    @property (nullable, nonatomic, setter=setMediaContentRatingCanada:, getter=mediaContentRatingCanada) MSGraphMediaContentRatingCanada* mediaContentRatingCanada;
    @property (nullable, nonatomic, setter=setMediaContentRatingFrance:, getter=mediaContentRatingFrance) MSGraphMediaContentRatingFrance* mediaContentRatingFrance;
    @property (nullable, nonatomic, setter=setMediaContentRatingGermany:, getter=mediaContentRatingGermany) MSGraphMediaContentRatingGermany* mediaContentRatingGermany;
    @property (nullable, nonatomic, setter=setMediaContentRatingIreland:, getter=mediaContentRatingIreland) MSGraphMediaContentRatingIreland* mediaContentRatingIreland;
    @property (nullable, nonatomic, setter=setMediaContentRatingJapan:, getter=mediaContentRatingJapan) MSGraphMediaContentRatingJapan* mediaContentRatingJapan;
    @property (nullable, nonatomic, setter=setMediaContentRatingNewZealand:, getter=mediaContentRatingNewZealand) MSGraphMediaContentRatingNewZealand* mediaContentRatingNewZealand;
    @property (nullable, nonatomic, setter=setMediaContentRatingUnitedKingdom:, getter=mediaContentRatingUnitedKingdom) MSGraphMediaContentRatingUnitedKingdom* mediaContentRatingUnitedKingdom;
    @property (nullable, nonatomic, setter=setMediaContentRatingUnitedStates:, getter=mediaContentRatingUnitedStates) MSGraphMediaContentRatingUnitedStates* mediaContentRatingUnitedStates;
    @property (nullable, nonatomic, setter=setNetworkUsageRules:, getter=networkUsageRules) NSArray* networkUsageRules;
    @property (nonnull, nonatomic, setter=setMediaContentRatingApps:, getter=mediaContentRatingApps) MSGraphRatingAppsType* mediaContentRatingApps;
    @property (nonatomic, setter=setMessagesBlocked:, getter=messagesBlocked) BOOL messagesBlocked;
    @property (nonatomic, setter=setNotificationsBlockSettingsModification:, getter=notificationsBlockSettingsModification) BOOL notificationsBlockSettingsModification;
    @property (nonatomic, setter=setPasscodeBlockFingerprintUnlock:, getter=passcodeBlockFingerprintUnlock) BOOL passcodeBlockFingerprintUnlock;
    @property (nonatomic, setter=setPasscodeBlockFingerprintModification:, getter=passcodeBlockFingerprintModification) BOOL passcodeBlockFingerprintModification;
    @property (nonatomic, setter=setPasscodeBlockModification:, getter=passcodeBlockModification) BOOL passcodeBlockModification;
    @property (nonatomic, setter=setPasscodeBlockSimple:, getter=passcodeBlockSimple) BOOL passcodeBlockSimple;
    @property (nonatomic, setter=setPasscodeExpirationDays:, getter=passcodeExpirationDays) int32_t passcodeExpirationDays;
    @property (nonatomic, setter=setPasscodeMinimumLength:, getter=passcodeMinimumLength) int32_t passcodeMinimumLength;
    @property (nonatomic, setter=setPasscodeMinutesOfInactivityBeforeLock:, getter=passcodeMinutesOfInactivityBeforeLock) int32_t passcodeMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasscodeMinutesOfInactivityBeforeScreenTimeout:, getter=passcodeMinutesOfInactivityBeforeScreenTimeout) int32_t passcodeMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasscodeMinimumCharacterSetCount:, getter=passcodeMinimumCharacterSetCount) int32_t passcodeMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasscodePreviousPasscodeBlockCount:, getter=passcodePreviousPasscodeBlockCount) int32_t passcodePreviousPasscodeBlockCount;
    @property (nonatomic, setter=setPasscodeSignInFailureCountBeforeWipe:, getter=passcodeSignInFailureCountBeforeWipe) int32_t passcodeSignInFailureCountBeforeWipe;
    @property (nonnull, nonatomic, setter=setPasscodeRequiredType:, getter=passcodeRequiredType) MSGraphRequiredPasswordType* passcodeRequiredType;
    @property (nonatomic, setter=setPasscodeRequired:, getter=passcodeRequired) BOOL passcodeRequired;
    @property (nonatomic, setter=setPodcastsBlocked:, getter=podcastsBlocked) BOOL podcastsBlocked;
    @property (nonatomic, setter=setSafariBlockAutofill:, getter=safariBlockAutofill) BOOL safariBlockAutofill;
    @property (nonatomic, setter=setSafariBlockJavaScript:, getter=safariBlockJavaScript) BOOL safariBlockJavaScript;
    @property (nonatomic, setter=setSafariBlockPopups:, getter=safariBlockPopups) BOOL safariBlockPopups;
    @property (nonatomic, setter=setSafariBlocked:, getter=safariBlocked) BOOL safariBlocked;
    @property (nonnull, nonatomic, setter=setSafariCookieSettings:, getter=safariCookieSettings) MSGraphWebBrowserCookieSettings* safariCookieSettings;
    @property (nullable, nonatomic, setter=setSafariManagedDomains:, getter=safariManagedDomains) NSArray* safariManagedDomains;
    @property (nullable, nonatomic, setter=setSafariPasswordAutoFillDomains:, getter=safariPasswordAutoFillDomains) NSArray* safariPasswordAutoFillDomains;
    @property (nonatomic, setter=setSafariRequireFraudWarning:, getter=safariRequireFraudWarning) BOOL safariRequireFraudWarning;
    @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setSiriBlocked:, getter=siriBlocked) BOOL siriBlocked;
    @property (nonatomic, setter=setSiriBlockedWhenLocked:, getter=siriBlockedWhenLocked) BOOL siriBlockedWhenLocked;
    @property (nonatomic, setter=setSiriBlockUserGeneratedContent:, getter=siriBlockUserGeneratedContent) BOOL siriBlockUserGeneratedContent;
    @property (nonatomic, setter=setSiriRequireProfanityFilter:, getter=siriRequireProfanityFilter) BOOL siriRequireProfanityFilter;
    @property (nonatomic, setter=setSpotlightBlockInternetResults:, getter=spotlightBlockInternetResults) BOOL spotlightBlockInternetResults;
    @property (nonatomic, setter=setVoiceDialingBlocked:, getter=voiceDialingBlocked) BOOL voiceDialingBlocked;
    @property (nonatomic, setter=setWallpaperBlockModification:, getter=wallpaperBlockModification) BOOL wallpaperBlockModification;
    @property (nonatomic, setter=setWiFiConnectOnlyToConfiguredNetworks:, getter=wiFiConnectOnlyToConfiguredNetworks) BOOL wiFiConnectOnlyToConfiguredNetworks;
  
@end
