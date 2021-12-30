// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10GeneralConfiguration()
{
    NSString* _enterpriseCloudPrintDiscoveryEndPoint;
    NSString* _enterpriseCloudPrintOAuthAuthority;
    NSString* _enterpriseCloudPrintOAuthClientIdentifier;
    NSString* _enterpriseCloudPrintResourceIdentifier;
    int32_t _enterpriseCloudPrintDiscoveryMaxLimit;
    NSString* _enterpriseCloudPrintMopriaDiscoveryResourceIdentifier;
    BOOL _searchBlockDiacritics;
    BOOL _searchDisableAutoLanguageDetection;
    BOOL _searchDisableIndexingEncryptedItems;
    BOOL _searchEnableRemoteQueries;
    BOOL _searchDisableIndexerBackoff;
    BOOL _searchDisableIndexingRemovableDrive;
    BOOL _searchEnableAutomaticIndexSizeManangement;
    MSGraphDiagnosticDataSubmissionMode* _diagnosticsDataSubmissionMode;
    BOOL _oneDriveDisableFileSync;
    BOOL _smartScreenEnableAppInstallControl;
    NSString* _personalizationDesktopImageUrl;
    NSString* _personalizationLockScreenImageUrl;
    NSArray* _bluetoothAllowedServices;
    BOOL _bluetoothBlockAdvertising;
    BOOL _bluetoothBlockDiscoverableMode;
    BOOL _bluetoothBlockPrePairing;
    BOOL _edgeBlockAutofill;
    BOOL _edgeBlocked;
    MSGraphEdgeCookiePolicy* _edgeCookiePolicy;
    BOOL _edgeBlockDeveloperTools;
    BOOL _edgeBlockSendingDoNotTrackHeader;
    BOOL _edgeBlockExtensions;
    BOOL _edgeBlockInPrivateBrowsing;
    BOOL _edgeBlockJavaScript;
    BOOL _edgeBlockPasswordManager;
    BOOL _edgeBlockAddressBarDropdown;
    BOOL _edgeBlockCompatibilityList;
    BOOL _edgeClearBrowsingDataOnExit;
    BOOL _edgeAllowStartPagesModification;
    BOOL _edgeDisableFirstRunPage;
    BOOL _edgeBlockLiveTileDataCollection;
    BOOL _edgeSyncFavoritesWithInternetExplorer;
    BOOL _cellularBlockDataWhenRoaming;
    BOOL _cellularBlockVpn;
    BOOL _cellularBlockVpnWhenRoaming;
    BOOL _defenderBlockEndUserAccess;
    int32_t _defenderDaysBeforeDeletingQuarantinedMalware;
    MSGraphDefenderDetectedMalwareActions* _defenderDetectedMalwareActions;
    MSGraphWeeklySchedule* _defenderSystemScanSchedule;
    NSArray* _defenderFilesAndFoldersToExclude;
    NSArray* _defenderFileExtensionsToExclude;
    int32_t _defenderScanMaxCpu;
    MSGraphDefenderMonitorFileActivity* _defenderMonitorFileActivity;
    NSArray* _defenderProcessesToExclude;
    MSGraphDefenderPromptForSampleSubmission* _defenderPromptForSampleSubmission;
    BOOL _defenderRequireBehaviorMonitoring;
    BOOL _defenderRequireCloudProtection;
    BOOL _defenderRequireNetworkInspectionSystem;
    BOOL _defenderRequireRealTimeMonitoring;
    BOOL _defenderScanArchiveFiles;
    BOOL _defenderScanDownloads;
    BOOL _defenderScanNetworkFiles;
    BOOL _defenderScanIncomingMail;
    BOOL _defenderScanMappedNetworkDrivesDuringFullScan;
    BOOL _defenderScanRemovableDrivesDuringFullScan;
    BOOL _defenderScanScriptsLoadedInInternetExplorer;
    int32_t _defenderSignatureUpdateIntervalInHours;
    MSGraphDefenderScanType* _defenderScanType;
    MSTimeOfDay* _defenderScheduledScanTime;
    MSTimeOfDay* _defenderScheduledQuickScanTime;
    MSGraphDefenderCloudBlockLevelType* _defenderCloudBlockLevel;
    BOOL _lockScreenAllowTimeoutConfiguration;
    BOOL _lockScreenBlockActionCenterNotifications;
    BOOL _lockScreenBlockCortana;
    BOOL _lockScreenBlockToastNotifications;
    int32_t _lockScreenTimeoutInSeconds;
    BOOL _passwordBlockSimple;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordMinimumCharacterSetCount;
    int32_t _passwordPreviousPasswordBlockCount;
    BOOL _passwordRequired;
    BOOL _passwordRequireWhenResumeFromIdleState;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    int32_t _passwordSignInFailureCountBeforeFactoryReset;
    MSGraphStateManagementSetting* _privacyAdvertisingId;
    BOOL _privacyAutoAcceptPairingAndConsentPrompts;
    BOOL _privacyBlockInputPersonalization;
    BOOL _startBlockUnpinningAppsFromTaskbar;
    MSGraphWindowsStartMenuAppListVisibilityType* _startMenuAppListVisibility;
    BOOL _startMenuHideChangeAccountSettings;
    BOOL _startMenuHideFrequentlyUsedApps;
    BOOL _startMenuHideHibernate;
    BOOL _startMenuHideLock;
    BOOL _startMenuHidePowerButton;
    BOOL _startMenuHideRecentJumpLists;
    BOOL _startMenuHideRecentlyAddedApps;
    BOOL _startMenuHideRestartOptions;
    BOOL _startMenuHideShutDown;
    BOOL _startMenuHideSignOut;
    BOOL _startMenuHideSleep;
    BOOL _startMenuHideSwitchAccount;
    BOOL _startMenuHideUserTile;
    NSString* _startMenuLayoutEdgeAssetsXml;
    NSString* _startMenuLayoutXml;
    MSGraphWindowsStartMenuModeType* _startMenuMode;
    MSGraphVisibilitySetting* _startMenuPinnedFolderDocuments;
    MSGraphVisibilitySetting* _startMenuPinnedFolderDownloads;
    MSGraphVisibilitySetting* _startMenuPinnedFolderFileExplorer;
    MSGraphVisibilitySetting* _startMenuPinnedFolderHomeGroup;
    MSGraphVisibilitySetting* _startMenuPinnedFolderMusic;
    MSGraphVisibilitySetting* _startMenuPinnedFolderNetwork;
    MSGraphVisibilitySetting* _startMenuPinnedFolderPersonalFolder;
    MSGraphVisibilitySetting* _startMenuPinnedFolderPictures;
    MSGraphVisibilitySetting* _startMenuPinnedFolderSettings;
    MSGraphVisibilitySetting* _startMenuPinnedFolderVideos;
    BOOL _settingsBlockSettingsApp;
    BOOL _settingsBlockSystemPage;
    BOOL _settingsBlockDevicesPage;
    BOOL _settingsBlockNetworkInternetPage;
    BOOL _settingsBlockPersonalizationPage;
    BOOL _settingsBlockAccountsPage;
    BOOL _settingsBlockTimeLanguagePage;
    BOOL _settingsBlockEaseOfAccessPage;
    BOOL _settingsBlockPrivacyPage;
    BOOL _settingsBlockUpdateSecurityPage;
    BOOL _settingsBlockAppsPage;
    BOOL _settingsBlockGamingPage;
    BOOL _windowsSpotlightBlockConsumerSpecificFeatures;
    BOOL _windowsSpotlightBlocked;
    BOOL _windowsSpotlightBlockOnActionCenter;
    BOOL _windowsSpotlightBlockTailoredExperiences;
    BOOL _windowsSpotlightBlockThirdPartyNotifications;
    BOOL _windowsSpotlightBlockWelcomeExperience;
    BOOL _windowsSpotlightBlockWindowsTips;
    MSGraphWindowsSpotlightEnablementSettings* _windowsSpotlightConfigureOnLockScreen;
    BOOL _networkProxyApplySettingsDeviceWide;
    BOOL _networkProxyDisableAutoDetect;
    NSString* _networkProxyAutomaticConfigurationUrl;
    MSGraphWindows10NetworkProxyServer* _networkProxyServer;
    BOOL _accountsBlockAddingNonMicrosoftAccountEmail;
    BOOL _antiTheftModeBlocked;
    BOOL _bluetoothBlocked;
    BOOL _cameraBlocked;
    BOOL _connectedDevicesServiceBlocked;
    BOOL _certificatesBlockManualRootCertificateInstallation;
    BOOL _copyPasteBlocked;
    BOOL _cortanaBlocked;
    BOOL _deviceManagementBlockFactoryResetOnMobile;
    BOOL _deviceManagementBlockManualUnenroll;
    MSGraphSafeSearchFilterType* _safeSearchFilter;
    BOOL _edgeBlockPopups;
    BOOL _edgeBlockSearchSuggestions;
    BOOL _edgeBlockSendingIntranetTrafficToInternetExplorer;
    BOOL _edgeSendIntranetTrafficToInternetExplorer;
    BOOL _edgeRequireSmartScreen;
    NSString* _edgeEnterpriseModeSiteListLocation;
    NSString* _edgeFirstRunUrl;
    MSGraphEdgeSearchEngineBase* _edgeSearchEngine;
    NSArray* _edgeHomepageUrls;
    BOOL _edgeBlockAccessToAboutFlags;
    BOOL _smartScreenBlockPromptOverride;
    BOOL _smartScreenBlockPromptOverrideForFiles;
    BOOL _webRtcBlockLocalhostIpAddress;
    BOOL _internetSharingBlocked;
    BOOL _settingsBlockAddProvisioningPackage;
    BOOL _settingsBlockRemoveProvisioningPackage;
    BOOL _settingsBlockChangeSystemTime;
    BOOL _settingsBlockEditDeviceName;
    BOOL _settingsBlockChangeRegion;
    BOOL _settingsBlockChangeLanguage;
    BOOL _settingsBlockChangePowerSleep;
    BOOL _locationServicesBlocked;
    BOOL _microsoftAccountBlocked;
    BOOL _microsoftAccountBlockSettingsSync;
    BOOL _nfcBlocked;
    BOOL _resetProtectionModeBlocked;
    BOOL _screenCaptureBlocked;
    BOOL _storageBlockRemovableStorage;
    BOOL _storageRequireMobileDeviceEncryption;
    BOOL _usbBlocked;
    BOOL _voiceRecordingBlocked;
    BOOL _wiFiBlockAutomaticConnectHotspots;
    BOOL _wiFiBlocked;
    BOOL _wiFiBlockManualConfiguration;
    int32_t _wiFiScanInterval;
    BOOL _wirelessDisplayBlockProjectionToThisDevice;
    BOOL _wirelessDisplayBlockUserInputFromReceiver;
    BOOL _wirelessDisplayRequirePinForPairing;
    BOOL _windowsStoreBlocked;
    MSGraphStateManagementSetting* _appsAllowTrustedAppsSideloading;
    BOOL _windowsStoreBlockAutoUpdate;
    MSGraphStateManagementSetting* _developerUnlockSetting;
    BOOL _sharedUserAppDataAllowed;
    BOOL _appsBlockWindowsStoreOriginatedApps;
    BOOL _windowsStoreEnablePrivateStoreOnly;
    BOOL _storageRestrictAppDataToSystemVolume;
    BOOL _storageRestrictAppInstallToSystemVolume;
    BOOL _gameDvrBlocked;
    BOOL _experienceBlockDeviceDiscovery;
    BOOL _experienceBlockErrorDialogWhenNoSIM;
    BOOL _experienceBlockTaskSwitcher;
    BOOL _logonBlockFastUserSwitching;
    BOOL _tenantLockdownRequireNetworkDuringOutOfBoxExperience;
}
@end

@implementation MSGraphWindows10GeneralConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10GeneralConfiguration";
    }
    return self;
}
- (NSString*) enterpriseCloudPrintDiscoveryEndPoint
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseCloudPrintDiscoveryEndPoint"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseCloudPrintDiscoveryEndPoint"];
}

- (void) setEnterpriseCloudPrintDiscoveryEndPoint: (NSString*) val
{
    self.dictionary[@"enterpriseCloudPrintDiscoveryEndPoint"] = val;
}

- (NSString*) enterpriseCloudPrintOAuthAuthority
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseCloudPrintOAuthAuthority"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseCloudPrintOAuthAuthority"];
}

- (void) setEnterpriseCloudPrintOAuthAuthority: (NSString*) val
{
    self.dictionary[@"enterpriseCloudPrintOAuthAuthority"] = val;
}

- (NSString*) enterpriseCloudPrintOAuthClientIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseCloudPrintOAuthClientIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseCloudPrintOAuthClientIdentifier"];
}

- (void) setEnterpriseCloudPrintOAuthClientIdentifier: (NSString*) val
{
    self.dictionary[@"enterpriseCloudPrintOAuthClientIdentifier"] = val;
}

- (NSString*) enterpriseCloudPrintResourceIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseCloudPrintResourceIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseCloudPrintResourceIdentifier"];
}

- (void) setEnterpriseCloudPrintResourceIdentifier: (NSString*) val
{
    self.dictionary[@"enterpriseCloudPrintResourceIdentifier"] = val;
}

- (int32_t) enterpriseCloudPrintDiscoveryMaxLimit
{
    _enterpriseCloudPrintDiscoveryMaxLimit = [self.dictionary[@"enterpriseCloudPrintDiscoveryMaxLimit"] intValue];
    return _enterpriseCloudPrintDiscoveryMaxLimit;
}

- (void) setEnterpriseCloudPrintDiscoveryMaxLimit: (int32_t) val
{
    _enterpriseCloudPrintDiscoveryMaxLimit = val;
    self.dictionary[@"enterpriseCloudPrintDiscoveryMaxLimit"] = @(val);
}

- (NSString*) enterpriseCloudPrintMopriaDiscoveryResourceIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseCloudPrintMopriaDiscoveryResourceIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseCloudPrintMopriaDiscoveryResourceIdentifier"];
}

- (void) setEnterpriseCloudPrintMopriaDiscoveryResourceIdentifier: (NSString*) val
{
    self.dictionary[@"enterpriseCloudPrintMopriaDiscoveryResourceIdentifier"] = val;
}

- (BOOL) searchBlockDiacritics
{
    _searchBlockDiacritics = [self.dictionary[@"searchBlockDiacritics"] boolValue];
    return _searchBlockDiacritics;
}

- (void) setSearchBlockDiacritics: (BOOL) val
{
    _searchBlockDiacritics = val;
    self.dictionary[@"searchBlockDiacritics"] = @(val);
}

- (BOOL) searchDisableAutoLanguageDetection
{
    _searchDisableAutoLanguageDetection = [self.dictionary[@"searchDisableAutoLanguageDetection"] boolValue];
    return _searchDisableAutoLanguageDetection;
}

- (void) setSearchDisableAutoLanguageDetection: (BOOL) val
{
    _searchDisableAutoLanguageDetection = val;
    self.dictionary[@"searchDisableAutoLanguageDetection"] = @(val);
}

- (BOOL) searchDisableIndexingEncryptedItems
{
    _searchDisableIndexingEncryptedItems = [self.dictionary[@"searchDisableIndexingEncryptedItems"] boolValue];
    return _searchDisableIndexingEncryptedItems;
}

- (void) setSearchDisableIndexingEncryptedItems: (BOOL) val
{
    _searchDisableIndexingEncryptedItems = val;
    self.dictionary[@"searchDisableIndexingEncryptedItems"] = @(val);
}

- (BOOL) searchEnableRemoteQueries
{
    _searchEnableRemoteQueries = [self.dictionary[@"searchEnableRemoteQueries"] boolValue];
    return _searchEnableRemoteQueries;
}

- (void) setSearchEnableRemoteQueries: (BOOL) val
{
    _searchEnableRemoteQueries = val;
    self.dictionary[@"searchEnableRemoteQueries"] = @(val);
}

- (BOOL) searchDisableIndexerBackoff
{
    _searchDisableIndexerBackoff = [self.dictionary[@"searchDisableIndexerBackoff"] boolValue];
    return _searchDisableIndexerBackoff;
}

- (void) setSearchDisableIndexerBackoff: (BOOL) val
{
    _searchDisableIndexerBackoff = val;
    self.dictionary[@"searchDisableIndexerBackoff"] = @(val);
}

- (BOOL) searchDisableIndexingRemovableDrive
{
    _searchDisableIndexingRemovableDrive = [self.dictionary[@"searchDisableIndexingRemovableDrive"] boolValue];
    return _searchDisableIndexingRemovableDrive;
}

- (void) setSearchDisableIndexingRemovableDrive: (BOOL) val
{
    _searchDisableIndexingRemovableDrive = val;
    self.dictionary[@"searchDisableIndexingRemovableDrive"] = @(val);
}

- (BOOL) searchEnableAutomaticIndexSizeManangement
{
    _searchEnableAutomaticIndexSizeManangement = [self.dictionary[@"searchEnableAutomaticIndexSizeManangement"] boolValue];
    return _searchEnableAutomaticIndexSizeManangement;
}

- (void) setSearchEnableAutomaticIndexSizeManangement: (BOOL) val
{
    _searchEnableAutomaticIndexSizeManangement = val;
    self.dictionary[@"searchEnableAutomaticIndexSizeManangement"] = @(val);
}

- (MSGraphDiagnosticDataSubmissionMode*) diagnosticsDataSubmissionMode
{
    if(!_diagnosticsDataSubmissionMode){
        _diagnosticsDataSubmissionMode = [self.dictionary[@"diagnosticsDataSubmissionMode"] toMSGraphDiagnosticDataSubmissionMode];
    }
    return _diagnosticsDataSubmissionMode;
}

- (void) setDiagnosticsDataSubmissionMode: (MSGraphDiagnosticDataSubmissionMode*) val
{
    _diagnosticsDataSubmissionMode = val;
    self.dictionary[@"diagnosticsDataSubmissionMode"] = val;
}

- (BOOL) oneDriveDisableFileSync
{
    _oneDriveDisableFileSync = [self.dictionary[@"oneDriveDisableFileSync"] boolValue];
    return _oneDriveDisableFileSync;
}

- (void) setOneDriveDisableFileSync: (BOOL) val
{
    _oneDriveDisableFileSync = val;
    self.dictionary[@"oneDriveDisableFileSync"] = @(val);
}

- (BOOL) smartScreenEnableAppInstallControl
{
    _smartScreenEnableAppInstallControl = [self.dictionary[@"smartScreenEnableAppInstallControl"] boolValue];
    return _smartScreenEnableAppInstallControl;
}

- (void) setSmartScreenEnableAppInstallControl: (BOOL) val
{
    _smartScreenEnableAppInstallControl = val;
    self.dictionary[@"smartScreenEnableAppInstallControl"] = @(val);
}

- (NSString*) personalizationDesktopImageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"personalizationDesktopImageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"personalizationDesktopImageUrl"];
}

- (void) setPersonalizationDesktopImageUrl: (NSString*) val
{
    self.dictionary[@"personalizationDesktopImageUrl"] = val;
}

- (NSString*) personalizationLockScreenImageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"personalizationLockScreenImageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"personalizationLockScreenImageUrl"];
}

- (void) setPersonalizationLockScreenImageUrl: (NSString*) val
{
    self.dictionary[@"personalizationLockScreenImageUrl"] = val;
}

- (NSArray*) bluetoothAllowedServices
{
    if([[NSNull null] isEqual:self.dictionary[@"bluetoothAllowedServices"]])
    {
        return nil;
    }   
    return self.dictionary[@"bluetoothAllowedServices"];
}

- (void) setBluetoothAllowedServices: (NSArray*) val
{
    self.dictionary[@"bluetoothAllowedServices"] = val;
}

- (BOOL) bluetoothBlockAdvertising
{
    _bluetoothBlockAdvertising = [self.dictionary[@"bluetoothBlockAdvertising"] boolValue];
    return _bluetoothBlockAdvertising;
}

- (void) setBluetoothBlockAdvertising: (BOOL) val
{
    _bluetoothBlockAdvertising = val;
    self.dictionary[@"bluetoothBlockAdvertising"] = @(val);
}

- (BOOL) bluetoothBlockDiscoverableMode
{
    _bluetoothBlockDiscoverableMode = [self.dictionary[@"bluetoothBlockDiscoverableMode"] boolValue];
    return _bluetoothBlockDiscoverableMode;
}

- (void) setBluetoothBlockDiscoverableMode: (BOOL) val
{
    _bluetoothBlockDiscoverableMode = val;
    self.dictionary[@"bluetoothBlockDiscoverableMode"] = @(val);
}

- (BOOL) bluetoothBlockPrePairing
{
    _bluetoothBlockPrePairing = [self.dictionary[@"bluetoothBlockPrePairing"] boolValue];
    return _bluetoothBlockPrePairing;
}

- (void) setBluetoothBlockPrePairing: (BOOL) val
{
    _bluetoothBlockPrePairing = val;
    self.dictionary[@"bluetoothBlockPrePairing"] = @(val);
}

- (BOOL) edgeBlockAutofill
{
    _edgeBlockAutofill = [self.dictionary[@"edgeBlockAutofill"] boolValue];
    return _edgeBlockAutofill;
}

- (void) setEdgeBlockAutofill: (BOOL) val
{
    _edgeBlockAutofill = val;
    self.dictionary[@"edgeBlockAutofill"] = @(val);
}

- (BOOL) edgeBlocked
{
    _edgeBlocked = [self.dictionary[@"edgeBlocked"] boolValue];
    return _edgeBlocked;
}

- (void) setEdgeBlocked: (BOOL) val
{
    _edgeBlocked = val;
    self.dictionary[@"edgeBlocked"] = @(val);
}

- (MSGraphEdgeCookiePolicy*) edgeCookiePolicy
{
    if(!_edgeCookiePolicy){
        _edgeCookiePolicy = [self.dictionary[@"edgeCookiePolicy"] toMSGraphEdgeCookiePolicy];
    }
    return _edgeCookiePolicy;
}

- (void) setEdgeCookiePolicy: (MSGraphEdgeCookiePolicy*) val
{
    _edgeCookiePolicy = val;
    self.dictionary[@"edgeCookiePolicy"] = val;
}

- (BOOL) edgeBlockDeveloperTools
{
    _edgeBlockDeveloperTools = [self.dictionary[@"edgeBlockDeveloperTools"] boolValue];
    return _edgeBlockDeveloperTools;
}

- (void) setEdgeBlockDeveloperTools: (BOOL) val
{
    _edgeBlockDeveloperTools = val;
    self.dictionary[@"edgeBlockDeveloperTools"] = @(val);
}

- (BOOL) edgeBlockSendingDoNotTrackHeader
{
    _edgeBlockSendingDoNotTrackHeader = [self.dictionary[@"edgeBlockSendingDoNotTrackHeader"] boolValue];
    return _edgeBlockSendingDoNotTrackHeader;
}

- (void) setEdgeBlockSendingDoNotTrackHeader: (BOOL) val
{
    _edgeBlockSendingDoNotTrackHeader = val;
    self.dictionary[@"edgeBlockSendingDoNotTrackHeader"] = @(val);
}

- (BOOL) edgeBlockExtensions
{
    _edgeBlockExtensions = [self.dictionary[@"edgeBlockExtensions"] boolValue];
    return _edgeBlockExtensions;
}

- (void) setEdgeBlockExtensions: (BOOL) val
{
    _edgeBlockExtensions = val;
    self.dictionary[@"edgeBlockExtensions"] = @(val);
}

- (BOOL) edgeBlockInPrivateBrowsing
{
    _edgeBlockInPrivateBrowsing = [self.dictionary[@"edgeBlockInPrivateBrowsing"] boolValue];
    return _edgeBlockInPrivateBrowsing;
}

- (void) setEdgeBlockInPrivateBrowsing: (BOOL) val
{
    _edgeBlockInPrivateBrowsing = val;
    self.dictionary[@"edgeBlockInPrivateBrowsing"] = @(val);
}

- (BOOL) edgeBlockJavaScript
{
    _edgeBlockJavaScript = [self.dictionary[@"edgeBlockJavaScript"] boolValue];
    return _edgeBlockJavaScript;
}

- (void) setEdgeBlockJavaScript: (BOOL) val
{
    _edgeBlockJavaScript = val;
    self.dictionary[@"edgeBlockJavaScript"] = @(val);
}

- (BOOL) edgeBlockPasswordManager
{
    _edgeBlockPasswordManager = [self.dictionary[@"edgeBlockPasswordManager"] boolValue];
    return _edgeBlockPasswordManager;
}

- (void) setEdgeBlockPasswordManager: (BOOL) val
{
    _edgeBlockPasswordManager = val;
    self.dictionary[@"edgeBlockPasswordManager"] = @(val);
}

- (BOOL) edgeBlockAddressBarDropdown
{
    _edgeBlockAddressBarDropdown = [self.dictionary[@"edgeBlockAddressBarDropdown"] boolValue];
    return _edgeBlockAddressBarDropdown;
}

- (void) setEdgeBlockAddressBarDropdown: (BOOL) val
{
    _edgeBlockAddressBarDropdown = val;
    self.dictionary[@"edgeBlockAddressBarDropdown"] = @(val);
}

- (BOOL) edgeBlockCompatibilityList
{
    _edgeBlockCompatibilityList = [self.dictionary[@"edgeBlockCompatibilityList"] boolValue];
    return _edgeBlockCompatibilityList;
}

- (void) setEdgeBlockCompatibilityList: (BOOL) val
{
    _edgeBlockCompatibilityList = val;
    self.dictionary[@"edgeBlockCompatibilityList"] = @(val);
}

- (BOOL) edgeClearBrowsingDataOnExit
{
    _edgeClearBrowsingDataOnExit = [self.dictionary[@"edgeClearBrowsingDataOnExit"] boolValue];
    return _edgeClearBrowsingDataOnExit;
}

- (void) setEdgeClearBrowsingDataOnExit: (BOOL) val
{
    _edgeClearBrowsingDataOnExit = val;
    self.dictionary[@"edgeClearBrowsingDataOnExit"] = @(val);
}

- (BOOL) edgeAllowStartPagesModification
{
    _edgeAllowStartPagesModification = [self.dictionary[@"edgeAllowStartPagesModification"] boolValue];
    return _edgeAllowStartPagesModification;
}

- (void) setEdgeAllowStartPagesModification: (BOOL) val
{
    _edgeAllowStartPagesModification = val;
    self.dictionary[@"edgeAllowStartPagesModification"] = @(val);
}

- (BOOL) edgeDisableFirstRunPage
{
    _edgeDisableFirstRunPage = [self.dictionary[@"edgeDisableFirstRunPage"] boolValue];
    return _edgeDisableFirstRunPage;
}

- (void) setEdgeDisableFirstRunPage: (BOOL) val
{
    _edgeDisableFirstRunPage = val;
    self.dictionary[@"edgeDisableFirstRunPage"] = @(val);
}

- (BOOL) edgeBlockLiveTileDataCollection
{
    _edgeBlockLiveTileDataCollection = [self.dictionary[@"edgeBlockLiveTileDataCollection"] boolValue];
    return _edgeBlockLiveTileDataCollection;
}

- (void) setEdgeBlockLiveTileDataCollection: (BOOL) val
{
    _edgeBlockLiveTileDataCollection = val;
    self.dictionary[@"edgeBlockLiveTileDataCollection"] = @(val);
}

- (BOOL) edgeSyncFavoritesWithInternetExplorer
{
    _edgeSyncFavoritesWithInternetExplorer = [self.dictionary[@"edgeSyncFavoritesWithInternetExplorer"] boolValue];
    return _edgeSyncFavoritesWithInternetExplorer;
}

- (void) setEdgeSyncFavoritesWithInternetExplorer: (BOOL) val
{
    _edgeSyncFavoritesWithInternetExplorer = val;
    self.dictionary[@"edgeSyncFavoritesWithInternetExplorer"] = @(val);
}

- (BOOL) cellularBlockDataWhenRoaming
{
    _cellularBlockDataWhenRoaming = [self.dictionary[@"cellularBlockDataWhenRoaming"] boolValue];
    return _cellularBlockDataWhenRoaming;
}

- (void) setCellularBlockDataWhenRoaming: (BOOL) val
{
    _cellularBlockDataWhenRoaming = val;
    self.dictionary[@"cellularBlockDataWhenRoaming"] = @(val);
}

- (BOOL) cellularBlockVpn
{
    _cellularBlockVpn = [self.dictionary[@"cellularBlockVpn"] boolValue];
    return _cellularBlockVpn;
}

- (void) setCellularBlockVpn: (BOOL) val
{
    _cellularBlockVpn = val;
    self.dictionary[@"cellularBlockVpn"] = @(val);
}

- (BOOL) cellularBlockVpnWhenRoaming
{
    _cellularBlockVpnWhenRoaming = [self.dictionary[@"cellularBlockVpnWhenRoaming"] boolValue];
    return _cellularBlockVpnWhenRoaming;
}

- (void) setCellularBlockVpnWhenRoaming: (BOOL) val
{
    _cellularBlockVpnWhenRoaming = val;
    self.dictionary[@"cellularBlockVpnWhenRoaming"] = @(val);
}

- (BOOL) defenderBlockEndUserAccess
{
    _defenderBlockEndUserAccess = [self.dictionary[@"defenderBlockEndUserAccess"] boolValue];
    return _defenderBlockEndUserAccess;
}

- (void) setDefenderBlockEndUserAccess: (BOOL) val
{
    _defenderBlockEndUserAccess = val;
    self.dictionary[@"defenderBlockEndUserAccess"] = @(val);
}

- (int32_t) defenderDaysBeforeDeletingQuarantinedMalware
{
    _defenderDaysBeforeDeletingQuarantinedMalware = [self.dictionary[@"defenderDaysBeforeDeletingQuarantinedMalware"] intValue];
    return _defenderDaysBeforeDeletingQuarantinedMalware;
}

- (void) setDefenderDaysBeforeDeletingQuarantinedMalware: (int32_t) val
{
    _defenderDaysBeforeDeletingQuarantinedMalware = val;
    self.dictionary[@"defenderDaysBeforeDeletingQuarantinedMalware"] = @(val);
}

- (MSGraphDefenderDetectedMalwareActions*) defenderDetectedMalwareActions
{
    if(!_defenderDetectedMalwareActions){
        _defenderDetectedMalwareActions = [[MSGraphDefenderDetectedMalwareActions alloc] initWithDictionary: self.dictionary[@"defenderDetectedMalwareActions"]];
    }
    return _defenderDetectedMalwareActions;
}

- (void) setDefenderDetectedMalwareActions: (MSGraphDefenderDetectedMalwareActions*) val
{
    _defenderDetectedMalwareActions = val;
    self.dictionary[@"defenderDetectedMalwareActions"] = val;
}

- (MSGraphWeeklySchedule*) defenderSystemScanSchedule
{
    if(!_defenderSystemScanSchedule){
        _defenderSystemScanSchedule = [self.dictionary[@"defenderSystemScanSchedule"] toMSGraphWeeklySchedule];
    }
    return _defenderSystemScanSchedule;
}

- (void) setDefenderSystemScanSchedule: (MSGraphWeeklySchedule*) val
{
    _defenderSystemScanSchedule = val;
    self.dictionary[@"defenderSystemScanSchedule"] = val;
}

- (NSArray*) defenderFilesAndFoldersToExclude
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderFilesAndFoldersToExclude"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderFilesAndFoldersToExclude"];
}

- (void) setDefenderFilesAndFoldersToExclude: (NSArray*) val
{
    self.dictionary[@"defenderFilesAndFoldersToExclude"] = val;
}

- (NSArray*) defenderFileExtensionsToExclude
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderFileExtensionsToExclude"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderFileExtensionsToExclude"];
}

- (void) setDefenderFileExtensionsToExclude: (NSArray*) val
{
    self.dictionary[@"defenderFileExtensionsToExclude"] = val;
}

- (int32_t) defenderScanMaxCpu
{
    _defenderScanMaxCpu = [self.dictionary[@"defenderScanMaxCpu"] intValue];
    return _defenderScanMaxCpu;
}

- (void) setDefenderScanMaxCpu: (int32_t) val
{
    _defenderScanMaxCpu = val;
    self.dictionary[@"defenderScanMaxCpu"] = @(val);
}

- (MSGraphDefenderMonitorFileActivity*) defenderMonitorFileActivity
{
    if(!_defenderMonitorFileActivity){
        _defenderMonitorFileActivity = [self.dictionary[@"defenderMonitorFileActivity"] toMSGraphDefenderMonitorFileActivity];
    }
    return _defenderMonitorFileActivity;
}

- (void) setDefenderMonitorFileActivity: (MSGraphDefenderMonitorFileActivity*) val
{
    _defenderMonitorFileActivity = val;
    self.dictionary[@"defenderMonitorFileActivity"] = val;
}

- (NSArray*) defenderProcessesToExclude
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderProcessesToExclude"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderProcessesToExclude"];
}

- (void) setDefenderProcessesToExclude: (NSArray*) val
{
    self.dictionary[@"defenderProcessesToExclude"] = val;
}

- (MSGraphDefenderPromptForSampleSubmission*) defenderPromptForSampleSubmission
{
    if(!_defenderPromptForSampleSubmission){
        _defenderPromptForSampleSubmission = [self.dictionary[@"defenderPromptForSampleSubmission"] toMSGraphDefenderPromptForSampleSubmission];
    }
    return _defenderPromptForSampleSubmission;
}

- (void) setDefenderPromptForSampleSubmission: (MSGraphDefenderPromptForSampleSubmission*) val
{
    _defenderPromptForSampleSubmission = val;
    self.dictionary[@"defenderPromptForSampleSubmission"] = val;
}

- (BOOL) defenderRequireBehaviorMonitoring
{
    _defenderRequireBehaviorMonitoring = [self.dictionary[@"defenderRequireBehaviorMonitoring"] boolValue];
    return _defenderRequireBehaviorMonitoring;
}

- (void) setDefenderRequireBehaviorMonitoring: (BOOL) val
{
    _defenderRequireBehaviorMonitoring = val;
    self.dictionary[@"defenderRequireBehaviorMonitoring"] = @(val);
}

- (BOOL) defenderRequireCloudProtection
{
    _defenderRequireCloudProtection = [self.dictionary[@"defenderRequireCloudProtection"] boolValue];
    return _defenderRequireCloudProtection;
}

- (void) setDefenderRequireCloudProtection: (BOOL) val
{
    _defenderRequireCloudProtection = val;
    self.dictionary[@"defenderRequireCloudProtection"] = @(val);
}

- (BOOL) defenderRequireNetworkInspectionSystem
{
    _defenderRequireNetworkInspectionSystem = [self.dictionary[@"defenderRequireNetworkInspectionSystem"] boolValue];
    return _defenderRequireNetworkInspectionSystem;
}

- (void) setDefenderRequireNetworkInspectionSystem: (BOOL) val
{
    _defenderRequireNetworkInspectionSystem = val;
    self.dictionary[@"defenderRequireNetworkInspectionSystem"] = @(val);
}

- (BOOL) defenderRequireRealTimeMonitoring
{
    _defenderRequireRealTimeMonitoring = [self.dictionary[@"defenderRequireRealTimeMonitoring"] boolValue];
    return _defenderRequireRealTimeMonitoring;
}

- (void) setDefenderRequireRealTimeMonitoring: (BOOL) val
{
    _defenderRequireRealTimeMonitoring = val;
    self.dictionary[@"defenderRequireRealTimeMonitoring"] = @(val);
}

- (BOOL) defenderScanArchiveFiles
{
    _defenderScanArchiveFiles = [self.dictionary[@"defenderScanArchiveFiles"] boolValue];
    return _defenderScanArchiveFiles;
}

- (void) setDefenderScanArchiveFiles: (BOOL) val
{
    _defenderScanArchiveFiles = val;
    self.dictionary[@"defenderScanArchiveFiles"] = @(val);
}

- (BOOL) defenderScanDownloads
{
    _defenderScanDownloads = [self.dictionary[@"defenderScanDownloads"] boolValue];
    return _defenderScanDownloads;
}

- (void) setDefenderScanDownloads: (BOOL) val
{
    _defenderScanDownloads = val;
    self.dictionary[@"defenderScanDownloads"] = @(val);
}

- (BOOL) defenderScanNetworkFiles
{
    _defenderScanNetworkFiles = [self.dictionary[@"defenderScanNetworkFiles"] boolValue];
    return _defenderScanNetworkFiles;
}

- (void) setDefenderScanNetworkFiles: (BOOL) val
{
    _defenderScanNetworkFiles = val;
    self.dictionary[@"defenderScanNetworkFiles"] = @(val);
}

- (BOOL) defenderScanIncomingMail
{
    _defenderScanIncomingMail = [self.dictionary[@"defenderScanIncomingMail"] boolValue];
    return _defenderScanIncomingMail;
}

- (void) setDefenderScanIncomingMail: (BOOL) val
{
    _defenderScanIncomingMail = val;
    self.dictionary[@"defenderScanIncomingMail"] = @(val);
}

- (BOOL) defenderScanMappedNetworkDrivesDuringFullScan
{
    _defenderScanMappedNetworkDrivesDuringFullScan = [self.dictionary[@"defenderScanMappedNetworkDrivesDuringFullScan"] boolValue];
    return _defenderScanMappedNetworkDrivesDuringFullScan;
}

- (void) setDefenderScanMappedNetworkDrivesDuringFullScan: (BOOL) val
{
    _defenderScanMappedNetworkDrivesDuringFullScan = val;
    self.dictionary[@"defenderScanMappedNetworkDrivesDuringFullScan"] = @(val);
}

- (BOOL) defenderScanRemovableDrivesDuringFullScan
{
    _defenderScanRemovableDrivesDuringFullScan = [self.dictionary[@"defenderScanRemovableDrivesDuringFullScan"] boolValue];
    return _defenderScanRemovableDrivesDuringFullScan;
}

- (void) setDefenderScanRemovableDrivesDuringFullScan: (BOOL) val
{
    _defenderScanRemovableDrivesDuringFullScan = val;
    self.dictionary[@"defenderScanRemovableDrivesDuringFullScan"] = @(val);
}

- (BOOL) defenderScanScriptsLoadedInInternetExplorer
{
    _defenderScanScriptsLoadedInInternetExplorer = [self.dictionary[@"defenderScanScriptsLoadedInInternetExplorer"] boolValue];
    return _defenderScanScriptsLoadedInInternetExplorer;
}

- (void) setDefenderScanScriptsLoadedInInternetExplorer: (BOOL) val
{
    _defenderScanScriptsLoadedInInternetExplorer = val;
    self.dictionary[@"defenderScanScriptsLoadedInInternetExplorer"] = @(val);
}

- (int32_t) defenderSignatureUpdateIntervalInHours
{
    _defenderSignatureUpdateIntervalInHours = [self.dictionary[@"defenderSignatureUpdateIntervalInHours"] intValue];
    return _defenderSignatureUpdateIntervalInHours;
}

- (void) setDefenderSignatureUpdateIntervalInHours: (int32_t) val
{
    _defenderSignatureUpdateIntervalInHours = val;
    self.dictionary[@"defenderSignatureUpdateIntervalInHours"] = @(val);
}

- (MSGraphDefenderScanType*) defenderScanType
{
    if(!_defenderScanType){
        _defenderScanType = [self.dictionary[@"defenderScanType"] toMSGraphDefenderScanType];
    }
    return _defenderScanType;
}

- (void) setDefenderScanType: (MSGraphDefenderScanType*) val
{
    _defenderScanType = val;
    self.dictionary[@"defenderScanType"] = val;
}

- (MSTimeOfDay*) defenderScheduledScanTime
{
    if(!_defenderScheduledScanTime){
        _defenderScheduledScanTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"defenderScheduledScanTime"]];
    }
    return _defenderScheduledScanTime;
}

- (void) setDefenderScheduledScanTime: (MSTimeOfDay*) val
{
    _defenderScheduledScanTime = val;
    self.dictionary[@"defenderScheduledScanTime"] = [val ms_toString];
}

- (MSTimeOfDay*) defenderScheduledQuickScanTime
{
    if(!_defenderScheduledQuickScanTime){
        _defenderScheduledQuickScanTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"defenderScheduledQuickScanTime"]];
    }
    return _defenderScheduledQuickScanTime;
}

- (void) setDefenderScheduledQuickScanTime: (MSTimeOfDay*) val
{
    _defenderScheduledQuickScanTime = val;
    self.dictionary[@"defenderScheduledQuickScanTime"] = [val ms_toString];
}

- (MSGraphDefenderCloudBlockLevelType*) defenderCloudBlockLevel
{
    if(!_defenderCloudBlockLevel){
        _defenderCloudBlockLevel = [self.dictionary[@"defenderCloudBlockLevel"] toMSGraphDefenderCloudBlockLevelType];
    }
    return _defenderCloudBlockLevel;
}

- (void) setDefenderCloudBlockLevel: (MSGraphDefenderCloudBlockLevelType*) val
{
    _defenderCloudBlockLevel = val;
    self.dictionary[@"defenderCloudBlockLevel"] = val;
}

- (BOOL) lockScreenAllowTimeoutConfiguration
{
    _lockScreenAllowTimeoutConfiguration = [self.dictionary[@"lockScreenAllowTimeoutConfiguration"] boolValue];
    return _lockScreenAllowTimeoutConfiguration;
}

- (void) setLockScreenAllowTimeoutConfiguration: (BOOL) val
{
    _lockScreenAllowTimeoutConfiguration = val;
    self.dictionary[@"lockScreenAllowTimeoutConfiguration"] = @(val);
}

- (BOOL) lockScreenBlockActionCenterNotifications
{
    _lockScreenBlockActionCenterNotifications = [self.dictionary[@"lockScreenBlockActionCenterNotifications"] boolValue];
    return _lockScreenBlockActionCenterNotifications;
}

- (void) setLockScreenBlockActionCenterNotifications: (BOOL) val
{
    _lockScreenBlockActionCenterNotifications = val;
    self.dictionary[@"lockScreenBlockActionCenterNotifications"] = @(val);
}

- (BOOL) lockScreenBlockCortana
{
    _lockScreenBlockCortana = [self.dictionary[@"lockScreenBlockCortana"] boolValue];
    return _lockScreenBlockCortana;
}

- (void) setLockScreenBlockCortana: (BOOL) val
{
    _lockScreenBlockCortana = val;
    self.dictionary[@"lockScreenBlockCortana"] = @(val);
}

- (BOOL) lockScreenBlockToastNotifications
{
    _lockScreenBlockToastNotifications = [self.dictionary[@"lockScreenBlockToastNotifications"] boolValue];
    return _lockScreenBlockToastNotifications;
}

- (void) setLockScreenBlockToastNotifications: (BOOL) val
{
    _lockScreenBlockToastNotifications = val;
    self.dictionary[@"lockScreenBlockToastNotifications"] = @(val);
}

- (int32_t) lockScreenTimeoutInSeconds
{
    _lockScreenTimeoutInSeconds = [self.dictionary[@"lockScreenTimeoutInSeconds"] intValue];
    return _lockScreenTimeoutInSeconds;
}

- (void) setLockScreenTimeoutInSeconds: (int32_t) val
{
    _lockScreenTimeoutInSeconds = val;
    self.dictionary[@"lockScreenTimeoutInSeconds"] = @(val);
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

- (BOOL) passwordRequireWhenResumeFromIdleState
{
    _passwordRequireWhenResumeFromIdleState = [self.dictionary[@"passwordRequireWhenResumeFromIdleState"] boolValue];
    return _passwordRequireWhenResumeFromIdleState;
}

- (void) setPasswordRequireWhenResumeFromIdleState: (BOOL) val
{
    _passwordRequireWhenResumeFromIdleState = val;
    self.dictionary[@"passwordRequireWhenResumeFromIdleState"] = @(val);
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

- (MSGraphStateManagementSetting*) privacyAdvertisingId
{
    if(!_privacyAdvertisingId){
        _privacyAdvertisingId = [self.dictionary[@"privacyAdvertisingId"] toMSGraphStateManagementSetting];
    }
    return _privacyAdvertisingId;
}

- (void) setPrivacyAdvertisingId: (MSGraphStateManagementSetting*) val
{
    _privacyAdvertisingId = val;
    self.dictionary[@"privacyAdvertisingId"] = val;
}

- (BOOL) privacyAutoAcceptPairingAndConsentPrompts
{
    _privacyAutoAcceptPairingAndConsentPrompts = [self.dictionary[@"privacyAutoAcceptPairingAndConsentPrompts"] boolValue];
    return _privacyAutoAcceptPairingAndConsentPrompts;
}

- (void) setPrivacyAutoAcceptPairingAndConsentPrompts: (BOOL) val
{
    _privacyAutoAcceptPairingAndConsentPrompts = val;
    self.dictionary[@"privacyAutoAcceptPairingAndConsentPrompts"] = @(val);
}

- (BOOL) privacyBlockInputPersonalization
{
    _privacyBlockInputPersonalization = [self.dictionary[@"privacyBlockInputPersonalization"] boolValue];
    return _privacyBlockInputPersonalization;
}

- (void) setPrivacyBlockInputPersonalization: (BOOL) val
{
    _privacyBlockInputPersonalization = val;
    self.dictionary[@"privacyBlockInputPersonalization"] = @(val);
}

- (BOOL) startBlockUnpinningAppsFromTaskbar
{
    _startBlockUnpinningAppsFromTaskbar = [self.dictionary[@"startBlockUnpinningAppsFromTaskbar"] boolValue];
    return _startBlockUnpinningAppsFromTaskbar;
}

- (void) setStartBlockUnpinningAppsFromTaskbar: (BOOL) val
{
    _startBlockUnpinningAppsFromTaskbar = val;
    self.dictionary[@"startBlockUnpinningAppsFromTaskbar"] = @(val);
}

- (MSGraphWindowsStartMenuAppListVisibilityType*) startMenuAppListVisibility
{
    if(!_startMenuAppListVisibility){
        _startMenuAppListVisibility = [self.dictionary[@"startMenuAppListVisibility"] toMSGraphWindowsStartMenuAppListVisibilityType];
    }
    return _startMenuAppListVisibility;
}

- (void) setStartMenuAppListVisibility: (MSGraphWindowsStartMenuAppListVisibilityType*) val
{
    _startMenuAppListVisibility = val;
    self.dictionary[@"startMenuAppListVisibility"] = val;
}

- (BOOL) startMenuHideChangeAccountSettings
{
    _startMenuHideChangeAccountSettings = [self.dictionary[@"startMenuHideChangeAccountSettings"] boolValue];
    return _startMenuHideChangeAccountSettings;
}

- (void) setStartMenuHideChangeAccountSettings: (BOOL) val
{
    _startMenuHideChangeAccountSettings = val;
    self.dictionary[@"startMenuHideChangeAccountSettings"] = @(val);
}

- (BOOL) startMenuHideFrequentlyUsedApps
{
    _startMenuHideFrequentlyUsedApps = [self.dictionary[@"startMenuHideFrequentlyUsedApps"] boolValue];
    return _startMenuHideFrequentlyUsedApps;
}

- (void) setStartMenuHideFrequentlyUsedApps: (BOOL) val
{
    _startMenuHideFrequentlyUsedApps = val;
    self.dictionary[@"startMenuHideFrequentlyUsedApps"] = @(val);
}

- (BOOL) startMenuHideHibernate
{
    _startMenuHideHibernate = [self.dictionary[@"startMenuHideHibernate"] boolValue];
    return _startMenuHideHibernate;
}

- (void) setStartMenuHideHibernate: (BOOL) val
{
    _startMenuHideHibernate = val;
    self.dictionary[@"startMenuHideHibernate"] = @(val);
}

- (BOOL) startMenuHideLock
{
    _startMenuHideLock = [self.dictionary[@"startMenuHideLock"] boolValue];
    return _startMenuHideLock;
}

- (void) setStartMenuHideLock: (BOOL) val
{
    _startMenuHideLock = val;
    self.dictionary[@"startMenuHideLock"] = @(val);
}

- (BOOL) startMenuHidePowerButton
{
    _startMenuHidePowerButton = [self.dictionary[@"startMenuHidePowerButton"] boolValue];
    return _startMenuHidePowerButton;
}

- (void) setStartMenuHidePowerButton: (BOOL) val
{
    _startMenuHidePowerButton = val;
    self.dictionary[@"startMenuHidePowerButton"] = @(val);
}

- (BOOL) startMenuHideRecentJumpLists
{
    _startMenuHideRecentJumpLists = [self.dictionary[@"startMenuHideRecentJumpLists"] boolValue];
    return _startMenuHideRecentJumpLists;
}

- (void) setStartMenuHideRecentJumpLists: (BOOL) val
{
    _startMenuHideRecentJumpLists = val;
    self.dictionary[@"startMenuHideRecentJumpLists"] = @(val);
}

- (BOOL) startMenuHideRecentlyAddedApps
{
    _startMenuHideRecentlyAddedApps = [self.dictionary[@"startMenuHideRecentlyAddedApps"] boolValue];
    return _startMenuHideRecentlyAddedApps;
}

- (void) setStartMenuHideRecentlyAddedApps: (BOOL) val
{
    _startMenuHideRecentlyAddedApps = val;
    self.dictionary[@"startMenuHideRecentlyAddedApps"] = @(val);
}

- (BOOL) startMenuHideRestartOptions
{
    _startMenuHideRestartOptions = [self.dictionary[@"startMenuHideRestartOptions"] boolValue];
    return _startMenuHideRestartOptions;
}

- (void) setStartMenuHideRestartOptions: (BOOL) val
{
    _startMenuHideRestartOptions = val;
    self.dictionary[@"startMenuHideRestartOptions"] = @(val);
}

- (BOOL) startMenuHideShutDown
{
    _startMenuHideShutDown = [self.dictionary[@"startMenuHideShutDown"] boolValue];
    return _startMenuHideShutDown;
}

- (void) setStartMenuHideShutDown: (BOOL) val
{
    _startMenuHideShutDown = val;
    self.dictionary[@"startMenuHideShutDown"] = @(val);
}

- (BOOL) startMenuHideSignOut
{
    _startMenuHideSignOut = [self.dictionary[@"startMenuHideSignOut"] boolValue];
    return _startMenuHideSignOut;
}

- (void) setStartMenuHideSignOut: (BOOL) val
{
    _startMenuHideSignOut = val;
    self.dictionary[@"startMenuHideSignOut"] = @(val);
}

- (BOOL) startMenuHideSleep
{
    _startMenuHideSleep = [self.dictionary[@"startMenuHideSleep"] boolValue];
    return _startMenuHideSleep;
}

- (void) setStartMenuHideSleep: (BOOL) val
{
    _startMenuHideSleep = val;
    self.dictionary[@"startMenuHideSleep"] = @(val);
}

- (BOOL) startMenuHideSwitchAccount
{
    _startMenuHideSwitchAccount = [self.dictionary[@"startMenuHideSwitchAccount"] boolValue];
    return _startMenuHideSwitchAccount;
}

- (void) setStartMenuHideSwitchAccount: (BOOL) val
{
    _startMenuHideSwitchAccount = val;
    self.dictionary[@"startMenuHideSwitchAccount"] = @(val);
}

- (BOOL) startMenuHideUserTile
{
    _startMenuHideUserTile = [self.dictionary[@"startMenuHideUserTile"] boolValue];
    return _startMenuHideUserTile;
}

- (void) setStartMenuHideUserTile: (BOOL) val
{
    _startMenuHideUserTile = val;
    self.dictionary[@"startMenuHideUserTile"] = @(val);
}

- (NSString*) startMenuLayoutEdgeAssetsXml
{
    if([[NSNull null] isEqual:self.dictionary[@"startMenuLayoutEdgeAssetsXml"]])
    {
        return nil;
    }   
    return self.dictionary[@"startMenuLayoutEdgeAssetsXml"];
}

- (void) setStartMenuLayoutEdgeAssetsXml: (NSString*) val
{
    self.dictionary[@"startMenuLayoutEdgeAssetsXml"] = val;
}

- (NSString*) startMenuLayoutXml
{
    if([[NSNull null] isEqual:self.dictionary[@"startMenuLayoutXml"]])
    {
        return nil;
    }   
    return self.dictionary[@"startMenuLayoutXml"];
}

- (void) setStartMenuLayoutXml: (NSString*) val
{
    self.dictionary[@"startMenuLayoutXml"] = val;
}

- (MSGraphWindowsStartMenuModeType*) startMenuMode
{
    if(!_startMenuMode){
        _startMenuMode = [self.dictionary[@"startMenuMode"] toMSGraphWindowsStartMenuModeType];
    }
    return _startMenuMode;
}

- (void) setStartMenuMode: (MSGraphWindowsStartMenuModeType*) val
{
    _startMenuMode = val;
    self.dictionary[@"startMenuMode"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderDocuments
{
    if(!_startMenuPinnedFolderDocuments){
        _startMenuPinnedFolderDocuments = [self.dictionary[@"startMenuPinnedFolderDocuments"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderDocuments;
}

- (void) setStartMenuPinnedFolderDocuments: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderDocuments = val;
    self.dictionary[@"startMenuPinnedFolderDocuments"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderDownloads
{
    if(!_startMenuPinnedFolderDownloads){
        _startMenuPinnedFolderDownloads = [self.dictionary[@"startMenuPinnedFolderDownloads"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderDownloads;
}

- (void) setStartMenuPinnedFolderDownloads: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderDownloads = val;
    self.dictionary[@"startMenuPinnedFolderDownloads"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderFileExplorer
{
    if(!_startMenuPinnedFolderFileExplorer){
        _startMenuPinnedFolderFileExplorer = [self.dictionary[@"startMenuPinnedFolderFileExplorer"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderFileExplorer;
}

- (void) setStartMenuPinnedFolderFileExplorer: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderFileExplorer = val;
    self.dictionary[@"startMenuPinnedFolderFileExplorer"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderHomeGroup
{
    if(!_startMenuPinnedFolderHomeGroup){
        _startMenuPinnedFolderHomeGroup = [self.dictionary[@"startMenuPinnedFolderHomeGroup"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderHomeGroup;
}

- (void) setStartMenuPinnedFolderHomeGroup: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderHomeGroup = val;
    self.dictionary[@"startMenuPinnedFolderHomeGroup"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderMusic
{
    if(!_startMenuPinnedFolderMusic){
        _startMenuPinnedFolderMusic = [self.dictionary[@"startMenuPinnedFolderMusic"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderMusic;
}

- (void) setStartMenuPinnedFolderMusic: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderMusic = val;
    self.dictionary[@"startMenuPinnedFolderMusic"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderNetwork
{
    if(!_startMenuPinnedFolderNetwork){
        _startMenuPinnedFolderNetwork = [self.dictionary[@"startMenuPinnedFolderNetwork"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderNetwork;
}

- (void) setStartMenuPinnedFolderNetwork: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderNetwork = val;
    self.dictionary[@"startMenuPinnedFolderNetwork"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderPersonalFolder
{
    if(!_startMenuPinnedFolderPersonalFolder){
        _startMenuPinnedFolderPersonalFolder = [self.dictionary[@"startMenuPinnedFolderPersonalFolder"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderPersonalFolder;
}

- (void) setStartMenuPinnedFolderPersonalFolder: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderPersonalFolder = val;
    self.dictionary[@"startMenuPinnedFolderPersonalFolder"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderPictures
{
    if(!_startMenuPinnedFolderPictures){
        _startMenuPinnedFolderPictures = [self.dictionary[@"startMenuPinnedFolderPictures"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderPictures;
}

- (void) setStartMenuPinnedFolderPictures: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderPictures = val;
    self.dictionary[@"startMenuPinnedFolderPictures"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderSettings
{
    if(!_startMenuPinnedFolderSettings){
        _startMenuPinnedFolderSettings = [self.dictionary[@"startMenuPinnedFolderSettings"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderSettings;
}

- (void) setStartMenuPinnedFolderSettings: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderSettings = val;
    self.dictionary[@"startMenuPinnedFolderSettings"] = val;
}

- (MSGraphVisibilitySetting*) startMenuPinnedFolderVideos
{
    if(!_startMenuPinnedFolderVideos){
        _startMenuPinnedFolderVideos = [self.dictionary[@"startMenuPinnedFolderVideos"] toMSGraphVisibilitySetting];
    }
    return _startMenuPinnedFolderVideos;
}

- (void) setStartMenuPinnedFolderVideos: (MSGraphVisibilitySetting*) val
{
    _startMenuPinnedFolderVideos = val;
    self.dictionary[@"startMenuPinnedFolderVideos"] = val;
}

- (BOOL) settingsBlockSettingsApp
{
    _settingsBlockSettingsApp = [self.dictionary[@"settingsBlockSettingsApp"] boolValue];
    return _settingsBlockSettingsApp;
}

- (void) setSettingsBlockSettingsApp: (BOOL) val
{
    _settingsBlockSettingsApp = val;
    self.dictionary[@"settingsBlockSettingsApp"] = @(val);
}

- (BOOL) settingsBlockSystemPage
{
    _settingsBlockSystemPage = [self.dictionary[@"settingsBlockSystemPage"] boolValue];
    return _settingsBlockSystemPage;
}

- (void) setSettingsBlockSystemPage: (BOOL) val
{
    _settingsBlockSystemPage = val;
    self.dictionary[@"settingsBlockSystemPage"] = @(val);
}

- (BOOL) settingsBlockDevicesPage
{
    _settingsBlockDevicesPage = [self.dictionary[@"settingsBlockDevicesPage"] boolValue];
    return _settingsBlockDevicesPage;
}

- (void) setSettingsBlockDevicesPage: (BOOL) val
{
    _settingsBlockDevicesPage = val;
    self.dictionary[@"settingsBlockDevicesPage"] = @(val);
}

- (BOOL) settingsBlockNetworkInternetPage
{
    _settingsBlockNetworkInternetPage = [self.dictionary[@"settingsBlockNetworkInternetPage"] boolValue];
    return _settingsBlockNetworkInternetPage;
}

- (void) setSettingsBlockNetworkInternetPage: (BOOL) val
{
    _settingsBlockNetworkInternetPage = val;
    self.dictionary[@"settingsBlockNetworkInternetPage"] = @(val);
}

- (BOOL) settingsBlockPersonalizationPage
{
    _settingsBlockPersonalizationPage = [self.dictionary[@"settingsBlockPersonalizationPage"] boolValue];
    return _settingsBlockPersonalizationPage;
}

- (void) setSettingsBlockPersonalizationPage: (BOOL) val
{
    _settingsBlockPersonalizationPage = val;
    self.dictionary[@"settingsBlockPersonalizationPage"] = @(val);
}

- (BOOL) settingsBlockAccountsPage
{
    _settingsBlockAccountsPage = [self.dictionary[@"settingsBlockAccountsPage"] boolValue];
    return _settingsBlockAccountsPage;
}

- (void) setSettingsBlockAccountsPage: (BOOL) val
{
    _settingsBlockAccountsPage = val;
    self.dictionary[@"settingsBlockAccountsPage"] = @(val);
}

- (BOOL) settingsBlockTimeLanguagePage
{
    _settingsBlockTimeLanguagePage = [self.dictionary[@"settingsBlockTimeLanguagePage"] boolValue];
    return _settingsBlockTimeLanguagePage;
}

- (void) setSettingsBlockTimeLanguagePage: (BOOL) val
{
    _settingsBlockTimeLanguagePage = val;
    self.dictionary[@"settingsBlockTimeLanguagePage"] = @(val);
}

- (BOOL) settingsBlockEaseOfAccessPage
{
    _settingsBlockEaseOfAccessPage = [self.dictionary[@"settingsBlockEaseOfAccessPage"] boolValue];
    return _settingsBlockEaseOfAccessPage;
}

- (void) setSettingsBlockEaseOfAccessPage: (BOOL) val
{
    _settingsBlockEaseOfAccessPage = val;
    self.dictionary[@"settingsBlockEaseOfAccessPage"] = @(val);
}

- (BOOL) settingsBlockPrivacyPage
{
    _settingsBlockPrivacyPage = [self.dictionary[@"settingsBlockPrivacyPage"] boolValue];
    return _settingsBlockPrivacyPage;
}

- (void) setSettingsBlockPrivacyPage: (BOOL) val
{
    _settingsBlockPrivacyPage = val;
    self.dictionary[@"settingsBlockPrivacyPage"] = @(val);
}

- (BOOL) settingsBlockUpdateSecurityPage
{
    _settingsBlockUpdateSecurityPage = [self.dictionary[@"settingsBlockUpdateSecurityPage"] boolValue];
    return _settingsBlockUpdateSecurityPage;
}

- (void) setSettingsBlockUpdateSecurityPage: (BOOL) val
{
    _settingsBlockUpdateSecurityPage = val;
    self.dictionary[@"settingsBlockUpdateSecurityPage"] = @(val);
}

- (BOOL) settingsBlockAppsPage
{
    _settingsBlockAppsPage = [self.dictionary[@"settingsBlockAppsPage"] boolValue];
    return _settingsBlockAppsPage;
}

- (void) setSettingsBlockAppsPage: (BOOL) val
{
    _settingsBlockAppsPage = val;
    self.dictionary[@"settingsBlockAppsPage"] = @(val);
}

- (BOOL) settingsBlockGamingPage
{
    _settingsBlockGamingPage = [self.dictionary[@"settingsBlockGamingPage"] boolValue];
    return _settingsBlockGamingPage;
}

- (void) setSettingsBlockGamingPage: (BOOL) val
{
    _settingsBlockGamingPage = val;
    self.dictionary[@"settingsBlockGamingPage"] = @(val);
}

- (BOOL) windowsSpotlightBlockConsumerSpecificFeatures
{
    _windowsSpotlightBlockConsumerSpecificFeatures = [self.dictionary[@"windowsSpotlightBlockConsumerSpecificFeatures"] boolValue];
    return _windowsSpotlightBlockConsumerSpecificFeatures;
}

- (void) setWindowsSpotlightBlockConsumerSpecificFeatures: (BOOL) val
{
    _windowsSpotlightBlockConsumerSpecificFeatures = val;
    self.dictionary[@"windowsSpotlightBlockConsumerSpecificFeatures"] = @(val);
}

- (BOOL) windowsSpotlightBlocked
{
    _windowsSpotlightBlocked = [self.dictionary[@"windowsSpotlightBlocked"] boolValue];
    return _windowsSpotlightBlocked;
}

- (void) setWindowsSpotlightBlocked: (BOOL) val
{
    _windowsSpotlightBlocked = val;
    self.dictionary[@"windowsSpotlightBlocked"] = @(val);
}

- (BOOL) windowsSpotlightBlockOnActionCenter
{
    _windowsSpotlightBlockOnActionCenter = [self.dictionary[@"windowsSpotlightBlockOnActionCenter"] boolValue];
    return _windowsSpotlightBlockOnActionCenter;
}

- (void) setWindowsSpotlightBlockOnActionCenter: (BOOL) val
{
    _windowsSpotlightBlockOnActionCenter = val;
    self.dictionary[@"windowsSpotlightBlockOnActionCenter"] = @(val);
}

- (BOOL) windowsSpotlightBlockTailoredExperiences
{
    _windowsSpotlightBlockTailoredExperiences = [self.dictionary[@"windowsSpotlightBlockTailoredExperiences"] boolValue];
    return _windowsSpotlightBlockTailoredExperiences;
}

- (void) setWindowsSpotlightBlockTailoredExperiences: (BOOL) val
{
    _windowsSpotlightBlockTailoredExperiences = val;
    self.dictionary[@"windowsSpotlightBlockTailoredExperiences"] = @(val);
}

- (BOOL) windowsSpotlightBlockThirdPartyNotifications
{
    _windowsSpotlightBlockThirdPartyNotifications = [self.dictionary[@"windowsSpotlightBlockThirdPartyNotifications"] boolValue];
    return _windowsSpotlightBlockThirdPartyNotifications;
}

- (void) setWindowsSpotlightBlockThirdPartyNotifications: (BOOL) val
{
    _windowsSpotlightBlockThirdPartyNotifications = val;
    self.dictionary[@"windowsSpotlightBlockThirdPartyNotifications"] = @(val);
}

- (BOOL) windowsSpotlightBlockWelcomeExperience
{
    _windowsSpotlightBlockWelcomeExperience = [self.dictionary[@"windowsSpotlightBlockWelcomeExperience"] boolValue];
    return _windowsSpotlightBlockWelcomeExperience;
}

- (void) setWindowsSpotlightBlockWelcomeExperience: (BOOL) val
{
    _windowsSpotlightBlockWelcomeExperience = val;
    self.dictionary[@"windowsSpotlightBlockWelcomeExperience"] = @(val);
}

- (BOOL) windowsSpotlightBlockWindowsTips
{
    _windowsSpotlightBlockWindowsTips = [self.dictionary[@"windowsSpotlightBlockWindowsTips"] boolValue];
    return _windowsSpotlightBlockWindowsTips;
}

- (void) setWindowsSpotlightBlockWindowsTips: (BOOL) val
{
    _windowsSpotlightBlockWindowsTips = val;
    self.dictionary[@"windowsSpotlightBlockWindowsTips"] = @(val);
}

- (MSGraphWindowsSpotlightEnablementSettings*) windowsSpotlightConfigureOnLockScreen
{
    if(!_windowsSpotlightConfigureOnLockScreen){
        _windowsSpotlightConfigureOnLockScreen = [self.dictionary[@"windowsSpotlightConfigureOnLockScreen"] toMSGraphWindowsSpotlightEnablementSettings];
    }
    return _windowsSpotlightConfigureOnLockScreen;
}

- (void) setWindowsSpotlightConfigureOnLockScreen: (MSGraphWindowsSpotlightEnablementSettings*) val
{
    _windowsSpotlightConfigureOnLockScreen = val;
    self.dictionary[@"windowsSpotlightConfigureOnLockScreen"] = val;
}

- (BOOL) networkProxyApplySettingsDeviceWide
{
    _networkProxyApplySettingsDeviceWide = [self.dictionary[@"networkProxyApplySettingsDeviceWide"] boolValue];
    return _networkProxyApplySettingsDeviceWide;
}

- (void) setNetworkProxyApplySettingsDeviceWide: (BOOL) val
{
    _networkProxyApplySettingsDeviceWide = val;
    self.dictionary[@"networkProxyApplySettingsDeviceWide"] = @(val);
}

- (BOOL) networkProxyDisableAutoDetect
{
    _networkProxyDisableAutoDetect = [self.dictionary[@"networkProxyDisableAutoDetect"] boolValue];
    return _networkProxyDisableAutoDetect;
}

- (void) setNetworkProxyDisableAutoDetect: (BOOL) val
{
    _networkProxyDisableAutoDetect = val;
    self.dictionary[@"networkProxyDisableAutoDetect"] = @(val);
}

- (NSString*) networkProxyAutomaticConfigurationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"networkProxyAutomaticConfigurationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"networkProxyAutomaticConfigurationUrl"];
}

- (void) setNetworkProxyAutomaticConfigurationUrl: (NSString*) val
{
    self.dictionary[@"networkProxyAutomaticConfigurationUrl"] = val;
}

- (MSGraphWindows10NetworkProxyServer*) networkProxyServer
{
    if(!_networkProxyServer){
        _networkProxyServer = [[MSGraphWindows10NetworkProxyServer alloc] initWithDictionary: self.dictionary[@"networkProxyServer"]];
    }
    return _networkProxyServer;
}

- (void) setNetworkProxyServer: (MSGraphWindows10NetworkProxyServer*) val
{
    _networkProxyServer = val;
    self.dictionary[@"networkProxyServer"] = val;
}

- (BOOL) accountsBlockAddingNonMicrosoftAccountEmail
{
    _accountsBlockAddingNonMicrosoftAccountEmail = [self.dictionary[@"accountsBlockAddingNonMicrosoftAccountEmail"] boolValue];
    return _accountsBlockAddingNonMicrosoftAccountEmail;
}

- (void) setAccountsBlockAddingNonMicrosoftAccountEmail: (BOOL) val
{
    _accountsBlockAddingNonMicrosoftAccountEmail = val;
    self.dictionary[@"accountsBlockAddingNonMicrosoftAccountEmail"] = @(val);
}

- (BOOL) antiTheftModeBlocked
{
    _antiTheftModeBlocked = [self.dictionary[@"antiTheftModeBlocked"] boolValue];
    return _antiTheftModeBlocked;
}

- (void) setAntiTheftModeBlocked: (BOOL) val
{
    _antiTheftModeBlocked = val;
    self.dictionary[@"antiTheftModeBlocked"] = @(val);
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

- (BOOL) connectedDevicesServiceBlocked
{
    _connectedDevicesServiceBlocked = [self.dictionary[@"connectedDevicesServiceBlocked"] boolValue];
    return _connectedDevicesServiceBlocked;
}

- (void) setConnectedDevicesServiceBlocked: (BOOL) val
{
    _connectedDevicesServiceBlocked = val;
    self.dictionary[@"connectedDevicesServiceBlocked"] = @(val);
}

- (BOOL) certificatesBlockManualRootCertificateInstallation
{
    _certificatesBlockManualRootCertificateInstallation = [self.dictionary[@"certificatesBlockManualRootCertificateInstallation"] boolValue];
    return _certificatesBlockManualRootCertificateInstallation;
}

- (void) setCertificatesBlockManualRootCertificateInstallation: (BOOL) val
{
    _certificatesBlockManualRootCertificateInstallation = val;
    self.dictionary[@"certificatesBlockManualRootCertificateInstallation"] = @(val);
}

- (BOOL) getCopyPasteBlocked
{
    _copyPasteBlocked = [self.dictionary[@"copyPasteBlocked"] boolValue];
    return _copyPasteBlocked;
}

- (void) setCopyPasteBlocked: (BOOL) val
{
    _copyPasteBlocked = val;
    self.dictionary[@"copyPasteBlocked"] = @(val);
}

- (BOOL) cortanaBlocked
{
    _cortanaBlocked = [self.dictionary[@"cortanaBlocked"] boolValue];
    return _cortanaBlocked;
}

- (void) setCortanaBlocked: (BOOL) val
{
    _cortanaBlocked = val;
    self.dictionary[@"cortanaBlocked"] = @(val);
}

- (BOOL) deviceManagementBlockFactoryResetOnMobile
{
    _deviceManagementBlockFactoryResetOnMobile = [self.dictionary[@"deviceManagementBlockFactoryResetOnMobile"] boolValue];
    return _deviceManagementBlockFactoryResetOnMobile;
}

- (void) setDeviceManagementBlockFactoryResetOnMobile: (BOOL) val
{
    _deviceManagementBlockFactoryResetOnMobile = val;
    self.dictionary[@"deviceManagementBlockFactoryResetOnMobile"] = @(val);
}

- (BOOL) deviceManagementBlockManualUnenroll
{
    _deviceManagementBlockManualUnenroll = [self.dictionary[@"deviceManagementBlockManualUnenroll"] boolValue];
    return _deviceManagementBlockManualUnenroll;
}

- (void) setDeviceManagementBlockManualUnenroll: (BOOL) val
{
    _deviceManagementBlockManualUnenroll = val;
    self.dictionary[@"deviceManagementBlockManualUnenroll"] = @(val);
}

- (MSGraphSafeSearchFilterType*) safeSearchFilter
{
    if(!_safeSearchFilter){
        _safeSearchFilter = [self.dictionary[@"safeSearchFilter"] toMSGraphSafeSearchFilterType];
    }
    return _safeSearchFilter;
}

- (void) setSafeSearchFilter: (MSGraphSafeSearchFilterType*) val
{
    _safeSearchFilter = val;
    self.dictionary[@"safeSearchFilter"] = val;
}

- (BOOL) edgeBlockPopups
{
    _edgeBlockPopups = [self.dictionary[@"edgeBlockPopups"] boolValue];
    return _edgeBlockPopups;
}

- (void) setEdgeBlockPopups: (BOOL) val
{
    _edgeBlockPopups = val;
    self.dictionary[@"edgeBlockPopups"] = @(val);
}

- (BOOL) edgeBlockSearchSuggestions
{
    _edgeBlockSearchSuggestions = [self.dictionary[@"edgeBlockSearchSuggestions"] boolValue];
    return _edgeBlockSearchSuggestions;
}

- (void) setEdgeBlockSearchSuggestions: (BOOL) val
{
    _edgeBlockSearchSuggestions = val;
    self.dictionary[@"edgeBlockSearchSuggestions"] = @(val);
}

- (BOOL) edgeBlockSendingIntranetTrafficToInternetExplorer
{
    _edgeBlockSendingIntranetTrafficToInternetExplorer = [self.dictionary[@"edgeBlockSendingIntranetTrafficToInternetExplorer"] boolValue];
    return _edgeBlockSendingIntranetTrafficToInternetExplorer;
}

- (void) setEdgeBlockSendingIntranetTrafficToInternetExplorer: (BOOL) val
{
    _edgeBlockSendingIntranetTrafficToInternetExplorer = val;
    self.dictionary[@"edgeBlockSendingIntranetTrafficToInternetExplorer"] = @(val);
}

- (BOOL) edgeSendIntranetTrafficToInternetExplorer
{
    _edgeSendIntranetTrafficToInternetExplorer = [self.dictionary[@"edgeSendIntranetTrafficToInternetExplorer"] boolValue];
    return _edgeSendIntranetTrafficToInternetExplorer;
}

- (void) setEdgeSendIntranetTrafficToInternetExplorer: (BOOL) val
{
    _edgeSendIntranetTrafficToInternetExplorer = val;
    self.dictionary[@"edgeSendIntranetTrafficToInternetExplorer"] = @(val);
}

- (BOOL) edgeRequireSmartScreen
{
    _edgeRequireSmartScreen = [self.dictionary[@"edgeRequireSmartScreen"] boolValue];
    return _edgeRequireSmartScreen;
}

- (void) setEdgeRequireSmartScreen: (BOOL) val
{
    _edgeRequireSmartScreen = val;
    self.dictionary[@"edgeRequireSmartScreen"] = @(val);
}

- (NSString*) edgeEnterpriseModeSiteListLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"edgeEnterpriseModeSiteListLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"edgeEnterpriseModeSiteListLocation"];
}

- (void) setEdgeEnterpriseModeSiteListLocation: (NSString*) val
{
    self.dictionary[@"edgeEnterpriseModeSiteListLocation"] = val;
}

- (NSString*) edgeFirstRunUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"edgeFirstRunUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"edgeFirstRunUrl"];
}

- (void) setEdgeFirstRunUrl: (NSString*) val
{
    self.dictionary[@"edgeFirstRunUrl"] = val;
}

- (MSGraphEdgeSearchEngineBase*) edgeSearchEngine
{
    if(!_edgeSearchEngine){
        _edgeSearchEngine = [[MSGraphEdgeSearchEngineBase alloc] initWithDictionary: self.dictionary[@"edgeSearchEngine"]];
    }
    return _edgeSearchEngine;
}

- (void) setEdgeSearchEngine: (MSGraphEdgeSearchEngineBase*) val
{
    _edgeSearchEngine = val;
    self.dictionary[@"edgeSearchEngine"] = val;
}

- (NSArray*) edgeHomepageUrls
{
    if([[NSNull null] isEqual:self.dictionary[@"edgeHomepageUrls"]])
    {
        return nil;
    }   
    return self.dictionary[@"edgeHomepageUrls"];
}

- (void) setEdgeHomepageUrls: (NSArray*) val
{
    self.dictionary[@"edgeHomepageUrls"] = val;
}

- (BOOL) edgeBlockAccessToAboutFlags
{
    _edgeBlockAccessToAboutFlags = [self.dictionary[@"edgeBlockAccessToAboutFlags"] boolValue];
    return _edgeBlockAccessToAboutFlags;
}

- (void) setEdgeBlockAccessToAboutFlags: (BOOL) val
{
    _edgeBlockAccessToAboutFlags = val;
    self.dictionary[@"edgeBlockAccessToAboutFlags"] = @(val);
}

- (BOOL) smartScreenBlockPromptOverride
{
    _smartScreenBlockPromptOverride = [self.dictionary[@"smartScreenBlockPromptOverride"] boolValue];
    return _smartScreenBlockPromptOverride;
}

- (void) setSmartScreenBlockPromptOverride: (BOOL) val
{
    _smartScreenBlockPromptOverride = val;
    self.dictionary[@"smartScreenBlockPromptOverride"] = @(val);
}

- (BOOL) smartScreenBlockPromptOverrideForFiles
{
    _smartScreenBlockPromptOverrideForFiles = [self.dictionary[@"smartScreenBlockPromptOverrideForFiles"] boolValue];
    return _smartScreenBlockPromptOverrideForFiles;
}

- (void) setSmartScreenBlockPromptOverrideForFiles: (BOOL) val
{
    _smartScreenBlockPromptOverrideForFiles = val;
    self.dictionary[@"smartScreenBlockPromptOverrideForFiles"] = @(val);
}

- (BOOL) webRtcBlockLocalhostIpAddress
{
    _webRtcBlockLocalhostIpAddress = [self.dictionary[@"webRtcBlockLocalhostIpAddress"] boolValue];
    return _webRtcBlockLocalhostIpAddress;
}

- (void) setWebRtcBlockLocalhostIpAddress: (BOOL) val
{
    _webRtcBlockLocalhostIpAddress = val;
    self.dictionary[@"webRtcBlockLocalhostIpAddress"] = @(val);
}

- (BOOL) internetSharingBlocked
{
    _internetSharingBlocked = [self.dictionary[@"internetSharingBlocked"] boolValue];
    return _internetSharingBlocked;
}

- (void) setInternetSharingBlocked: (BOOL) val
{
    _internetSharingBlocked = val;
    self.dictionary[@"internetSharingBlocked"] = @(val);
}

- (BOOL) settingsBlockAddProvisioningPackage
{
    _settingsBlockAddProvisioningPackage = [self.dictionary[@"settingsBlockAddProvisioningPackage"] boolValue];
    return _settingsBlockAddProvisioningPackage;
}

- (void) setSettingsBlockAddProvisioningPackage: (BOOL) val
{
    _settingsBlockAddProvisioningPackage = val;
    self.dictionary[@"settingsBlockAddProvisioningPackage"] = @(val);
}

- (BOOL) settingsBlockRemoveProvisioningPackage
{
    _settingsBlockRemoveProvisioningPackage = [self.dictionary[@"settingsBlockRemoveProvisioningPackage"] boolValue];
    return _settingsBlockRemoveProvisioningPackage;
}

- (void) setSettingsBlockRemoveProvisioningPackage: (BOOL) val
{
    _settingsBlockRemoveProvisioningPackage = val;
    self.dictionary[@"settingsBlockRemoveProvisioningPackage"] = @(val);
}

- (BOOL) settingsBlockChangeSystemTime
{
    _settingsBlockChangeSystemTime = [self.dictionary[@"settingsBlockChangeSystemTime"] boolValue];
    return _settingsBlockChangeSystemTime;
}

- (void) setSettingsBlockChangeSystemTime: (BOOL) val
{
    _settingsBlockChangeSystemTime = val;
    self.dictionary[@"settingsBlockChangeSystemTime"] = @(val);
}

- (BOOL) settingsBlockEditDeviceName
{
    _settingsBlockEditDeviceName = [self.dictionary[@"settingsBlockEditDeviceName"] boolValue];
    return _settingsBlockEditDeviceName;
}

- (void) setSettingsBlockEditDeviceName: (BOOL) val
{
    _settingsBlockEditDeviceName = val;
    self.dictionary[@"settingsBlockEditDeviceName"] = @(val);
}

- (BOOL) settingsBlockChangeRegion
{
    _settingsBlockChangeRegion = [self.dictionary[@"settingsBlockChangeRegion"] boolValue];
    return _settingsBlockChangeRegion;
}

- (void) setSettingsBlockChangeRegion: (BOOL) val
{
    _settingsBlockChangeRegion = val;
    self.dictionary[@"settingsBlockChangeRegion"] = @(val);
}

- (BOOL) settingsBlockChangeLanguage
{
    _settingsBlockChangeLanguage = [self.dictionary[@"settingsBlockChangeLanguage"] boolValue];
    return _settingsBlockChangeLanguage;
}

- (void) setSettingsBlockChangeLanguage: (BOOL) val
{
    _settingsBlockChangeLanguage = val;
    self.dictionary[@"settingsBlockChangeLanguage"] = @(val);
}

- (BOOL) settingsBlockChangePowerSleep
{
    _settingsBlockChangePowerSleep = [self.dictionary[@"settingsBlockChangePowerSleep"] boolValue];
    return _settingsBlockChangePowerSleep;
}

- (void) setSettingsBlockChangePowerSleep: (BOOL) val
{
    _settingsBlockChangePowerSleep = val;
    self.dictionary[@"settingsBlockChangePowerSleep"] = @(val);
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

- (BOOL) microsoftAccountBlocked
{
    _microsoftAccountBlocked = [self.dictionary[@"microsoftAccountBlocked"] boolValue];
    return _microsoftAccountBlocked;
}

- (void) setMicrosoftAccountBlocked: (BOOL) val
{
    _microsoftAccountBlocked = val;
    self.dictionary[@"microsoftAccountBlocked"] = @(val);
}

- (BOOL) microsoftAccountBlockSettingsSync
{
    _microsoftAccountBlockSettingsSync = [self.dictionary[@"microsoftAccountBlockSettingsSync"] boolValue];
    return _microsoftAccountBlockSettingsSync;
}

- (void) setMicrosoftAccountBlockSettingsSync: (BOOL) val
{
    _microsoftAccountBlockSettingsSync = val;
    self.dictionary[@"microsoftAccountBlockSettingsSync"] = @(val);
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

- (BOOL) resetProtectionModeBlocked
{
    _resetProtectionModeBlocked = [self.dictionary[@"resetProtectionModeBlocked"] boolValue];
    return _resetProtectionModeBlocked;
}

- (void) setResetProtectionModeBlocked: (BOOL) val
{
    _resetProtectionModeBlocked = val;
    self.dictionary[@"resetProtectionModeBlocked"] = @(val);
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

- (BOOL) storageRequireMobileDeviceEncryption
{
    _storageRequireMobileDeviceEncryption = [self.dictionary[@"storageRequireMobileDeviceEncryption"] boolValue];
    return _storageRequireMobileDeviceEncryption;
}

- (void) setStorageRequireMobileDeviceEncryption: (BOOL) val
{
    _storageRequireMobileDeviceEncryption = val;
    self.dictionary[@"storageRequireMobileDeviceEncryption"] = @(val);
}

- (BOOL) usbBlocked
{
    _usbBlocked = [self.dictionary[@"usbBlocked"] boolValue];
    return _usbBlocked;
}

- (void) setUsbBlocked: (BOOL) val
{
    _usbBlocked = val;
    self.dictionary[@"usbBlocked"] = @(val);
}

- (BOOL) voiceRecordingBlocked
{
    _voiceRecordingBlocked = [self.dictionary[@"voiceRecordingBlocked"] boolValue];
    return _voiceRecordingBlocked;
}

- (void) setVoiceRecordingBlocked: (BOOL) val
{
    _voiceRecordingBlocked = val;
    self.dictionary[@"voiceRecordingBlocked"] = @(val);
}

- (BOOL) wiFiBlockAutomaticConnectHotspots
{
    _wiFiBlockAutomaticConnectHotspots = [self.dictionary[@"wiFiBlockAutomaticConnectHotspots"] boolValue];
    return _wiFiBlockAutomaticConnectHotspots;
}

- (void) setWiFiBlockAutomaticConnectHotspots: (BOOL) val
{
    _wiFiBlockAutomaticConnectHotspots = val;
    self.dictionary[@"wiFiBlockAutomaticConnectHotspots"] = @(val);
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

- (BOOL) wiFiBlockManualConfiguration
{
    _wiFiBlockManualConfiguration = [self.dictionary[@"wiFiBlockManualConfiguration"] boolValue];
    return _wiFiBlockManualConfiguration;
}

- (void) setWiFiBlockManualConfiguration: (BOOL) val
{
    _wiFiBlockManualConfiguration = val;
    self.dictionary[@"wiFiBlockManualConfiguration"] = @(val);
}

- (int32_t) wiFiScanInterval
{
    _wiFiScanInterval = [self.dictionary[@"wiFiScanInterval"] intValue];
    return _wiFiScanInterval;
}

- (void) setWiFiScanInterval: (int32_t) val
{
    _wiFiScanInterval = val;
    self.dictionary[@"wiFiScanInterval"] = @(val);
}

- (BOOL) wirelessDisplayBlockProjectionToThisDevice
{
    _wirelessDisplayBlockProjectionToThisDevice = [self.dictionary[@"wirelessDisplayBlockProjectionToThisDevice"] boolValue];
    return _wirelessDisplayBlockProjectionToThisDevice;
}

- (void) setWirelessDisplayBlockProjectionToThisDevice: (BOOL) val
{
    _wirelessDisplayBlockProjectionToThisDevice = val;
    self.dictionary[@"wirelessDisplayBlockProjectionToThisDevice"] = @(val);
}

- (BOOL) wirelessDisplayBlockUserInputFromReceiver
{
    _wirelessDisplayBlockUserInputFromReceiver = [self.dictionary[@"wirelessDisplayBlockUserInputFromReceiver"] boolValue];
    return _wirelessDisplayBlockUserInputFromReceiver;
}

- (void) setWirelessDisplayBlockUserInputFromReceiver: (BOOL) val
{
    _wirelessDisplayBlockUserInputFromReceiver = val;
    self.dictionary[@"wirelessDisplayBlockUserInputFromReceiver"] = @(val);
}

- (BOOL) wirelessDisplayRequirePinForPairing
{
    _wirelessDisplayRequirePinForPairing = [self.dictionary[@"wirelessDisplayRequirePinForPairing"] boolValue];
    return _wirelessDisplayRequirePinForPairing;
}

- (void) setWirelessDisplayRequirePinForPairing: (BOOL) val
{
    _wirelessDisplayRequirePinForPairing = val;
    self.dictionary[@"wirelessDisplayRequirePinForPairing"] = @(val);
}

- (BOOL) windowsStoreBlocked
{
    _windowsStoreBlocked = [self.dictionary[@"windowsStoreBlocked"] boolValue];
    return _windowsStoreBlocked;
}

- (void) setWindowsStoreBlocked: (BOOL) val
{
    _windowsStoreBlocked = val;
    self.dictionary[@"windowsStoreBlocked"] = @(val);
}

- (MSGraphStateManagementSetting*) appsAllowTrustedAppsSideloading
{
    if(!_appsAllowTrustedAppsSideloading){
        _appsAllowTrustedAppsSideloading = [self.dictionary[@"appsAllowTrustedAppsSideloading"] toMSGraphStateManagementSetting];
    }
    return _appsAllowTrustedAppsSideloading;
}

- (void) setAppsAllowTrustedAppsSideloading: (MSGraphStateManagementSetting*) val
{
    _appsAllowTrustedAppsSideloading = val;
    self.dictionary[@"appsAllowTrustedAppsSideloading"] = val;
}

- (BOOL) windowsStoreBlockAutoUpdate
{
    _windowsStoreBlockAutoUpdate = [self.dictionary[@"windowsStoreBlockAutoUpdate"] boolValue];
    return _windowsStoreBlockAutoUpdate;
}

- (void) setWindowsStoreBlockAutoUpdate: (BOOL) val
{
    _windowsStoreBlockAutoUpdate = val;
    self.dictionary[@"windowsStoreBlockAutoUpdate"] = @(val);
}

- (MSGraphStateManagementSetting*) developerUnlockSetting
{
    if(!_developerUnlockSetting){
        _developerUnlockSetting = [self.dictionary[@"developerUnlockSetting"] toMSGraphStateManagementSetting];
    }
    return _developerUnlockSetting;
}

- (void) setDeveloperUnlockSetting: (MSGraphStateManagementSetting*) val
{
    _developerUnlockSetting = val;
    self.dictionary[@"developerUnlockSetting"] = val;
}

- (BOOL) sharedUserAppDataAllowed
{
    _sharedUserAppDataAllowed = [self.dictionary[@"sharedUserAppDataAllowed"] boolValue];
    return _sharedUserAppDataAllowed;
}

- (void) setSharedUserAppDataAllowed: (BOOL) val
{
    _sharedUserAppDataAllowed = val;
    self.dictionary[@"sharedUserAppDataAllowed"] = @(val);
}

- (BOOL) appsBlockWindowsStoreOriginatedApps
{
    _appsBlockWindowsStoreOriginatedApps = [self.dictionary[@"appsBlockWindowsStoreOriginatedApps"] boolValue];
    return _appsBlockWindowsStoreOriginatedApps;
}

- (void) setAppsBlockWindowsStoreOriginatedApps: (BOOL) val
{
    _appsBlockWindowsStoreOriginatedApps = val;
    self.dictionary[@"appsBlockWindowsStoreOriginatedApps"] = @(val);
}

- (BOOL) windowsStoreEnablePrivateStoreOnly
{
    _windowsStoreEnablePrivateStoreOnly = [self.dictionary[@"windowsStoreEnablePrivateStoreOnly"] boolValue];
    return _windowsStoreEnablePrivateStoreOnly;
}

- (void) setWindowsStoreEnablePrivateStoreOnly: (BOOL) val
{
    _windowsStoreEnablePrivateStoreOnly = val;
    self.dictionary[@"windowsStoreEnablePrivateStoreOnly"] = @(val);
}

- (BOOL) storageRestrictAppDataToSystemVolume
{
    _storageRestrictAppDataToSystemVolume = [self.dictionary[@"storageRestrictAppDataToSystemVolume"] boolValue];
    return _storageRestrictAppDataToSystemVolume;
}

- (void) setStorageRestrictAppDataToSystemVolume: (BOOL) val
{
    _storageRestrictAppDataToSystemVolume = val;
    self.dictionary[@"storageRestrictAppDataToSystemVolume"] = @(val);
}

- (BOOL) storageRestrictAppInstallToSystemVolume
{
    _storageRestrictAppInstallToSystemVolume = [self.dictionary[@"storageRestrictAppInstallToSystemVolume"] boolValue];
    return _storageRestrictAppInstallToSystemVolume;
}

- (void) setStorageRestrictAppInstallToSystemVolume: (BOOL) val
{
    _storageRestrictAppInstallToSystemVolume = val;
    self.dictionary[@"storageRestrictAppInstallToSystemVolume"] = @(val);
}

- (BOOL) gameDvrBlocked
{
    _gameDvrBlocked = [self.dictionary[@"gameDvrBlocked"] boolValue];
    return _gameDvrBlocked;
}

- (void) setGameDvrBlocked: (BOOL) val
{
    _gameDvrBlocked = val;
    self.dictionary[@"gameDvrBlocked"] = @(val);
}

- (BOOL) experienceBlockDeviceDiscovery
{
    _experienceBlockDeviceDiscovery = [self.dictionary[@"experienceBlockDeviceDiscovery"] boolValue];
    return _experienceBlockDeviceDiscovery;
}

- (void) setExperienceBlockDeviceDiscovery: (BOOL) val
{
    _experienceBlockDeviceDiscovery = val;
    self.dictionary[@"experienceBlockDeviceDiscovery"] = @(val);
}

- (BOOL) experienceBlockErrorDialogWhenNoSIM
{
    _experienceBlockErrorDialogWhenNoSIM = [self.dictionary[@"experienceBlockErrorDialogWhenNoSIM"] boolValue];
    return _experienceBlockErrorDialogWhenNoSIM;
}

- (void) setExperienceBlockErrorDialogWhenNoSIM: (BOOL) val
{
    _experienceBlockErrorDialogWhenNoSIM = val;
    self.dictionary[@"experienceBlockErrorDialogWhenNoSIM"] = @(val);
}

- (BOOL) experienceBlockTaskSwitcher
{
    _experienceBlockTaskSwitcher = [self.dictionary[@"experienceBlockTaskSwitcher"] boolValue];
    return _experienceBlockTaskSwitcher;
}

- (void) setExperienceBlockTaskSwitcher: (BOOL) val
{
    _experienceBlockTaskSwitcher = val;
    self.dictionary[@"experienceBlockTaskSwitcher"] = @(val);
}

- (BOOL) logonBlockFastUserSwitching
{
    _logonBlockFastUserSwitching = [self.dictionary[@"logonBlockFastUserSwitching"] boolValue];
    return _logonBlockFastUserSwitching;
}

- (void) setLogonBlockFastUserSwitching: (BOOL) val
{
    _logonBlockFastUserSwitching = val;
    self.dictionary[@"logonBlockFastUserSwitching"] = @(val);
}

- (BOOL) tenantLockdownRequireNetworkDuringOutOfBoxExperience
{
    _tenantLockdownRequireNetworkDuringOutOfBoxExperience = [self.dictionary[@"tenantLockdownRequireNetworkDuringOutOfBoxExperience"] boolValue];
    return _tenantLockdownRequireNetworkDuringOutOfBoxExperience;
}

- (void) setTenantLockdownRequireNetworkDuringOutOfBoxExperience: (BOOL) val
{
    _tenantLockdownRequireNetworkDuringOutOfBoxExperience = val;
    self.dictionary[@"tenantLockdownRequireNetworkDuringOutOfBoxExperience"] = @(val);
}


@end
