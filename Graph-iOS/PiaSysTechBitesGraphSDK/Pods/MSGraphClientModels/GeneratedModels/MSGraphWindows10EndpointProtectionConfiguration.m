// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10EndpointProtectionConfiguration()
{
    BOOL _firewallBlockStatefulFTP;
    int32_t _firewallIdleTimeoutForSecurityAssociationInSeconds;
    MSGraphFirewallPreSharedKeyEncodingMethodType* _firewallPreSharedKeyEncodingMethod;
    BOOL _firewallIPSecExemptionsAllowNeighborDiscovery;
    BOOL _firewallIPSecExemptionsAllowICMP;
    BOOL _firewallIPSecExemptionsAllowRouterDiscovery;
    BOOL _firewallIPSecExemptionsAllowDHCP;
    MSGraphFirewallCertificateRevocationListCheckMethodType* _firewallCertificateRevocationListCheckMethod;
    BOOL _firewallMergeKeyingModuleSettings;
    MSGraphFirewallPacketQueueingMethodType* _firewallPacketQueueingMethod;
    MSGraphWindowsFirewallNetworkProfile* _firewallProfileDomain;
    MSGraphWindowsFirewallNetworkProfile* _firewallProfilePublic;
    MSGraphWindowsFirewallNetworkProfile* _firewallProfilePrivate;
    NSArray* _defenderAttackSurfaceReductionExcludedPaths;
    NSArray* _defenderGuardedFoldersAllowedAppPaths;
    NSArray* _defenderAdditionalGuardedFolders;
    NSString* _defenderExploitProtectionXml;
    NSString* _defenderExploitProtectionXmlFileName;
    BOOL _defenderSecurityCenterBlockExploitProtectionOverride;
    MSGraphAppLockerApplicationControlType* _appLockerApplicationControl;
    BOOL _smartScreenEnableInShell;
    BOOL _smartScreenBlockOverrideForFiles;
    BOOL _applicationGuardEnabled;
    MSGraphApplicationGuardBlockFileTransferType* _applicationGuardBlockFileTransfer;
    BOOL _applicationGuardBlockNonEnterpriseContent;
    BOOL _applicationGuardAllowPersistence;
    BOOL _applicationGuardForceAuditing;
    MSGraphApplicationGuardBlockClipboardSharingType* _applicationGuardBlockClipboardSharing;
    BOOL _applicationGuardAllowPrintToPDF;
    BOOL _applicationGuardAllowPrintToXPS;
    BOOL _applicationGuardAllowPrintToLocalPrinters;
    BOOL _applicationGuardAllowPrintToNetworkPrinters;
    BOOL _bitLockerDisableWarningForOtherDiskEncryption;
    BOOL _bitLockerEnableStorageCardEncryptionOnMobile;
    BOOL _bitLockerEncryptDevice;
    MSGraphBitLockerRemovableDrivePolicy* _bitLockerRemovableDrivePolicy;
}
@end

@implementation MSGraphWindows10EndpointProtectionConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10EndpointProtectionConfiguration";
    }
    return self;
}
- (BOOL) firewallBlockStatefulFTP
{
    _firewallBlockStatefulFTP = [self.dictionary[@"firewallBlockStatefulFTP"] boolValue];
    return _firewallBlockStatefulFTP;
}

- (void) setFirewallBlockStatefulFTP: (BOOL) val
{
    _firewallBlockStatefulFTP = val;
    self.dictionary[@"firewallBlockStatefulFTP"] = @(val);
}

- (int32_t) firewallIdleTimeoutForSecurityAssociationInSeconds
{
    _firewallIdleTimeoutForSecurityAssociationInSeconds = [self.dictionary[@"firewallIdleTimeoutForSecurityAssociationInSeconds"] intValue];
    return _firewallIdleTimeoutForSecurityAssociationInSeconds;
}

- (void) setFirewallIdleTimeoutForSecurityAssociationInSeconds: (int32_t) val
{
    _firewallIdleTimeoutForSecurityAssociationInSeconds = val;
    self.dictionary[@"firewallIdleTimeoutForSecurityAssociationInSeconds"] = @(val);
}

- (MSGraphFirewallPreSharedKeyEncodingMethodType*) firewallPreSharedKeyEncodingMethod
{
    if(!_firewallPreSharedKeyEncodingMethod){
        _firewallPreSharedKeyEncodingMethod = [self.dictionary[@"firewallPreSharedKeyEncodingMethod"] toMSGraphFirewallPreSharedKeyEncodingMethodType];
    }
    return _firewallPreSharedKeyEncodingMethod;
}

- (void) setFirewallPreSharedKeyEncodingMethod: (MSGraphFirewallPreSharedKeyEncodingMethodType*) val
{
    _firewallPreSharedKeyEncodingMethod = val;
    self.dictionary[@"firewallPreSharedKeyEncodingMethod"] = val;
}

- (BOOL) firewallIPSecExemptionsAllowNeighborDiscovery
{
    _firewallIPSecExemptionsAllowNeighborDiscovery = [self.dictionary[@"firewallIPSecExemptionsAllowNeighborDiscovery"] boolValue];
    return _firewallIPSecExemptionsAllowNeighborDiscovery;
}

- (void) setFirewallIPSecExemptionsAllowNeighborDiscovery: (BOOL) val
{
    _firewallIPSecExemptionsAllowNeighborDiscovery = val;
    self.dictionary[@"firewallIPSecExemptionsAllowNeighborDiscovery"] = @(val);
}

- (BOOL) firewallIPSecExemptionsAllowICMP
{
    _firewallIPSecExemptionsAllowICMP = [self.dictionary[@"firewallIPSecExemptionsAllowICMP"] boolValue];
    return _firewallIPSecExemptionsAllowICMP;
}

- (void) setFirewallIPSecExemptionsAllowICMP: (BOOL) val
{
    _firewallIPSecExemptionsAllowICMP = val;
    self.dictionary[@"firewallIPSecExemptionsAllowICMP"] = @(val);
}

- (BOOL) firewallIPSecExemptionsAllowRouterDiscovery
{
    _firewallIPSecExemptionsAllowRouterDiscovery = [self.dictionary[@"firewallIPSecExemptionsAllowRouterDiscovery"] boolValue];
    return _firewallIPSecExemptionsAllowRouterDiscovery;
}

- (void) setFirewallIPSecExemptionsAllowRouterDiscovery: (BOOL) val
{
    _firewallIPSecExemptionsAllowRouterDiscovery = val;
    self.dictionary[@"firewallIPSecExemptionsAllowRouterDiscovery"] = @(val);
}

- (BOOL) firewallIPSecExemptionsAllowDHCP
{
    _firewallIPSecExemptionsAllowDHCP = [self.dictionary[@"firewallIPSecExemptionsAllowDHCP"] boolValue];
    return _firewallIPSecExemptionsAllowDHCP;
}

- (void) setFirewallIPSecExemptionsAllowDHCP: (BOOL) val
{
    _firewallIPSecExemptionsAllowDHCP = val;
    self.dictionary[@"firewallIPSecExemptionsAllowDHCP"] = @(val);
}

- (MSGraphFirewallCertificateRevocationListCheckMethodType*) firewallCertificateRevocationListCheckMethod
{
    if(!_firewallCertificateRevocationListCheckMethod){
        _firewallCertificateRevocationListCheckMethod = [self.dictionary[@"firewallCertificateRevocationListCheckMethod"] toMSGraphFirewallCertificateRevocationListCheckMethodType];
    }
    return _firewallCertificateRevocationListCheckMethod;
}

- (void) setFirewallCertificateRevocationListCheckMethod: (MSGraphFirewallCertificateRevocationListCheckMethodType*) val
{
    _firewallCertificateRevocationListCheckMethod = val;
    self.dictionary[@"firewallCertificateRevocationListCheckMethod"] = val;
}

- (BOOL) firewallMergeKeyingModuleSettings
{
    _firewallMergeKeyingModuleSettings = [self.dictionary[@"firewallMergeKeyingModuleSettings"] boolValue];
    return _firewallMergeKeyingModuleSettings;
}

- (void) setFirewallMergeKeyingModuleSettings: (BOOL) val
{
    _firewallMergeKeyingModuleSettings = val;
    self.dictionary[@"firewallMergeKeyingModuleSettings"] = @(val);
}

- (MSGraphFirewallPacketQueueingMethodType*) firewallPacketQueueingMethod
{
    if(!_firewallPacketQueueingMethod){
        _firewallPacketQueueingMethod = [self.dictionary[@"firewallPacketQueueingMethod"] toMSGraphFirewallPacketQueueingMethodType];
    }
    return _firewallPacketQueueingMethod;
}

- (void) setFirewallPacketQueueingMethod: (MSGraphFirewallPacketQueueingMethodType*) val
{
    _firewallPacketQueueingMethod = val;
    self.dictionary[@"firewallPacketQueueingMethod"] = val;
}

- (MSGraphWindowsFirewallNetworkProfile*) firewallProfileDomain
{
    if(!_firewallProfileDomain){
        _firewallProfileDomain = [[MSGraphWindowsFirewallNetworkProfile alloc] initWithDictionary: self.dictionary[@"firewallProfileDomain"]];
    }
    return _firewallProfileDomain;
}

- (void) setFirewallProfileDomain: (MSGraphWindowsFirewallNetworkProfile*) val
{
    _firewallProfileDomain = val;
    self.dictionary[@"firewallProfileDomain"] = val;
}

- (MSGraphWindowsFirewallNetworkProfile*) firewallProfilePublic
{
    if(!_firewallProfilePublic){
        _firewallProfilePublic = [[MSGraphWindowsFirewallNetworkProfile alloc] initWithDictionary: self.dictionary[@"firewallProfilePublic"]];
    }
    return _firewallProfilePublic;
}

- (void) setFirewallProfilePublic: (MSGraphWindowsFirewallNetworkProfile*) val
{
    _firewallProfilePublic = val;
    self.dictionary[@"firewallProfilePublic"] = val;
}

- (MSGraphWindowsFirewallNetworkProfile*) firewallProfilePrivate
{
    if(!_firewallProfilePrivate){
        _firewallProfilePrivate = [[MSGraphWindowsFirewallNetworkProfile alloc] initWithDictionary: self.dictionary[@"firewallProfilePrivate"]];
    }
    return _firewallProfilePrivate;
}

- (void) setFirewallProfilePrivate: (MSGraphWindowsFirewallNetworkProfile*) val
{
    _firewallProfilePrivate = val;
    self.dictionary[@"firewallProfilePrivate"] = val;
}

- (NSArray*) defenderAttackSurfaceReductionExcludedPaths
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderAttackSurfaceReductionExcludedPaths"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderAttackSurfaceReductionExcludedPaths"];
}

- (void) setDefenderAttackSurfaceReductionExcludedPaths: (NSArray*) val
{
    self.dictionary[@"defenderAttackSurfaceReductionExcludedPaths"] = val;
}

- (NSArray*) defenderGuardedFoldersAllowedAppPaths
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderGuardedFoldersAllowedAppPaths"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderGuardedFoldersAllowedAppPaths"];
}

- (void) setDefenderGuardedFoldersAllowedAppPaths: (NSArray*) val
{
    self.dictionary[@"defenderGuardedFoldersAllowedAppPaths"] = val;
}

- (NSArray*) defenderAdditionalGuardedFolders
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderAdditionalGuardedFolders"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderAdditionalGuardedFolders"];
}

- (void) setDefenderAdditionalGuardedFolders: (NSArray*) val
{
    self.dictionary[@"defenderAdditionalGuardedFolders"] = val;
}

- (NSString*) defenderExploitProtectionXml
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderExploitProtectionXml"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderExploitProtectionXml"];
}

- (void) setDefenderExploitProtectionXml: (NSString*) val
{
    self.dictionary[@"defenderExploitProtectionXml"] = val;
}

- (NSString*) defenderExploitProtectionXmlFileName
{
    if([[NSNull null] isEqual:self.dictionary[@"defenderExploitProtectionXmlFileName"]])
    {
        return nil;
    }   
    return self.dictionary[@"defenderExploitProtectionXmlFileName"];
}

- (void) setDefenderExploitProtectionXmlFileName: (NSString*) val
{
    self.dictionary[@"defenderExploitProtectionXmlFileName"] = val;
}

- (BOOL) defenderSecurityCenterBlockExploitProtectionOverride
{
    _defenderSecurityCenterBlockExploitProtectionOverride = [self.dictionary[@"defenderSecurityCenterBlockExploitProtectionOverride"] boolValue];
    return _defenderSecurityCenterBlockExploitProtectionOverride;
}

- (void) setDefenderSecurityCenterBlockExploitProtectionOverride: (BOOL) val
{
    _defenderSecurityCenterBlockExploitProtectionOverride = val;
    self.dictionary[@"defenderSecurityCenterBlockExploitProtectionOverride"] = @(val);
}

- (MSGraphAppLockerApplicationControlType*) appLockerApplicationControl
{
    if(!_appLockerApplicationControl){
        _appLockerApplicationControl = [self.dictionary[@"appLockerApplicationControl"] toMSGraphAppLockerApplicationControlType];
    }
    return _appLockerApplicationControl;
}

- (void) setAppLockerApplicationControl: (MSGraphAppLockerApplicationControlType*) val
{
    _appLockerApplicationControl = val;
    self.dictionary[@"appLockerApplicationControl"] = val;
}

- (BOOL) smartScreenEnableInShell
{
    _smartScreenEnableInShell = [self.dictionary[@"smartScreenEnableInShell"] boolValue];
    return _smartScreenEnableInShell;
}

- (void) setSmartScreenEnableInShell: (BOOL) val
{
    _smartScreenEnableInShell = val;
    self.dictionary[@"smartScreenEnableInShell"] = @(val);
}

- (BOOL) smartScreenBlockOverrideForFiles
{
    _smartScreenBlockOverrideForFiles = [self.dictionary[@"smartScreenBlockOverrideForFiles"] boolValue];
    return _smartScreenBlockOverrideForFiles;
}

- (void) setSmartScreenBlockOverrideForFiles: (BOOL) val
{
    _smartScreenBlockOverrideForFiles = val;
    self.dictionary[@"smartScreenBlockOverrideForFiles"] = @(val);
}

- (BOOL) applicationGuardEnabled
{
    _applicationGuardEnabled = [self.dictionary[@"applicationGuardEnabled"] boolValue];
    return _applicationGuardEnabled;
}

- (void) setApplicationGuardEnabled: (BOOL) val
{
    _applicationGuardEnabled = val;
    self.dictionary[@"applicationGuardEnabled"] = @(val);
}

- (MSGraphApplicationGuardBlockFileTransferType*) applicationGuardBlockFileTransfer
{
    if(!_applicationGuardBlockFileTransfer){
        _applicationGuardBlockFileTransfer = [self.dictionary[@"applicationGuardBlockFileTransfer"] toMSGraphApplicationGuardBlockFileTransferType];
    }
    return _applicationGuardBlockFileTransfer;
}

- (void) setApplicationGuardBlockFileTransfer: (MSGraphApplicationGuardBlockFileTransferType*) val
{
    _applicationGuardBlockFileTransfer = val;
    self.dictionary[@"applicationGuardBlockFileTransfer"] = val;
}

- (BOOL) applicationGuardBlockNonEnterpriseContent
{
    _applicationGuardBlockNonEnterpriseContent = [self.dictionary[@"applicationGuardBlockNonEnterpriseContent"] boolValue];
    return _applicationGuardBlockNonEnterpriseContent;
}

- (void) setApplicationGuardBlockNonEnterpriseContent: (BOOL) val
{
    _applicationGuardBlockNonEnterpriseContent = val;
    self.dictionary[@"applicationGuardBlockNonEnterpriseContent"] = @(val);
}

- (BOOL) applicationGuardAllowPersistence
{
    _applicationGuardAllowPersistence = [self.dictionary[@"applicationGuardAllowPersistence"] boolValue];
    return _applicationGuardAllowPersistence;
}

- (void) setApplicationGuardAllowPersistence: (BOOL) val
{
    _applicationGuardAllowPersistence = val;
    self.dictionary[@"applicationGuardAllowPersistence"] = @(val);
}

- (BOOL) applicationGuardForceAuditing
{
    _applicationGuardForceAuditing = [self.dictionary[@"applicationGuardForceAuditing"] boolValue];
    return _applicationGuardForceAuditing;
}

- (void) setApplicationGuardForceAuditing: (BOOL) val
{
    _applicationGuardForceAuditing = val;
    self.dictionary[@"applicationGuardForceAuditing"] = @(val);
}

- (MSGraphApplicationGuardBlockClipboardSharingType*) applicationGuardBlockClipboardSharing
{
    if(!_applicationGuardBlockClipboardSharing){
        _applicationGuardBlockClipboardSharing = [self.dictionary[@"applicationGuardBlockClipboardSharing"] toMSGraphApplicationGuardBlockClipboardSharingType];
    }
    return _applicationGuardBlockClipboardSharing;
}

- (void) setApplicationGuardBlockClipboardSharing: (MSGraphApplicationGuardBlockClipboardSharingType*) val
{
    _applicationGuardBlockClipboardSharing = val;
    self.dictionary[@"applicationGuardBlockClipboardSharing"] = val;
}

- (BOOL) applicationGuardAllowPrintToPDF
{
    _applicationGuardAllowPrintToPDF = [self.dictionary[@"applicationGuardAllowPrintToPDF"] boolValue];
    return _applicationGuardAllowPrintToPDF;
}

- (void) setApplicationGuardAllowPrintToPDF: (BOOL) val
{
    _applicationGuardAllowPrintToPDF = val;
    self.dictionary[@"applicationGuardAllowPrintToPDF"] = @(val);
}

- (BOOL) applicationGuardAllowPrintToXPS
{
    _applicationGuardAllowPrintToXPS = [self.dictionary[@"applicationGuardAllowPrintToXPS"] boolValue];
    return _applicationGuardAllowPrintToXPS;
}

- (void) setApplicationGuardAllowPrintToXPS: (BOOL) val
{
    _applicationGuardAllowPrintToXPS = val;
    self.dictionary[@"applicationGuardAllowPrintToXPS"] = @(val);
}

- (BOOL) applicationGuardAllowPrintToLocalPrinters
{
    _applicationGuardAllowPrintToLocalPrinters = [self.dictionary[@"applicationGuardAllowPrintToLocalPrinters"] boolValue];
    return _applicationGuardAllowPrintToLocalPrinters;
}

- (void) setApplicationGuardAllowPrintToLocalPrinters: (BOOL) val
{
    _applicationGuardAllowPrintToLocalPrinters = val;
    self.dictionary[@"applicationGuardAllowPrintToLocalPrinters"] = @(val);
}

- (BOOL) applicationGuardAllowPrintToNetworkPrinters
{
    _applicationGuardAllowPrintToNetworkPrinters = [self.dictionary[@"applicationGuardAllowPrintToNetworkPrinters"] boolValue];
    return _applicationGuardAllowPrintToNetworkPrinters;
}

- (void) setApplicationGuardAllowPrintToNetworkPrinters: (BOOL) val
{
    _applicationGuardAllowPrintToNetworkPrinters = val;
    self.dictionary[@"applicationGuardAllowPrintToNetworkPrinters"] = @(val);
}

- (BOOL) bitLockerDisableWarningForOtherDiskEncryption
{
    _bitLockerDisableWarningForOtherDiskEncryption = [self.dictionary[@"bitLockerDisableWarningForOtherDiskEncryption"] boolValue];
    return _bitLockerDisableWarningForOtherDiskEncryption;
}

- (void) setBitLockerDisableWarningForOtherDiskEncryption: (BOOL) val
{
    _bitLockerDisableWarningForOtherDiskEncryption = val;
    self.dictionary[@"bitLockerDisableWarningForOtherDiskEncryption"] = @(val);
}

- (BOOL) bitLockerEnableStorageCardEncryptionOnMobile
{
    _bitLockerEnableStorageCardEncryptionOnMobile = [self.dictionary[@"bitLockerEnableStorageCardEncryptionOnMobile"] boolValue];
    return _bitLockerEnableStorageCardEncryptionOnMobile;
}

- (void) setBitLockerEnableStorageCardEncryptionOnMobile: (BOOL) val
{
    _bitLockerEnableStorageCardEncryptionOnMobile = val;
    self.dictionary[@"bitLockerEnableStorageCardEncryptionOnMobile"] = @(val);
}

- (BOOL) bitLockerEncryptDevice
{
    _bitLockerEncryptDevice = [self.dictionary[@"bitLockerEncryptDevice"] boolValue];
    return _bitLockerEncryptDevice;
}

- (void) setBitLockerEncryptDevice: (BOOL) val
{
    _bitLockerEncryptDevice = val;
    self.dictionary[@"bitLockerEncryptDevice"] = @(val);
}

- (MSGraphBitLockerRemovableDrivePolicy*) bitLockerRemovableDrivePolicy
{
    if(!_bitLockerRemovableDrivePolicy){
        _bitLockerRemovableDrivePolicy = [[MSGraphBitLockerRemovableDrivePolicy alloc] initWithDictionary: self.dictionary[@"bitLockerRemovableDrivePolicy"]];
    }
    return _bitLockerRemovableDrivePolicy;
}

- (void) setBitLockerRemovableDrivePolicy: (MSGraphBitLockerRemovableDrivePolicy*) val
{
    _bitLockerRemovableDrivePolicy = val;
    self.dictionary[@"bitLockerRemovableDrivePolicy"] = val;
}


@end
