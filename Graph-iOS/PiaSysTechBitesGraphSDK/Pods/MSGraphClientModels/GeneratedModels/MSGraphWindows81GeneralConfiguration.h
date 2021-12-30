// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphInternetSiteSecurityLevel.h"
#import "MSGraphSiteSecurityLevel.h"
#import "MSGraphRequiredPasswordType.h"
#import "MSGraphWindowsUserAccountControlSettings.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows81GeneralConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAccountsBlockAddingNonMicrosoftAccountEmail:, getter=accountsBlockAddingNonMicrosoftAccountEmail) BOOL accountsBlockAddingNonMicrosoftAccountEmail;
    @property (nonatomic, setter=setApplyOnlyToWindows81:, getter=applyOnlyToWindows81) BOOL applyOnlyToWindows81;
    @property (nonatomic, setter=setBrowserBlockAutofill:, getter=browserBlockAutofill) BOOL browserBlockAutofill;
    @property (nonatomic, setter=setBrowserBlockAutomaticDetectionOfIntranetSites:, getter=browserBlockAutomaticDetectionOfIntranetSites) BOOL browserBlockAutomaticDetectionOfIntranetSites;
    @property (nonatomic, setter=setBrowserBlockEnterpriseModeAccess:, getter=browserBlockEnterpriseModeAccess) BOOL browserBlockEnterpriseModeAccess;
    @property (nonatomic, setter=setBrowserBlockJavaScript:, getter=browserBlockJavaScript) BOOL browserBlockJavaScript;
    @property (nonatomic, setter=setBrowserBlockPlugins:, getter=browserBlockPlugins) BOOL browserBlockPlugins;
    @property (nonatomic, setter=setBrowserBlockPopups:, getter=browserBlockPopups) BOOL browserBlockPopups;
    @property (nonatomic, setter=setBrowserBlockSendingDoNotTrackHeader:, getter=browserBlockSendingDoNotTrackHeader) BOOL browserBlockSendingDoNotTrackHeader;
    @property (nonatomic, setter=setBrowserBlockSingleWordEntryOnIntranetSites:, getter=browserBlockSingleWordEntryOnIntranetSites) BOOL browserBlockSingleWordEntryOnIntranetSites;
    @property (nonatomic, setter=setBrowserRequireSmartScreen:, getter=browserRequireSmartScreen) BOOL browserRequireSmartScreen;
    @property (nullable, nonatomic, setter=setBrowserEnterpriseModeSiteListLocation:, getter=browserEnterpriseModeSiteListLocation) NSString* browserEnterpriseModeSiteListLocation;
    @property (nonnull, nonatomic, setter=setBrowserInternetSecurityLevel:, getter=browserInternetSecurityLevel) MSGraphInternetSiteSecurityLevel* browserInternetSecurityLevel;
    @property (nonnull, nonatomic, setter=setBrowserIntranetSecurityLevel:, getter=browserIntranetSecurityLevel) MSGraphSiteSecurityLevel* browserIntranetSecurityLevel;
    @property (nullable, nonatomic, setter=setBrowserLoggingReportLocation:, getter=browserLoggingReportLocation) NSString* browserLoggingReportLocation;
    @property (nonatomic, setter=setBrowserRequireHighSecurityForRestrictedSites:, getter=browserRequireHighSecurityForRestrictedSites) BOOL browserRequireHighSecurityForRestrictedSites;
    @property (nonatomic, setter=setBrowserRequireFirewall:, getter=browserRequireFirewall) BOOL browserRequireFirewall;
    @property (nonatomic, setter=setBrowserRequireFraudWarning:, getter=browserRequireFraudWarning) BOOL browserRequireFraudWarning;
    @property (nonnull, nonatomic, setter=setBrowserTrustedSitesSecurityLevel:, getter=browserTrustedSitesSecurityLevel) MSGraphSiteSecurityLevel* browserTrustedSitesSecurityLevel;
    @property (nonatomic, setter=setCellularBlockDataRoaming:, getter=cellularBlockDataRoaming) BOOL cellularBlockDataRoaming;
    @property (nonatomic, setter=setDiagnosticsBlockDataSubmission:, getter=diagnosticsBlockDataSubmission) BOOL diagnosticsBlockDataSubmission;
    @property (nonatomic, setter=setPasswordBlockPicturePasswordAndPin:, getter=passwordBlockPicturePasswordAndPin) BOOL passwordBlockPicturePasswordAndPin;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setPasswordSignInFailureCountBeforeFactoryReset:, getter=passwordSignInFailureCountBeforeFactoryReset) int32_t passwordSignInFailureCountBeforeFactoryReset;
    @property (nonatomic, setter=setStorageRequireDeviceEncryption:, getter=storageRequireDeviceEncryption) BOOL storageRequireDeviceEncryption;
    @property (nonatomic, setter=setUpdatesRequireAutomaticUpdates:, getter=updatesRequireAutomaticUpdates) BOOL updatesRequireAutomaticUpdates;
    @property (nonnull, nonatomic, setter=setUserAccountControlSettings:, getter=userAccountControlSettings) MSGraphWindowsUserAccountControlSettings* userAccountControlSettings;
    @property (nullable, nonatomic, setter=setWorkFoldersUrl:, getter=workFoldersUrl) NSString* workFoldersUrl;
  
@end
