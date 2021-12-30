// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppProtection()
{
    MSDuration* _periodOfflineBeforeAccessCheck;
    MSDuration* _periodOnlineBeforeAccessCheck;
    MSGraphManagedAppDataTransferLevel* _allowedInboundDataTransferSources;
    MSGraphManagedAppDataTransferLevel* _allowedOutboundDataTransferDestinations;
    BOOL _organizationalCredentialsRequired;
    MSGraphManagedAppClipboardSharingLevel* _allowedOutboundClipboardSharingLevel;
    BOOL _dataBackupBlocked;
    BOOL _deviceComplianceRequired;
    BOOL _managedBrowserToOpenLinksRequired;
    BOOL _saveAsBlocked;
    MSDuration* _periodOfflineBeforeWipeIsEnforced;
    BOOL _pinRequired;
    int32_t _maximumPinRetries;
    BOOL _simplePinBlocked;
    int32_t _minimumPinLength;
    MSGraphManagedAppPinCharacterSet* _pinCharacterSet;
    MSDuration* _periodBeforePinReset;
    NSArray* _allowedDataStorageLocations;
    BOOL _contactSyncBlocked;
    BOOL _printBlocked;
    BOOL _fingerprintBlocked;
    BOOL _disableAppPinIfDevicePinIsSet;
    NSString* _minimumRequiredOsVersion;
    NSString* _minimumWarningOsVersion;
    NSString* _minimumRequiredAppVersion;
    NSString* _minimumWarningAppVersion;
}
@end

@implementation MSGraphManagedAppProtection

- (MSDuration*) periodOfflineBeforeAccessCheck
{
    if(!_periodOfflineBeforeAccessCheck){
        _periodOfflineBeforeAccessCheck = [MSDuration ms_durationFromString: self.dictionary[@"periodOfflineBeforeAccessCheck"]];
    }
    return _periodOfflineBeforeAccessCheck;
}

- (void) setPeriodOfflineBeforeAccessCheck: (MSDuration*) val
{
    _periodOfflineBeforeAccessCheck = val;
    self.dictionary[@"periodOfflineBeforeAccessCheck"] = val.durationString;
}

- (MSDuration*) periodOnlineBeforeAccessCheck
{
    if(!_periodOnlineBeforeAccessCheck){
        _periodOnlineBeforeAccessCheck = [MSDuration ms_durationFromString: self.dictionary[@"periodOnlineBeforeAccessCheck"]];
    }
    return _periodOnlineBeforeAccessCheck;
}

- (void) setPeriodOnlineBeforeAccessCheck: (MSDuration*) val
{
    _periodOnlineBeforeAccessCheck = val;
    self.dictionary[@"periodOnlineBeforeAccessCheck"] = val.durationString;
}

- (MSGraphManagedAppDataTransferLevel*) allowedInboundDataTransferSources
{
    if(!_allowedInboundDataTransferSources){
        _allowedInboundDataTransferSources = [self.dictionary[@"allowedInboundDataTransferSources"] toMSGraphManagedAppDataTransferLevel];
    }
    return _allowedInboundDataTransferSources;
}

- (void) setAllowedInboundDataTransferSources: (MSGraphManagedAppDataTransferLevel*) val
{
    _allowedInboundDataTransferSources = val;
    self.dictionary[@"allowedInboundDataTransferSources"] = val;
}

- (MSGraphManagedAppDataTransferLevel*) allowedOutboundDataTransferDestinations
{
    if(!_allowedOutboundDataTransferDestinations){
        _allowedOutboundDataTransferDestinations = [self.dictionary[@"allowedOutboundDataTransferDestinations"] toMSGraphManagedAppDataTransferLevel];
    }
    return _allowedOutboundDataTransferDestinations;
}

- (void) setAllowedOutboundDataTransferDestinations: (MSGraphManagedAppDataTransferLevel*) val
{
    _allowedOutboundDataTransferDestinations = val;
    self.dictionary[@"allowedOutboundDataTransferDestinations"] = val;
}

- (BOOL) organizationalCredentialsRequired
{
    _organizationalCredentialsRequired = [self.dictionary[@"organizationalCredentialsRequired"] boolValue];
    return _organizationalCredentialsRequired;
}

- (void) setOrganizationalCredentialsRequired: (BOOL) val
{
    _organizationalCredentialsRequired = val;
    self.dictionary[@"organizationalCredentialsRequired"] = @(val);
}

- (MSGraphManagedAppClipboardSharingLevel*) allowedOutboundClipboardSharingLevel
{
    if(!_allowedOutboundClipboardSharingLevel){
        _allowedOutboundClipboardSharingLevel = [self.dictionary[@"allowedOutboundClipboardSharingLevel"] toMSGraphManagedAppClipboardSharingLevel];
    }
    return _allowedOutboundClipboardSharingLevel;
}

- (void) setAllowedOutboundClipboardSharingLevel: (MSGraphManagedAppClipboardSharingLevel*) val
{
    _allowedOutboundClipboardSharingLevel = val;
    self.dictionary[@"allowedOutboundClipboardSharingLevel"] = val;
}

- (BOOL) dataBackupBlocked
{
    _dataBackupBlocked = [self.dictionary[@"dataBackupBlocked"] boolValue];
    return _dataBackupBlocked;
}

- (void) setDataBackupBlocked: (BOOL) val
{
    _dataBackupBlocked = val;
    self.dictionary[@"dataBackupBlocked"] = @(val);
}

- (BOOL) deviceComplianceRequired
{
    _deviceComplianceRequired = [self.dictionary[@"deviceComplianceRequired"] boolValue];
    return _deviceComplianceRequired;
}

- (void) setDeviceComplianceRequired: (BOOL) val
{
    _deviceComplianceRequired = val;
    self.dictionary[@"deviceComplianceRequired"] = @(val);
}

- (BOOL) managedBrowserToOpenLinksRequired
{
    _managedBrowserToOpenLinksRequired = [self.dictionary[@"managedBrowserToOpenLinksRequired"] boolValue];
    return _managedBrowserToOpenLinksRequired;
}

- (void) setManagedBrowserToOpenLinksRequired: (BOOL) val
{
    _managedBrowserToOpenLinksRequired = val;
    self.dictionary[@"managedBrowserToOpenLinksRequired"] = @(val);
}

- (BOOL) saveAsBlocked
{
    _saveAsBlocked = [self.dictionary[@"saveAsBlocked"] boolValue];
    return _saveAsBlocked;
}

- (void) setSaveAsBlocked: (BOOL) val
{
    _saveAsBlocked = val;
    self.dictionary[@"saveAsBlocked"] = @(val);
}

- (MSDuration*) periodOfflineBeforeWipeIsEnforced
{
    if(!_periodOfflineBeforeWipeIsEnforced){
        _periodOfflineBeforeWipeIsEnforced = [MSDuration ms_durationFromString: self.dictionary[@"periodOfflineBeforeWipeIsEnforced"]];
    }
    return _periodOfflineBeforeWipeIsEnforced;
}

- (void) setPeriodOfflineBeforeWipeIsEnforced: (MSDuration*) val
{
    _periodOfflineBeforeWipeIsEnforced = val;
    self.dictionary[@"periodOfflineBeforeWipeIsEnforced"] = val.durationString;
}

- (BOOL) pinRequired
{
    _pinRequired = [self.dictionary[@"pinRequired"] boolValue];
    return _pinRequired;
}

- (void) setPinRequired: (BOOL) val
{
    _pinRequired = val;
    self.dictionary[@"pinRequired"] = @(val);
}

- (int32_t) maximumPinRetries
{
    _maximumPinRetries = [self.dictionary[@"maximumPinRetries"] intValue];
    return _maximumPinRetries;
}

- (void) setMaximumPinRetries: (int32_t) val
{
    _maximumPinRetries = val;
    self.dictionary[@"maximumPinRetries"] = @(val);
}

- (BOOL) simplePinBlocked
{
    _simplePinBlocked = [self.dictionary[@"simplePinBlocked"] boolValue];
    return _simplePinBlocked;
}

- (void) setSimplePinBlocked: (BOOL) val
{
    _simplePinBlocked = val;
    self.dictionary[@"simplePinBlocked"] = @(val);
}

- (int32_t) minimumPinLength
{
    _minimumPinLength = [self.dictionary[@"minimumPinLength"] intValue];
    return _minimumPinLength;
}

- (void) setMinimumPinLength: (int32_t) val
{
    _minimumPinLength = val;
    self.dictionary[@"minimumPinLength"] = @(val);
}

- (MSGraphManagedAppPinCharacterSet*) pinCharacterSet
{
    if(!_pinCharacterSet){
        _pinCharacterSet = [self.dictionary[@"pinCharacterSet"] toMSGraphManagedAppPinCharacterSet];
    }
    return _pinCharacterSet;
}

- (void) setPinCharacterSet: (MSGraphManagedAppPinCharacterSet*) val
{
    _pinCharacterSet = val;
    self.dictionary[@"pinCharacterSet"] = val;
}

- (MSDuration*) periodBeforePinReset
{
    if(!_periodBeforePinReset){
        _periodBeforePinReset = [MSDuration ms_durationFromString: self.dictionary[@"periodBeforePinReset"]];
    }
    return _periodBeforePinReset;
}

- (void) setPeriodBeforePinReset: (MSDuration*) val
{
    _periodBeforePinReset = val;
    self.dictionary[@"periodBeforePinReset"] = val.durationString;
}

- (NSArray*) allowedDataStorageLocations
{
    if(!_allowedDataStorageLocations){
        
    NSMutableArray *allowedDataStorageLocationsResult = [NSMutableArray array];
    NSArray *allowedDataStorageLocations = self.dictionary[@"allowedDataStorageLocations"];

    if ([allowedDataStorageLocations isKindOfClass:[NSArray class]]){
        for (id tempManagedAppDataStorageLocation in allowedDataStorageLocations){
            [allowedDataStorageLocationsResult addObject:tempManagedAppDataStorageLocation];
        }
    }

    _allowedDataStorageLocations = allowedDataStorageLocationsResult;
        
    }
    return _allowedDataStorageLocations;
}

- (void) setAllowedDataStorageLocations: (NSArray*) val
{
    _allowedDataStorageLocations = val;
    self.dictionary[@"allowedDataStorageLocations"] = val;
}

- (BOOL) contactSyncBlocked
{
    _contactSyncBlocked = [self.dictionary[@"contactSyncBlocked"] boolValue];
    return _contactSyncBlocked;
}

- (void) setContactSyncBlocked: (BOOL) val
{
    _contactSyncBlocked = val;
    self.dictionary[@"contactSyncBlocked"] = @(val);
}

- (BOOL) printBlocked
{
    _printBlocked = [self.dictionary[@"printBlocked"] boolValue];
    return _printBlocked;
}

- (void) setPrintBlocked: (BOOL) val
{
    _printBlocked = val;
    self.dictionary[@"printBlocked"] = @(val);
}

- (BOOL) fingerprintBlocked
{
    _fingerprintBlocked = [self.dictionary[@"fingerprintBlocked"] boolValue];
    return _fingerprintBlocked;
}

- (void) setFingerprintBlocked: (BOOL) val
{
    _fingerprintBlocked = val;
    self.dictionary[@"fingerprintBlocked"] = @(val);
}

- (BOOL) disableAppPinIfDevicePinIsSet
{
    _disableAppPinIfDevicePinIsSet = [self.dictionary[@"disableAppPinIfDevicePinIsSet"] boolValue];
    return _disableAppPinIfDevicePinIsSet;
}

- (void) setDisableAppPinIfDevicePinIsSet: (BOOL) val
{
    _disableAppPinIfDevicePinIsSet = val;
    self.dictionary[@"disableAppPinIfDevicePinIsSet"] = @(val);
}

- (NSString*) minimumRequiredOsVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumRequiredOsVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumRequiredOsVersion"];
}

- (void) setMinimumRequiredOsVersion: (NSString*) val
{
    self.dictionary[@"minimumRequiredOsVersion"] = val;
}

- (NSString*) minimumWarningOsVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumWarningOsVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumWarningOsVersion"];
}

- (void) setMinimumWarningOsVersion: (NSString*) val
{
    self.dictionary[@"minimumWarningOsVersion"] = val;
}

- (NSString*) minimumRequiredAppVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumRequiredAppVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumRequiredAppVersion"];
}

- (void) setMinimumRequiredAppVersion: (NSString*) val
{
    self.dictionary[@"minimumRequiredAppVersion"] = val;
}

- (NSString*) minimumWarningAppVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumWarningAppVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumWarningAppVersion"];
}

- (void) setMinimumWarningAppVersion: (NSString*) val
{
    self.dictionary[@"minimumWarningAppVersion"] = val;
}


@end
