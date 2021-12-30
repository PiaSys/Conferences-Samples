// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows81GeneralConfiguration()
{
    BOOL _accountsBlockAddingNonMicrosoftAccountEmail;
    BOOL _applyOnlyToWindows81;
    BOOL _browserBlockAutofill;
    BOOL _browserBlockAutomaticDetectionOfIntranetSites;
    BOOL _browserBlockEnterpriseModeAccess;
    BOOL _browserBlockJavaScript;
    BOOL _browserBlockPlugins;
    BOOL _browserBlockPopups;
    BOOL _browserBlockSendingDoNotTrackHeader;
    BOOL _browserBlockSingleWordEntryOnIntranetSites;
    BOOL _browserRequireSmartScreen;
    NSString* _browserEnterpriseModeSiteListLocation;
    MSGraphInternetSiteSecurityLevel* _browserInternetSecurityLevel;
    MSGraphSiteSecurityLevel* _browserIntranetSecurityLevel;
    NSString* _browserLoggingReportLocation;
    BOOL _browserRequireHighSecurityForRestrictedSites;
    BOOL _browserRequireFirewall;
    BOOL _browserRequireFraudWarning;
    MSGraphSiteSecurityLevel* _browserTrustedSitesSecurityLevel;
    BOOL _cellularBlockDataRoaming;
    BOOL _diagnosticsBlockDataSubmission;
    BOOL _passwordBlockPicturePasswordAndPin;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordMinimumCharacterSetCount;
    int32_t _passwordPreviousPasswordBlockCount;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    int32_t _passwordSignInFailureCountBeforeFactoryReset;
    BOOL _storageRequireDeviceEncryption;
    BOOL _updatesRequireAutomaticUpdates;
    MSGraphWindowsUserAccountControlSettings* _userAccountControlSettings;
    NSString* _workFoldersUrl;
}
@end

@implementation MSGraphWindows81GeneralConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows81GeneralConfiguration";
    }
    return self;
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

- (BOOL) applyOnlyToWindows81
{
    _applyOnlyToWindows81 = [self.dictionary[@"applyOnlyToWindows81"] boolValue];
    return _applyOnlyToWindows81;
}

- (void) setApplyOnlyToWindows81: (BOOL) val
{
    _applyOnlyToWindows81 = val;
    self.dictionary[@"applyOnlyToWindows81"] = @(val);
}

- (BOOL) browserBlockAutofill
{
    _browserBlockAutofill = [self.dictionary[@"browserBlockAutofill"] boolValue];
    return _browserBlockAutofill;
}

- (void) setBrowserBlockAutofill: (BOOL) val
{
    _browserBlockAutofill = val;
    self.dictionary[@"browserBlockAutofill"] = @(val);
}

- (BOOL) browserBlockAutomaticDetectionOfIntranetSites
{
    _browserBlockAutomaticDetectionOfIntranetSites = [self.dictionary[@"browserBlockAutomaticDetectionOfIntranetSites"] boolValue];
    return _browserBlockAutomaticDetectionOfIntranetSites;
}

- (void) setBrowserBlockAutomaticDetectionOfIntranetSites: (BOOL) val
{
    _browserBlockAutomaticDetectionOfIntranetSites = val;
    self.dictionary[@"browserBlockAutomaticDetectionOfIntranetSites"] = @(val);
}

- (BOOL) browserBlockEnterpriseModeAccess
{
    _browserBlockEnterpriseModeAccess = [self.dictionary[@"browserBlockEnterpriseModeAccess"] boolValue];
    return _browserBlockEnterpriseModeAccess;
}

- (void) setBrowserBlockEnterpriseModeAccess: (BOOL) val
{
    _browserBlockEnterpriseModeAccess = val;
    self.dictionary[@"browserBlockEnterpriseModeAccess"] = @(val);
}

- (BOOL) browserBlockJavaScript
{
    _browserBlockJavaScript = [self.dictionary[@"browserBlockJavaScript"] boolValue];
    return _browserBlockJavaScript;
}

- (void) setBrowserBlockJavaScript: (BOOL) val
{
    _browserBlockJavaScript = val;
    self.dictionary[@"browserBlockJavaScript"] = @(val);
}

- (BOOL) browserBlockPlugins
{
    _browserBlockPlugins = [self.dictionary[@"browserBlockPlugins"] boolValue];
    return _browserBlockPlugins;
}

- (void) setBrowserBlockPlugins: (BOOL) val
{
    _browserBlockPlugins = val;
    self.dictionary[@"browserBlockPlugins"] = @(val);
}

- (BOOL) browserBlockPopups
{
    _browserBlockPopups = [self.dictionary[@"browserBlockPopups"] boolValue];
    return _browserBlockPopups;
}

- (void) setBrowserBlockPopups: (BOOL) val
{
    _browserBlockPopups = val;
    self.dictionary[@"browserBlockPopups"] = @(val);
}

- (BOOL) browserBlockSendingDoNotTrackHeader
{
    _browserBlockSendingDoNotTrackHeader = [self.dictionary[@"browserBlockSendingDoNotTrackHeader"] boolValue];
    return _browserBlockSendingDoNotTrackHeader;
}

- (void) setBrowserBlockSendingDoNotTrackHeader: (BOOL) val
{
    _browserBlockSendingDoNotTrackHeader = val;
    self.dictionary[@"browserBlockSendingDoNotTrackHeader"] = @(val);
}

- (BOOL) browserBlockSingleWordEntryOnIntranetSites
{
    _browserBlockSingleWordEntryOnIntranetSites = [self.dictionary[@"browserBlockSingleWordEntryOnIntranetSites"] boolValue];
    return _browserBlockSingleWordEntryOnIntranetSites;
}

- (void) setBrowserBlockSingleWordEntryOnIntranetSites: (BOOL) val
{
    _browserBlockSingleWordEntryOnIntranetSites = val;
    self.dictionary[@"browserBlockSingleWordEntryOnIntranetSites"] = @(val);
}

- (BOOL) browserRequireSmartScreen
{
    _browserRequireSmartScreen = [self.dictionary[@"browserRequireSmartScreen"] boolValue];
    return _browserRequireSmartScreen;
}

- (void) setBrowserRequireSmartScreen: (BOOL) val
{
    _browserRequireSmartScreen = val;
    self.dictionary[@"browserRequireSmartScreen"] = @(val);
}

- (NSString*) browserEnterpriseModeSiteListLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"browserEnterpriseModeSiteListLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"browserEnterpriseModeSiteListLocation"];
}

- (void) setBrowserEnterpriseModeSiteListLocation: (NSString*) val
{
    self.dictionary[@"browserEnterpriseModeSiteListLocation"] = val;
}

- (MSGraphInternetSiteSecurityLevel*) browserInternetSecurityLevel
{
    if(!_browserInternetSecurityLevel){
        _browserInternetSecurityLevel = [self.dictionary[@"browserInternetSecurityLevel"] toMSGraphInternetSiteSecurityLevel];
    }
    return _browserInternetSecurityLevel;
}

- (void) setBrowserInternetSecurityLevel: (MSGraphInternetSiteSecurityLevel*) val
{
    _browserInternetSecurityLevel = val;
    self.dictionary[@"browserInternetSecurityLevel"] = val;
}

- (MSGraphSiteSecurityLevel*) browserIntranetSecurityLevel
{
    if(!_browserIntranetSecurityLevel){
        _browserIntranetSecurityLevel = [self.dictionary[@"browserIntranetSecurityLevel"] toMSGraphSiteSecurityLevel];
    }
    return _browserIntranetSecurityLevel;
}

- (void) setBrowserIntranetSecurityLevel: (MSGraphSiteSecurityLevel*) val
{
    _browserIntranetSecurityLevel = val;
    self.dictionary[@"browserIntranetSecurityLevel"] = val;
}

- (NSString*) browserLoggingReportLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"browserLoggingReportLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"browserLoggingReportLocation"];
}

- (void) setBrowserLoggingReportLocation: (NSString*) val
{
    self.dictionary[@"browserLoggingReportLocation"] = val;
}

- (BOOL) browserRequireHighSecurityForRestrictedSites
{
    _browserRequireHighSecurityForRestrictedSites = [self.dictionary[@"browserRequireHighSecurityForRestrictedSites"] boolValue];
    return _browserRequireHighSecurityForRestrictedSites;
}

- (void) setBrowserRequireHighSecurityForRestrictedSites: (BOOL) val
{
    _browserRequireHighSecurityForRestrictedSites = val;
    self.dictionary[@"browserRequireHighSecurityForRestrictedSites"] = @(val);
}

- (BOOL) browserRequireFirewall
{
    _browserRequireFirewall = [self.dictionary[@"browserRequireFirewall"] boolValue];
    return _browserRequireFirewall;
}

- (void) setBrowserRequireFirewall: (BOOL) val
{
    _browserRequireFirewall = val;
    self.dictionary[@"browserRequireFirewall"] = @(val);
}

- (BOOL) browserRequireFraudWarning
{
    _browserRequireFraudWarning = [self.dictionary[@"browserRequireFraudWarning"] boolValue];
    return _browserRequireFraudWarning;
}

- (void) setBrowserRequireFraudWarning: (BOOL) val
{
    _browserRequireFraudWarning = val;
    self.dictionary[@"browserRequireFraudWarning"] = @(val);
}

- (MSGraphSiteSecurityLevel*) browserTrustedSitesSecurityLevel
{
    if(!_browserTrustedSitesSecurityLevel){
        _browserTrustedSitesSecurityLevel = [self.dictionary[@"browserTrustedSitesSecurityLevel"] toMSGraphSiteSecurityLevel];
    }
    return _browserTrustedSitesSecurityLevel;
}

- (void) setBrowserTrustedSitesSecurityLevel: (MSGraphSiteSecurityLevel*) val
{
    _browserTrustedSitesSecurityLevel = val;
    self.dictionary[@"browserTrustedSitesSecurityLevel"] = val;
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

- (BOOL) diagnosticsBlockDataSubmission
{
    _diagnosticsBlockDataSubmission = [self.dictionary[@"diagnosticsBlockDataSubmission"] boolValue];
    return _diagnosticsBlockDataSubmission;
}

- (void) setDiagnosticsBlockDataSubmission: (BOOL) val
{
    _diagnosticsBlockDataSubmission = val;
    self.dictionary[@"diagnosticsBlockDataSubmission"] = @(val);
}

- (BOOL) passwordBlockPicturePasswordAndPin
{
    _passwordBlockPicturePasswordAndPin = [self.dictionary[@"passwordBlockPicturePasswordAndPin"] boolValue];
    return _passwordBlockPicturePasswordAndPin;
}

- (void) setPasswordBlockPicturePasswordAndPin: (BOOL) val
{
    _passwordBlockPicturePasswordAndPin = val;
    self.dictionary[@"passwordBlockPicturePasswordAndPin"] = @(val);
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

- (BOOL) updatesRequireAutomaticUpdates
{
    _updatesRequireAutomaticUpdates = [self.dictionary[@"updatesRequireAutomaticUpdates"] boolValue];
    return _updatesRequireAutomaticUpdates;
}

- (void) setUpdatesRequireAutomaticUpdates: (BOOL) val
{
    _updatesRequireAutomaticUpdates = val;
    self.dictionary[@"updatesRequireAutomaticUpdates"] = @(val);
}

- (MSGraphWindowsUserAccountControlSettings*) userAccountControlSettings
{
    if(!_userAccountControlSettings){
        _userAccountControlSettings = [self.dictionary[@"userAccountControlSettings"] toMSGraphWindowsUserAccountControlSettings];
    }
    return _userAccountControlSettings;
}

- (void) setUserAccountControlSettings: (MSGraphWindowsUserAccountControlSettings*) val
{
    _userAccountControlSettings = val;
    self.dictionary[@"userAccountControlSettings"] = val;
}

- (NSString*) workFoldersUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"workFoldersUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"workFoldersUrl"];
}

- (void) setWorkFoldersUrl: (NSString*) val
{
    self.dictionary[@"workFoldersUrl"] = val;
}


@end
