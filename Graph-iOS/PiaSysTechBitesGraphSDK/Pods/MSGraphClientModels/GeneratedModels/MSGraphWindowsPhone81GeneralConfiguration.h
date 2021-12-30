// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppListItem; 
#import "MSGraphAppListType.h"
#import "MSGraphRequiredPasswordType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindowsPhone81GeneralConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setApplyOnlyToWindowsPhone81:, getter=applyOnlyToWindowsPhone81) BOOL applyOnlyToWindowsPhone81;
    @property (nonatomic, setter=setAppsBlockCopyPaste:, getter=appsBlockCopyPaste) BOOL appsBlockCopyPaste;
    @property (nonatomic, setter=setBluetoothBlocked:, getter=bluetoothBlocked) BOOL bluetoothBlocked;
    @property (nonatomic, setter=setCameraBlocked:, getter=cameraBlocked) BOOL cameraBlocked;
    @property (nonatomic, setter=setCellularBlockWifiTethering:, getter=cellularBlockWifiTethering) BOOL cellularBlockWifiTethering;
    @property (nullable, nonatomic, setter=setCompliantAppsList:, getter=compliantAppsList) NSArray* compliantAppsList;
    @property (nonnull, nonatomic, setter=setCompliantAppListType:, getter=compliantAppListType) MSGraphAppListType* compliantAppListType;
    @property (nonatomic, setter=setDiagnosticDataBlockSubmission:, getter=diagnosticDataBlockSubmission) BOOL diagnosticDataBlockSubmission;
    @property (nonatomic, setter=setEmailBlockAddingAccounts:, getter=emailBlockAddingAccounts) BOOL emailBlockAddingAccounts;
    @property (nonatomic, setter=setLocationServicesBlocked:, getter=locationServicesBlocked) BOOL locationServicesBlocked;
    @property (nonatomic, setter=setMicrosoftAccountBlocked:, getter=microsoftAccountBlocked) BOOL microsoftAccountBlocked;
    @property (nonatomic, setter=setNfcBlocked:, getter=nfcBlocked) BOOL nfcBlocked;
    @property (nonatomic, setter=setPasswordBlockSimple:, getter=passwordBlockSimple) BOOL passwordBlockSimple;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeScreenTimeout:, getter=passwordMinutesOfInactivityBeforeScreenTimeout) int32_t passwordMinutesOfInactivityBeforeScreenTimeout;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordSignInFailureCountBeforeFactoryReset:, getter=passwordSignInFailureCountBeforeFactoryReset) int32_t passwordSignInFailureCountBeforeFactoryReset;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonatomic, setter=setScreenCaptureBlocked:, getter=screenCaptureBlocked) BOOL screenCaptureBlocked;
    @property (nonatomic, setter=setStorageBlockRemovableStorage:, getter=storageBlockRemovableStorage) BOOL storageBlockRemovableStorage;
    @property (nonatomic, setter=setStorageRequireEncryption:, getter=storageRequireEncryption) BOOL storageRequireEncryption;
    @property (nonatomic, setter=setWebBrowserBlocked:, getter=webBrowserBlocked) BOOL webBrowserBlocked;
    @property (nonatomic, setter=setWifiBlocked:, getter=wifiBlocked) BOOL wifiBlocked;
    @property (nonatomic, setter=setWifiBlockAutomaticConnectHotspots:, getter=wifiBlockAutomaticConnectHotspots) BOOL wifiBlockAutomaticConnectHotspots;
    @property (nonatomic, setter=setWifiBlockHotspotReporting:, getter=wifiBlockHotspotReporting) BOOL wifiBlockHotspotReporting;
    @property (nonatomic, setter=setWindowsStoreBlocked:, getter=windowsStoreBlocked) BOOL windowsStoreBlocked;
  
@end
