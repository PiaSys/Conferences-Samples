// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDefenderDetectedMalwareActions, MSTimeOfDay, MSGraphWindows10NetworkProxyServer, MSGraphEdgeSearchEngineBase; 
#import "MSGraphDiagnosticDataSubmissionMode.h"
#import "MSGraphEdgeCookiePolicy.h"
#import "MSGraphWeeklySchedule.h"
#import "MSGraphDefenderMonitorFileActivity.h"
#import "MSGraphDefenderPromptForSampleSubmission.h"
#import "MSGraphDefenderScanType.h"
#import "MSGraphDefenderCloudBlockLevelType.h"
#import "MSGraphRequiredPasswordType.h"
#import "MSGraphStateManagementSetting.h"
#import "MSGraphWindowsStartMenuAppListVisibilityType.h"
#import "MSGraphWindowsStartMenuModeType.h"
#import "MSGraphVisibilitySetting.h"
#import "MSGraphWindowsSpotlightEnablementSettings.h"
#import "MSGraphSafeSearchFilterType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows10GeneralConfiguration : MSGraphDeviceConfiguration

  @property (nullable, nonatomic, setter=setEnterpriseCloudPrintDiscoveryEndPoint:, getter=enterpriseCloudPrintDiscoveryEndPoint) NSString* enterpriseCloudPrintDiscoveryEndPoint;
    @property (nullable, nonatomic, setter=setEnterpriseCloudPrintOAuthAuthority:, getter=enterpriseCloudPrintOAuthAuthority) NSString* enterpriseCloudPrintOAuthAuthority;
    @property (nullable, nonatomic, setter=setEnterpriseCloudPrintOAuthClientIdentifier:, getter=enterpriseCloudPrintOAuthClientIdentifier) NSString* enterpriseCloudPrintOAuthClientIdentifier;
    @property (nullable, nonatomic, setter=setEnterpriseCloudPrintResourceIdentifier:, getter=enterpriseCloudPrintResourceIdentifier) NSString* enterpriseCloudPrintResourceIdentifier;
    @property (nonatomic, setter=setEnterpriseCloudPrintDiscoveryMaxLimit:, getter=enterpriseCloudPrintDiscoveryMaxLimit) int32_t enterpriseCloudPrintDiscoveryMaxLimit;
    @property (nullable, nonatomic, setter=setEnterpriseCloudPrintMopriaDiscoveryResourceIdentifier:, getter=enterpriseCloudPrintMopriaDiscoveryResourceIdentifier) NSString* enterpriseCloudPrintMopriaDiscoveryResourceIdentifier;
    @property (nonatomic, setter=setSearchBlockDiacritics:, getter=searchBlockDiacritics) BOOL searchBlockDiacritics;
    @property (nonatomic, setter=setSearchDisableAutoLanguageDetection:, getter=searchDisableAutoLanguageDetection) BOOL searchDisableAutoLanguageDetection;
    @property (nonatomic, setter=setSearchDisableIndexingEncryptedItems:, getter=searchDisableIndexingEncryptedItems) BOOL searchDisableIndexingEncryptedItems;
    @property (nonatomic, setter=setSearchEnableRemoteQueries:, getter=searchEnableRemoteQueries) BOOL searchEnableRemoteQueries;
    @property (nonatomic, setter=setSearchDisableIndexerBackoff:, getter=searchDisableIndexerBackoff) BOOL searchDisableIndexerBackoff;
    @property (nonatomic, setter=setSearchDisableIndexingRemovableDrive:, getter=searchDisableIndexingRemovableDrive) BOOL searchDisableIndexingRemovableDrive;
    @property (nonatomic, setter=setSearchEnableAutomaticIndexSizeManangement:, getter=searchEnableAutomaticIndexSizeManangement) BOOL searchEnableAutomaticIndexSizeManangement;
    @property (nonnull, nonatomic, setter=setDiagnosticsDataSubmissionMode:, getter=diagnosticsDataSubmissionMode) MSGraphDiagnosticDataSubmissionMode* diagnosticsDataSubmissionMode;
    @property (nonatomic, setter=setOneDriveDisableFileSync:, getter=oneDriveDisableFileSync) BOOL oneDriveDisableFileSync;
    @property (nonatomic, setter=setSmartScreenEnableAppInstallControl:, getter=smartScreenEnableAppInstallControl) BOOL smartScreenEnableAppInstallControl;
    @property (nullable, nonatomic, setter=setPersonalizationDesktopImageUrl:, getter=personalizationDesktopImageUrl) NSString* personalizationDesktopImageUrl;
    @property (nullable, nonatomic, setter=setPersonalizationLockScreenImageUrl:, getter=personalizationLockScreenImageUrl) NSString* personalizationLockScreenImageUrl;
    @property (nullable, nonatomic, setter=setBluetoothAllowedServices:, getter=bluetoothAllowedServices) NSArray* bluetoothAllowedServices;
    @property (nonatomic, setter=setBluetoothBlockAdvertising:, getter=bluetoothBlockAdvertising) BOOL bluetoothBlockAdvertising;
    @property (nonatomic, setter=setBluetoothBlockDiscoverableMode:, getter=bluetoothBlockDiscoverableMode) BOOL bluetoothBlockDiscoverableMode;
    @property (nonatomic, setter=setBluetoothBlockPrePairing:, getter=bluetoothBlockPrePairing) BOOL bluetoothBlockPrePairing;
    @property (nonatomic, setter=setEdgeBlockAutofill:, getter=edgeBlockAutofill) BOOL edgeBlockAutofill;
    @property (nonatomic, setter=setEdgeBlocked:, getter=edgeBlocked) BOOL edgeBlocked;
    @property (nonnull, nonatomic, setter=setEdgeCookiePolicy:, getter=edgeCookiePolicy) MSGraphEdgeCookiePolicy* edgeCookiePolicy;
    @property (nonatomic, setter=setEdgeBlockDeveloperTools:, getter=edgeBlockDeveloperTools) BOOL edgeBlockDeveloperTools;
    @property (nonatomic, setter=setEdgeBlockSendingDoNotTrackHeader:, getter=edgeBlockSendingDoNotTrackHeader) BOOL edgeBlockSendingDoNotTrackHeader;
    @property (nonatomic, setter=setEdgeBlockExtensions:, getter=edgeBlockExtensions) BOOL edgeBlockExtensions;
    @property (nonatomic, setter=setEdgeBlockInPrivateBrowsing:, getter=edgeBlockInPrivateBrowsing) BOOL edgeBlockInPrivateBrowsing;
    @property (nonatomic, setter=setEdgeBlockJavaScript:, getter=edgeBlockJavaScript) BOOL edgeBlockJavaScript;
    @property (nonatomic, setter=setEdgeBlockPasswordManager:, getter=edgeBlockPasswordManager) BOOL edgeBlockPasswordManager;
    @property (nonatomic, setter=setEdgeBlockAddressBarDropdown:, getter=edgeBlockAddressBarDropdown) BOOL edgeBlockAddressBarDropdown;
    @property (nonatomic, setter=setEdgeBlockCompatibilityList:, getter=edgeBlockCompatibilityList) BOOL edgeBlockCompatibilityList;
    @property (nonatomic, setter=setEdgeClearBrowsingDataOnExit:, getter=edgeClearBrowsingDataOnExit) BOOL edgeClearBrowsingDataOnExit;
    @property (nonatomic, setter=setEdgeAllowStartPagesModification:, getter=edgeAllowStartPagesModification) BOOL edgeAllowStartPagesModification;
    @property (nonatomic, setter=setEdgeDisableFirstRunPage:, getter=edgeDisableFirstRunPage) BOOL edgeDisableFirstRunPage;
    @property (nonatomic, setter=setEdgeBlockLiveTileDataCollection:, getter=edgeBlockLiveTileDataCollection) BOOL edgeBlockLiveTileDataCollection;
    @property (nonatomic, setter=setEdgeSyncFavoritesWithInternetExplorer:, getter=edgeSyncFavoritesWithInternetExplorer) BOOL edgeSyncFavoritesWithInternetExplorer;
    @property (nonatomic, setter=setCellularBlockDataWhenRoaming:, getter=cellularBlockDataWhenRoaming) BOOL cellularBlockDataWhenRoaming;
    @property (nonatomic, setter=setCellularBlockVpn:, getter=cellularBlockVpn) BOOL cellularBlockVpn;
    @property (nonatomic, setter=setCellularBlockVpnWhenRoaming:, getter=cellularBlockVpnWhenRoaming) BOOL cellularBlockVpnWhenRoaming;
    @property (nonatomic, setter=setDefenderBlockEndUserAccess:, getter=defenderBlockEndUserAccess) BOOL defenderBlockEndUserAccess;
    @property (nonatomic, setter=setDefenderDaysBeforeDeletingQuarantinedMalware:, getter=defenderDaysBeforeDeletingQuarantinedMalware) int32_t defenderDaysBeforeDeletingQuarantinedMalware;
    @property (nullable, nonatomic, setter=setDefenderDetectedMalwareActions:, getter=defenderDetectedMalwareActions) MSGraphDefenderDetectedMalwareActions* defenderDetectedMalwareActions;
    @property (nonnull, nonatomic, setter=setDefenderSystemScanSchedule:, getter=defenderSystemScanSchedule) MSGraphWeeklySchedule* defenderSystemScanSchedule;
    @property (nullable, nonatomic, setter=setDefenderFilesAndFoldersToExclude:, getter=defenderFilesAndFoldersToExclude) NSArray* defenderFilesAndFoldersToExclude;
    @property (nullable, nonatomic, setter=setDefenderFileExtensionsToExclude:, getter=defenderFileExtensionsToExclude) NSArray* defenderFileExtensionsToExclude;
    @property (nonatomic, setter=setDefenderScanMaxCpu:, getter=defenderScanMaxCpu) int32_t defenderScanMaxCpu;
    @property (nonnull, nonatomic, setter=setDefenderMonitorFileActivity:, getter=defenderMonitorFileActivity) MSGraphDefenderMonitorFileActivity* defenderMonitorFileActivity;
    @property (nullable, nonatomic, setter=setDefenderProcessesToExclude:, getter=defenderProcessesToExclude) NSArray* defenderProcessesToExclude;
    @property (nonnull, nonatomic, setter=setDefenderPromptForSampleSubmission:, getter=defenderPromptForSampleSubmission) MSGraphDefenderPromptForSampleSubmission* defenderPromptForSampleSubmission;
    @property (nonatomic, setter=setDefenderRequireBehaviorMonitoring:, getter=defenderRequireBehaviorMonitoring) BOOL defenderRequireBehaviorMonitoring;
    @property (nonatomic, setter=setDefenderRequireCloudProtection:, getter=defenderRequireCloudProtection) BOOL defenderRequireCloudProtection;
    @property (nonatomic, setter=setDefenderRequireNetworkInspectionSystem:, getter=defenderRequireNetworkInspectionSystem) BOOL defenderRequireNetworkInspectionSystem;
    @property (nonatomic, setter=setDefenderRequireRealTimeMonitoring:, getter=defenderRequireRealTimeMonitoring) BOOL defenderRequireRealTimeMonitoring;
    @property (nonatomic, setter=setDefenderScanArchiveFiles:, getter=defenderScanArchiveFiles) BOOL defenderScanArchiveFiles;
    @property (nonatomic, setter=setDefenderScanDownloads:, getter=defenderScanDownloads) BOOL defenderScanDownloads;
    @property (nonatomic, setter=setDefenderScanNetworkFiles:, getter=defenderScanNetworkFiles) BOOL defenderScanNetworkFiles;
    @property (nonatomic, setter=setDefenderScanIncomingMail:, getter=defenderScanIncomingMail) BOOL defenderScanIncomingMail;
    @property (nonatomic, setter=setDefenderScanMappedNetworkDrivesDuringFullScan:, getter=defenderScanMappedNetworkDrivesDuringFullScan) BOOL defenderScanMappedNetworkDrivesDuringFullScan;
    @property (nonatomic, setter=setDefenderScanRemovableDrivesDuringFullScan:, getter=defenderScanRemovableDrivesDuringFullScan) BOOL defenderScanRemovableDrivesDuringFullScan;
    @property (nonatomic, setter=setDefenderScanScriptsLoadedInInternetExplorer:, getter=defenderScanScriptsLoadedInInternetExplorer) BOOL defenderScanScriptsLoadedInInternetExplorer;
    @property (nonatomic, setter=setDefenderSignatureUpdateIntervalInHours:, getter=defenderSignatureUpdateIntervalInHours) int32_t defenderSignatureUpdateIntervalInHours;
    @property (nonnull, nonatomic, setter=setDefenderScanType:, getter=defenderScanType) MSGraphDefenderScanType* defenderScanType;
    @property (nullable, nonatomic, setter=setDefenderScheduledScanTime:, getter=defenderScheduledScanTime) MSTimeOfDay* defenderScheduledScanTime;
    @property (nullable, nonatomic, setter=setDefenderScheduledQuickScanTime:, getter=defenderScheduledQuickScanTime) MSTimeOfDay* defenderScheduledQuickScanTime;
    @property (nonnull, nonatomic, setter=setDefenderCloudBlockLevel:, getter=defenderCloudBlockLevel) MSGraphDefenderCloudBlockLevelType* defenderCloudBlockLevel;
    @property (nonatomic, setter=setLockScreenAllowTimeoutConfiguration:, getter=lockScreenAllowTimeoutConfiguration) BOOL lockScreenAllowTimeoutConfiguration;
    @property (nonatomic, setter=setLockScreenBlockActionCenterNotifications:, getter=lockScreenBlockActionCenterNotifications) BOOL lockScreenBlockActionCenterNotifications;
    @property (nonatomic, setter=setLockScreenBlockCortana:, getter=lockScreenBlockCortana) BOOL lockScreenBlockCortana;
    @property (nonatomic, setter=setLockScreenBlockToastNotifications:, getter=lockScreenBlockToastNotifications) BOOL lockScreenBlockToastNotifications;
    @property (nonatomic, setter=setLockScreenTimeoutInSeconds:, getter=lockScreenTimeoutInSeconds) int32_t lockScreenTimeoutInSeconds;
    @property (nonatomic, setter=setPasswordBlockSimple:, getter=passwordBlockSimple) BOOL passwordBlockSimple;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonatomic, setter=setPasswordRequireWhenResumeFromIdleState:, getter=passwordRequireWhenResumeFromIdleState) BOOL passwordRequireWhenResumeFromIdleState;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setPasswordSignInFailureCountBeforeFactoryReset:, getter=passwordSignInFailureCountBeforeFactoryReset) int32_t passwordSignInFailureCountBeforeFactoryReset;
    @property (nonnull, nonatomic, setter=setPrivacyAdvertisingId:, getter=privacyAdvertisingId) MSGraphStateManagementSetting* privacyAdvertisingId;
    @property (nonatomic, setter=setPrivacyAutoAcceptPairingAndConsentPrompts:, getter=privacyAutoAcceptPairingAndConsentPrompts) BOOL privacyAutoAcceptPairingAndConsentPrompts;
    @property (nonatomic, setter=setPrivacyBlockInputPersonalization:, getter=privacyBlockInputPersonalization) BOOL privacyBlockInputPersonalization;
    @property (nonatomic, setter=setStartBlockUnpinningAppsFromTaskbar:, getter=startBlockUnpinningAppsFromTaskbar) BOOL startBlockUnpinningAppsFromTaskbar;
    @property (nonnull, nonatomic, setter=setStartMenuAppListVisibility:, getter=startMenuAppListVisibility) MSGraphWindowsStartMenuAppListVisibilityType* startMenuAppListVisibility;
    @property (nonatomic, setter=setStartMenuHideChangeAccountSettings:, getter=startMenuHideChangeAccountSettings) BOOL startMenuHideChangeAccountSettings;
    @property (nonatomic, setter=setStartMenuHideFrequentlyUsedApps:, getter=startMenuHideFrequentlyUsedApps) BOOL startMenuHideFrequentlyUsedApps;
    @property (nonatomic, setter=setStartMenuHideHibernate:, getter=startMenuHideHibernate) BOOL startMenuHideHibernate;
    @property (nonatomic, setter=setStartMenuHideLock:, getter=startMenuHideLock) BOOL startMenuHideLock;
    @property (nonatomic, setter=setStartMenuHidePowerButton:, getter=startMenuHidePowerButton) BOOL startMenuHidePowerButton;
    @property (nonatomic, setter=setStartMenuHideRecentJumpLists:, getter=startMenuHideRecentJumpLists) BOOL startMenuHideRecentJumpLists;
    @property (nonatomic, setter=setStartMenuHideRecentlyAddedApps:, getter=startMenuHideRecentlyAddedApps) BOOL startMenuHideRecentlyAddedApps;
    @property (nonatomic, setter=setStartMenuHideRestartOptions:, getter=startMenuHideRestartOptions) BOOL startMenuHideRestartOptions;
    @property (nonatomic, setter=setStartMenuHideShutDown:, getter=startMenuHideShutDown) BOOL startMenuHideShutDown;
    @property (nonatomic, setter=setStartMenuHideSignOut:, getter=startMenuHideSignOut) BOOL startMenuHideSignOut;
    @property (nonatomic, setter=setStartMenuHideSleep:, getter=startMenuHideSleep) BOOL startMenuHideSleep;
    @property (nonatomic, setter=setStartMenuHideSwitchAccount:, getter=startMenuHideSwitchAccount) BOOL startMenuHideSwitchAccount;
    @property (nonatomic, setter=setStartMenuHideUserTile:, getter=startMenuHideUserTile) BOOL startMenuHideUserTile;
    @property (nullable, nonatomic, setter=setStartMenuLayoutEdgeAssetsXml:, getter=startMenuLayoutEdgeAssetsXml) NSString* startMenuLayoutEdgeAssetsXml;
    @property (nullable, nonatomic, setter=setStartMenuLayoutXml:, getter=startMenuLayoutXml) NSString* startMenuLayoutXml;
    @property (nonnull, nonatomic, setter=setStartMenuMode:, getter=startMenuMode) MSGraphWindowsStartMenuModeType* startMenuMode;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderDocuments:, getter=startMenuPinnedFolderDocuments) MSGraphVisibilitySetting* startMenuPinnedFolderDocuments;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderDownloads:, getter=startMenuPinnedFolderDownloads) MSGraphVisibilitySetting* startMenuPinnedFolderDownloads;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderFileExplorer:, getter=startMenuPinnedFolderFileExplorer) MSGraphVisibilitySetting* startMenuPinnedFolderFileExplorer;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderHomeGroup:, getter=startMenuPinnedFolderHomeGroup) MSGraphVisibilitySetting* startMenuPinnedFolderHomeGroup;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderMusic:, getter=startMenuPinnedFolderMusic) MSGraphVisibilitySetting* startMenuPinnedFolderMusic;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderNetwork:, getter=startMenuPinnedFolderNetwork) MSGraphVisibilitySetting* startMenuPinnedFolderNetwork;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderPersonalFolder:, getter=startMenuPinnedFolderPersonalFolder) MSGraphVisibilitySetting* startMenuPinnedFolderPersonalFolder;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderPictures:, getter=startMenuPinnedFolderPictures) MSGraphVisibilitySetting* startMenuPinnedFolderPictures;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderSettings:, getter=startMenuPinnedFolderSettings) MSGraphVisibilitySetting* startMenuPinnedFolderSettings;
    @property (nonnull, nonatomic, setter=setStartMenuPinnedFolderVideos:, getter=startMenuPinnedFolderVideos) MSGraphVisibilitySetting* startMenuPinnedFolderVideos;
    @property (nonatomic, setter=setSettingsBlockSettingsApp:, getter=settingsBlockSettingsApp) BOOL settingsBlockSettingsApp;
    @property (nonatomic, setter=setSettingsBlockSystemPage:, getter=settingsBlockSystemPage) BOOL settingsBlockSystemPage;
    @property (nonatomic, setter=setSettingsBlockDevicesPage:, getter=settingsBlockDevicesPage) BOOL settingsBlockDevicesPage;
    @property (nonatomic, setter=setSettingsBlockNetworkInternetPage:, getter=settingsBlockNetworkInternetPage) BOOL settingsBlockNetworkInternetPage;
    @property (nonatomic, setter=setSettingsBlockPersonalizationPage:, getter=settingsBlockPersonalizationPage) BOOL settingsBlockPersonalizationPage;
    @property (nonatomic, setter=setSettingsBlockAccountsPage:, getter=settingsBlockAccountsPage) BOOL settingsBlockAccountsPage;
    @property (nonatomic, setter=setSettingsBlockTimeLanguagePage:, getter=settingsBlockTimeLanguagePage) BOOL settingsBlockTimeLanguagePage;
    @property (nonatomic, setter=setSettingsBlockEaseOfAccessPage:, getter=settingsBlockEaseOfAccessPage) BOOL settingsBlockEaseOfAccessPage;
    @property (nonatomic, setter=setSettingsBlockPrivacyPage:, getter=settingsBlockPrivacyPage) BOOL settingsBlockPrivacyPage;
    @property (nonatomic, setter=setSettingsBlockUpdateSecurityPage:, getter=settingsBlockUpdateSecurityPage) BOOL settingsBlockUpdateSecurityPage;
    @property (nonatomic, setter=setSettingsBlockAppsPage:, getter=settingsBlockAppsPage) BOOL settingsBlockAppsPage;
    @property (nonatomic, setter=setSettingsBlockGamingPage:, getter=settingsBlockGamingPage) BOOL settingsBlockGamingPage;
    @property (nonatomic, setter=setWindowsSpotlightBlockConsumerSpecificFeatures:, getter=windowsSpotlightBlockConsumerSpecificFeatures) BOOL windowsSpotlightBlockConsumerSpecificFeatures;
    @property (nonatomic, setter=setWindowsSpotlightBlocked:, getter=windowsSpotlightBlocked) BOOL windowsSpotlightBlocked;
    @property (nonatomic, setter=setWindowsSpotlightBlockOnActionCenter:, getter=windowsSpotlightBlockOnActionCenter) BOOL windowsSpotlightBlockOnActionCenter;
    @property (nonatomic, setter=setWindowsSpotlightBlockTailoredExperiences:, getter=windowsSpotlightBlockTailoredExperiences) BOOL windowsSpotlightBlockTailoredExperiences;
    @property (nonatomic, setter=setWindowsSpotlightBlockThirdPartyNotifications:, getter=windowsSpotlightBlockThirdPartyNotifications) BOOL windowsSpotlightBlockThirdPartyNotifications;
    @property (nonatomic, setter=setWindowsSpotlightBlockWelcomeExperience:, getter=windowsSpotlightBlockWelcomeExperience) BOOL windowsSpotlightBlockWelcomeExperience;
    @property (nonatomic, setter=setWindowsSpotlightBlockWindowsTips:, getter=windowsSpotlightBlockWindowsTips) BOOL windowsSpotlightBlockWindowsTips;
    @property (nonnull, nonatomic, setter=setWindowsSpotlightConfigureOnLockScreen:, getter=windowsSpotlightConfigureOnLockScreen) MSGraphWindowsSpotlightEnablementSettings* windowsSpotlightConfigureOnLockScreen;
    @property (nonatomic, setter=setNetworkProxyApplySettingsDeviceWide:, getter=networkProxyApplySettingsDeviceWide) BOOL networkProxyApplySettingsDeviceWide;
    @property (nonatomic, setter=setNetworkProxyDisableAutoDetect:, getter=networkProxyDisableAutoDetect) BOOL networkProxyDisableAutoDetect;
    @property (nullable, nonatomic, setter=setNetworkProxyAutomaticConfigurationUrl:, getter=networkProxyAutomaticConfigurationUrl) NSString* networkProxyAutomaticConfigurationUrl;
    @property (nullable, nonatomic, setter=setNetworkProxyServer:, getter=networkProxyServer) MSGraphWindows10NetworkProxyServer* networkProxyServer;
    @property (nonatomic, setter=setAccountsBlockAddingNonMicrosoftAccountEmail:, getter=accountsBlockAddingNonMicrosoftAccountEmail) BOOL accountsBlockAddingNonMicrosoftAccountEmail;
    @property (nonatomic, setter=setAntiTheftModeBlocked:, getter=antiTheftModeBlocked) BOOL antiTheftModeBlocked;
    @property (nonatomic, setter=setBluetoothBlocked:, getter=bluetoothBlocked) BOOL bluetoothBlocked;
    @property (nonatomic, setter=setCameraBlocked:, getter=cameraBlocked) BOOL cameraBlocked;
    @property (nonatomic, setter=setConnectedDevicesServiceBlocked:, getter=connectedDevicesServiceBlocked) BOOL connectedDevicesServiceBlocked;
    @property (nonatomic, setter=setCertificatesBlockManualRootCertificateInstallation:, getter=certificatesBlockManualRootCertificateInstallation) BOOL certificatesBlockManualRootCertificateInstallation;
    @property (nonatomic, setter=setCopyPasteBlocked:, getter=getCopyPasteBlocked) BOOL copyPasteBlocked;
    @property (nonatomic, setter=setCortanaBlocked:, getter=cortanaBlocked) BOOL cortanaBlocked;
    @property (nonatomic, setter=setDeviceManagementBlockFactoryResetOnMobile:, getter=deviceManagementBlockFactoryResetOnMobile) BOOL deviceManagementBlockFactoryResetOnMobile;
    @property (nonatomic, setter=setDeviceManagementBlockManualUnenroll:, getter=deviceManagementBlockManualUnenroll) BOOL deviceManagementBlockManualUnenroll;
    @property (nonnull, nonatomic, setter=setSafeSearchFilter:, getter=safeSearchFilter) MSGraphSafeSearchFilterType* safeSearchFilter;
    @property (nonatomic, setter=setEdgeBlockPopups:, getter=edgeBlockPopups) BOOL edgeBlockPopups;
    @property (nonatomic, setter=setEdgeBlockSearchSuggestions:, getter=edgeBlockSearchSuggestions) BOOL edgeBlockSearchSuggestions;
    @property (nonatomic, setter=setEdgeBlockSendingIntranetTrafficToInternetExplorer:, getter=edgeBlockSendingIntranetTrafficToInternetExplorer) BOOL edgeBlockSendingIntranetTrafficToInternetExplorer;
    @property (nonatomic, setter=setEdgeSendIntranetTrafficToInternetExplorer:, getter=edgeSendIntranetTrafficToInternetExplorer) BOOL edgeSendIntranetTrafficToInternetExplorer;
    @property (nonatomic, setter=setEdgeRequireSmartScreen:, getter=edgeRequireSmartScreen) BOOL edgeRequireSmartScreen;
    @property (nullable, nonatomic, setter=setEdgeEnterpriseModeSiteListLocation:, getter=edgeEnterpriseModeSiteListLocation) NSString* edgeEnterpriseModeSiteListLocation;
    @property (nullable, nonatomic, setter=setEdgeFirstRunUrl:, getter=edgeFirstRunUrl) NSString* edgeFirstRunUrl;
    @property (nullable, nonatomic, setter=setEdgeSearchEngine:, getter=edgeSearchEngine) MSGraphEdgeSearchEngineBase* edgeSearchEngine;
    @property (nullable, nonatomic, setter=setEdgeHomepageUrls:, getter=edgeHomepageUrls) NSArray* edgeHomepageUrls;
    @property (nonatomic, setter=setEdgeBlockAccessToAboutFlags:, getter=edgeBlockAccessToAboutFlags) BOOL edgeBlockAccessToAboutFlags;
    @property (nonatomic, setter=setSmartScreenBlockPromptOverride:, getter=smartScreenBlockPromptOverride) BOOL smartScreenBlockPromptOverride;
    @property (nonatomic, setter=setSmartScreenBlockPromptOverrideForFiles:, getter=smartScreenBlockPromptOverrideForFiles) BOOL smartScreenBlockPromptOverrideForFiles;
    @property (nonatomic, setter=setWebRtcBlockLocalhostIpAddress:, getter=webRtcBlockLocalhostIpAddress) BOOL webRtcBlockLocalhostIpAddress;
    @property (nonatomic, setter=setInternetSharingBlocked:, getter=internetSharingBlocked) BOOL internetSharingBlocked;
    @property (nonatomic, setter=setSettingsBlockAddProvisioningPackage:, getter=settingsBlockAddProvisioningPackage) BOOL settingsBlockAddProvisioningPackage;
    @property (nonatomic, setter=setSettingsBlockRemoveProvisioningPackage:, getter=settingsBlockRemoveProvisioningPackage) BOOL settingsBlockRemoveProvisioningPackage;
    @property (nonatomic, setter=setSettingsBlockChangeSystemTime:, getter=settingsBlockChangeSystemTime) BOOL settingsBlockChangeSystemTime;
    @property (nonatomic, setter=setSettingsBlockEditDeviceName:, getter=settingsBlockEditDeviceName) BOOL settingsBlockEditDeviceName;
    @property (nonatomic, setter=setSettingsBlockChangeRegion:, getter=settingsBlockChangeRegion) BOOL settingsBlockChangeRegion;
    @property (nonatomic, setter=setSettingsBlockChangeLanguage:, getter=settingsBlockChangeLanguage) BOOL settingsBlockChangeLanguage;
    @property (nonatomic, setter=setSettingsBlockChangePowerSleep:, getter=settingsBlockChangePowerSleep) BOOL settingsBlockChangePowerSleep;
    @property (nonatomic, setter=setLocationServicesBlocked:, getter=locationServicesBlocked) BOOL locationServicesBlocked;
    @property (nonatomic, setter=setMicrosoftAccountBlocked:, getter=microsoftAccountBlocked) BOOL microsoftAccountBlocked;
    @property (nonatomic, setter=setMicrosoftAccountBlockSettingsSync:, getter=microsoftAccountBlockSettingsSync) BOOL microsoftAccountBlockSettingsSync;
    @property (nonatomic, setter=setNfcBlocked:, getter=nfcBlocked) BOOL nfcBlocked;
    @property (nonatomic, setter=setResetProtectionModeBlocked:, getter=resetProtectionModeBlocked) BOOL resetProtectionModeBlocked;
    @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setStorageBlockRemovableStorage:, getter=storageBlockRemovableStorage) BOOL storageBlockRemovableStorage;
    @property (nonatomic, setter=setStorageRequireMobileDeviceEncryption:, getter=storageRequireMobileDeviceEncryption) BOOL storageRequireMobileDeviceEncryption;
    @property (nonatomic, setter=setUsbBlocked:, getter=usbBlocked) BOOL usbBlocked;
    @property (nonatomic, setter=setVoiceRecordingBlocked:, getter=voiceRecordingBlocked) BOOL voiceRecordingBlocked;
    @property (nonatomic, setter=setWiFiBlockAutomaticConnectHotspots:, getter=wiFiBlockAutomaticConnectHotspots) BOOL wiFiBlockAutomaticConnectHotspots;
    @property (nonatomic, setter=setWiFiBlocked:, getter=wiFiBlocked) BOOL wiFiBlocked;
    @property (nonatomic, setter=setWiFiBlockManualConfiguration:, getter=wiFiBlockManualConfiguration) BOOL wiFiBlockManualConfiguration;
    @property (nonatomic, setter=setWiFiScanInterval:, getter=wiFiScanInterval) int32_t wiFiScanInterval;
    @property (nonatomic, setter=setWirelessDisplayBlockProjectionToThisDevice:, getter=wirelessDisplayBlockProjectionToThisDevice) BOOL wirelessDisplayBlockProjectionToThisDevice;
    @property (nonatomic, setter=setWirelessDisplayBlockUserInputFromReceiver:, getter=wirelessDisplayBlockUserInputFromReceiver) BOOL wirelessDisplayBlockUserInputFromReceiver;
    @property (nonatomic, setter=setWirelessDisplayRequirePinForPairing:, getter=wirelessDisplayRequirePinForPairing) BOOL wirelessDisplayRequirePinForPairing;
    @property (nonatomic, setter=setWindowsStoreBlocked:, getter=windowsStoreBlocked) BOOL windowsStoreBlocked;
    @property (nonnull, nonatomic, setter=setAppsAllowTrustedAppsSideloading:, getter=appsAllowTrustedAppsSideloading) MSGraphStateManagementSetting* appsAllowTrustedAppsSideloading;
    @property (nonatomic, setter=setWindowsStoreBlockAutoUpdate:, getter=windowsStoreBlockAutoUpdate) BOOL windowsStoreBlockAutoUpdate;
    @property (nonnull, nonatomic, setter=setDeveloperUnlockSetting:, getter=developerUnlockSetting) MSGraphStateManagementSetting* developerUnlockSetting;
    @property (nonatomic, setter=setSharedUserAppDataAllowed:, getter=sharedUserAppDataAllowed) BOOL sharedUserAppDataAllowed;
    @property (nonatomic, setter=setAppsBlockWindowsStoreOriginatedApps:, getter=appsBlockWindowsStoreOriginatedApps) BOOL appsBlockWindowsStoreOriginatedApps;
    @property (nonatomic, setter=setWindowsStoreEnablePrivateStoreOnly:, getter=windowsStoreEnablePrivateStoreOnly) BOOL windowsStoreEnablePrivateStoreOnly;
    @property (nonatomic, setter=setStorageRestrictAppDataToSystemVolume:, getter=storageRestrictAppDataToSystemVolume) BOOL storageRestrictAppDataToSystemVolume;
    @property (nonatomic, setter=setStorageRestrictAppInstallToSystemVolume:, getter=storageRestrictAppInstallToSystemVolume) BOOL storageRestrictAppInstallToSystemVolume;
    @property (nonatomic, setter=setGameDvrBlocked:, getter=gameDvrBlocked) BOOL gameDvrBlocked;
    @property (nonatomic, setter=setExperienceBlockDeviceDiscovery:, getter=experienceBlockDeviceDiscovery) BOOL experienceBlockDeviceDiscovery;
    @property (nonatomic, setter=setExperienceBlockErrorDialogWhenNoSIM:, getter=experienceBlockErrorDialogWhenNoSIM) BOOL experienceBlockErrorDialogWhenNoSIM;
    @property (nonatomic, setter=setExperienceBlockTaskSwitcher:, getter=experienceBlockTaskSwitcher) BOOL experienceBlockTaskSwitcher;
    @property (nonatomic, setter=setLogonBlockFastUserSwitching:, getter=logonBlockFastUserSwitching) BOOL logonBlockFastUserSwitching;
    @property (nonatomic, setter=setTenantLockdownRequireNetworkDuringOutOfBoxExperience:, getter=tenantLockdownRequireNetworkDuringOutOfBoxExperience) BOOL tenantLockdownRequireNetworkDuringOutOfBoxExperience;
  
@end
