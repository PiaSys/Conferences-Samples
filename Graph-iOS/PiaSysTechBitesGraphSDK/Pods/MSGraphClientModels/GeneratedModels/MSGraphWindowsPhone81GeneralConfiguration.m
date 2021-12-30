// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsPhone81GeneralConfiguration()
{
    BOOL _applyOnlyToWindowsPhone81;
    BOOL _appsBlockCopyPaste;
    BOOL _bluetoothBlocked;
    BOOL _cameraBlocked;
    BOOL _cellularBlockWifiTethering;
    NSArray* _compliantAppsList;
    MSGraphAppListType* _compliantAppListType;
    BOOL _diagnosticDataBlockSubmission;
    BOOL _emailBlockAddingAccounts;
    BOOL _locationServicesBlocked;
    BOOL _microsoftAccountBlocked;
    BOOL _nfcBlocked;
    BOOL _passwordBlockSimple;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeScreenTimeout;
    int32_t _passwordMinimumCharacterSetCount;
    int32_t _passwordPreviousPasswordBlockCount;
    int32_t _passwordSignInFailureCountBeforeFactoryReset;
    MSGraphRequiredPasswordType* _passwordRequiredType;
    BOOL _passwordRequired;
    BOOL _screenCaptureBlocked;
    BOOL _storageBlockRemovableStorage;
    BOOL _storageRequireEncryption;
    BOOL _webBrowserBlocked;
    BOOL _wifiBlocked;
    BOOL _wifiBlockAutomaticConnectHotspots;
    BOOL _wifiBlockHotspotReporting;
    BOOL _windowsStoreBlocked;
}
@end

@implementation MSGraphWindowsPhone81GeneralConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsPhone81GeneralConfiguration";
    }
    return self;
}
- (BOOL) applyOnlyToWindowsPhone81
{
    _applyOnlyToWindowsPhone81 = [self.dictionary[@"applyOnlyToWindowsPhone81"] boolValue];
    return _applyOnlyToWindowsPhone81;
}

- (void) setApplyOnlyToWindowsPhone81: (BOOL) val
{
    _applyOnlyToWindowsPhone81 = val;
    self.dictionary[@"applyOnlyToWindowsPhone81"] = @(val);
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

- (BOOL) cellularBlockWifiTethering
{
    _cellularBlockWifiTethering = [self.dictionary[@"cellularBlockWifiTethering"] boolValue];
    return _cellularBlockWifiTethering;
}

- (void) setCellularBlockWifiTethering: (BOOL) val
{
    _cellularBlockWifiTethering = val;
    self.dictionary[@"cellularBlockWifiTethering"] = @(val);
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

- (BOOL) emailBlockAddingAccounts
{
    _emailBlockAddingAccounts = [self.dictionary[@"emailBlockAddingAccounts"] boolValue];
    return _emailBlockAddingAccounts;
}

- (void) setEmailBlockAddingAccounts: (BOOL) val
{
    _emailBlockAddingAccounts = val;
    self.dictionary[@"emailBlockAddingAccounts"] = @(val);
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

- (BOOL) storageRequireEncryption
{
    _storageRequireEncryption = [self.dictionary[@"storageRequireEncryption"] boolValue];
    return _storageRequireEncryption;
}

- (void) setStorageRequireEncryption: (BOOL) val
{
    _storageRequireEncryption = val;
    self.dictionary[@"storageRequireEncryption"] = @(val);
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

- (BOOL) wifiBlocked
{
    _wifiBlocked = [self.dictionary[@"wifiBlocked"] boolValue];
    return _wifiBlocked;
}

- (void) setWifiBlocked: (BOOL) val
{
    _wifiBlocked = val;
    self.dictionary[@"wifiBlocked"] = @(val);
}

- (BOOL) wifiBlockAutomaticConnectHotspots
{
    _wifiBlockAutomaticConnectHotspots = [self.dictionary[@"wifiBlockAutomaticConnectHotspots"] boolValue];
    return _wifiBlockAutomaticConnectHotspots;
}

- (void) setWifiBlockAutomaticConnectHotspots: (BOOL) val
{
    _wifiBlockAutomaticConnectHotspots = val;
    self.dictionary[@"wifiBlockAutomaticConnectHotspots"] = @(val);
}

- (BOOL) wifiBlockHotspotReporting
{
    _wifiBlockHotspotReporting = [self.dictionary[@"wifiBlockHotspotReporting"] boolValue];
    return _wifiBlockHotspotReporting;
}

- (void) setWifiBlockHotspotReporting: (BOOL) val
{
    _wifiBlockHotspotReporting = val;
    self.dictionary[@"wifiBlockHotspotReporting"] = @(val);
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


@end
