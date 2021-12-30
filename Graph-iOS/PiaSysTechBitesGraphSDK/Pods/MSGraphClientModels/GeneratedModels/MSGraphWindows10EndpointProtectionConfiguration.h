// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWindowsFirewallNetworkProfile, MSGraphBitLockerRemovableDrivePolicy; 
#import "MSGraphFirewallPreSharedKeyEncodingMethodType.h"
#import "MSGraphFirewallCertificateRevocationListCheckMethodType.h"
#import "MSGraphFirewallPacketQueueingMethodType.h"
#import "MSGraphAppLockerApplicationControlType.h"
#import "MSGraphApplicationGuardBlockFileTransferType.h"
#import "MSGraphApplicationGuardBlockClipboardSharingType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows10EndpointProtectionConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setFirewallBlockStatefulFTP:, getter=firewallBlockStatefulFTP) BOOL firewallBlockStatefulFTP;
    @property (nonatomic, setter=setFirewallIdleTimeoutForSecurityAssociationInSeconds:, getter=firewallIdleTimeoutForSecurityAssociationInSeconds) int32_t firewallIdleTimeoutForSecurityAssociationInSeconds;
    @property (nonnull, nonatomic, setter=setFirewallPreSharedKeyEncodingMethod:, getter=firewallPreSharedKeyEncodingMethod) MSGraphFirewallPreSharedKeyEncodingMethodType* firewallPreSharedKeyEncodingMethod;
    @property (nonatomic, setter=setFirewallIPSecExemptionsAllowNeighborDiscovery:, getter=firewallIPSecExemptionsAllowNeighborDiscovery) BOOL firewallIPSecExemptionsAllowNeighborDiscovery;
    @property (nonatomic, setter=setFirewallIPSecExemptionsAllowICMP:, getter=firewallIPSecExemptionsAllowICMP) BOOL firewallIPSecExemptionsAllowICMP;
    @property (nonatomic, setter=setFirewallIPSecExemptionsAllowRouterDiscovery:, getter=firewallIPSecExemptionsAllowRouterDiscovery) BOOL firewallIPSecExemptionsAllowRouterDiscovery;
    @property (nonatomic, setter=setFirewallIPSecExemptionsAllowDHCP:, getter=firewallIPSecExemptionsAllowDHCP) BOOL firewallIPSecExemptionsAllowDHCP;
    @property (nonnull, nonatomic, setter=setFirewallCertificateRevocationListCheckMethod:, getter=firewallCertificateRevocationListCheckMethod) MSGraphFirewallCertificateRevocationListCheckMethodType* firewallCertificateRevocationListCheckMethod;
    @property (nonatomic, setter=setFirewallMergeKeyingModuleSettings:, getter=firewallMergeKeyingModuleSettings) BOOL firewallMergeKeyingModuleSettings;
    @property (nonnull, nonatomic, setter=setFirewallPacketQueueingMethod:, getter=firewallPacketQueueingMethod) MSGraphFirewallPacketQueueingMethodType* firewallPacketQueueingMethod;
    @property (nullable, nonatomic, setter=setFirewallProfileDomain:, getter=firewallProfileDomain) MSGraphWindowsFirewallNetworkProfile* firewallProfileDomain;
    @property (nullable, nonatomic, setter=setFirewallProfilePublic:, getter=firewallProfilePublic) MSGraphWindowsFirewallNetworkProfile* firewallProfilePublic;
    @property (nullable, nonatomic, setter=setFirewallProfilePrivate:, getter=firewallProfilePrivate) MSGraphWindowsFirewallNetworkProfile* firewallProfilePrivate;
    @property (nullable, nonatomic, setter=setDefenderAttackSurfaceReductionExcludedPaths:, getter=defenderAttackSurfaceReductionExcludedPaths) NSArray* defenderAttackSurfaceReductionExcludedPaths;
    @property (nullable, nonatomic, setter=setDefenderGuardedFoldersAllowedAppPaths:, getter=defenderGuardedFoldersAllowedAppPaths) NSArray* defenderGuardedFoldersAllowedAppPaths;
    @property (nullable, nonatomic, setter=setDefenderAdditionalGuardedFolders:, getter=defenderAdditionalGuardedFolders) NSArray* defenderAdditionalGuardedFolders;
    @property (nullable, nonatomic, setter=setDefenderExploitProtectionXml:, getter=defenderExploitProtectionXml) NSString* defenderExploitProtectionXml;
    @property (nullable, nonatomic, setter=setDefenderExploitProtectionXmlFileName:, getter=defenderExploitProtectionXmlFileName) NSString* defenderExploitProtectionXmlFileName;
    @property (nonatomic, setter=setDefenderSecurityCenterBlockExploitProtectionOverride:, getter=defenderSecurityCenterBlockExploitProtectionOverride) BOOL defenderSecurityCenterBlockExploitProtectionOverride;
    @property (nonnull, nonatomic, setter=setAppLockerApplicationControl:, getter=appLockerApplicationControl) MSGraphAppLockerApplicationControlType* appLockerApplicationControl;
    @property (nonatomic, setter=setSmartScreenEnableInShell:, getter=smartScreenEnableInShell) BOOL smartScreenEnableInShell;
    @property (nonatomic, setter=setSmartScreenBlockOverrideForFiles:, getter=smartScreenBlockOverrideForFiles) BOOL smartScreenBlockOverrideForFiles;
    @property (nonatomic, setter=setApplicationGuardEnabled:, getter=applicationGuardEnabled) BOOL applicationGuardEnabled;
    @property (nonnull, nonatomic, setter=setApplicationGuardBlockFileTransfer:, getter=applicationGuardBlockFileTransfer) MSGraphApplicationGuardBlockFileTransferType* applicationGuardBlockFileTransfer;
    @property (nonatomic, setter=setApplicationGuardBlockNonEnterpriseContent:, getter=applicationGuardBlockNonEnterpriseContent) BOOL applicationGuardBlockNonEnterpriseContent;
    @property (nonatomic, setter=setApplicationGuardAllowPersistence:, getter=applicationGuardAllowPersistence) BOOL applicationGuardAllowPersistence;
    @property (nonatomic, setter=setApplicationGuardForceAuditing:, getter=applicationGuardForceAuditing) BOOL applicationGuardForceAuditing;
    @property (nonnull, nonatomic, setter=setApplicationGuardBlockClipboardSharing:, getter=applicationGuardBlockClipboardSharing) MSGraphApplicationGuardBlockClipboardSharingType* applicationGuardBlockClipboardSharing;
    @property (nonatomic, setter=setApplicationGuardAllowPrintToPDF:, getter=applicationGuardAllowPrintToPDF) BOOL applicationGuardAllowPrintToPDF;
    @property (nonatomic, setter=setApplicationGuardAllowPrintToXPS:, getter=applicationGuardAllowPrintToXPS) BOOL applicationGuardAllowPrintToXPS;
    @property (nonatomic, setter=setApplicationGuardAllowPrintToLocalPrinters:, getter=applicationGuardAllowPrintToLocalPrinters) BOOL applicationGuardAllowPrintToLocalPrinters;
    @property (nonatomic, setter=setApplicationGuardAllowPrintToNetworkPrinters:, getter=applicationGuardAllowPrintToNetworkPrinters) BOOL applicationGuardAllowPrintToNetworkPrinters;
    @property (nonatomic, setter=setBitLockerDisableWarningForOtherDiskEncryption:, getter=bitLockerDisableWarningForOtherDiskEncryption) BOOL bitLockerDisableWarningForOtherDiskEncryption;
    @property (nonatomic, setter=setBitLockerEnableStorageCardEncryptionOnMobile:, getter=bitLockerEnableStorageCardEncryptionOnMobile) BOOL bitLockerEnableStorageCardEncryptionOnMobile;
    @property (nonatomic, setter=setBitLockerEncryptDevice:, getter=bitLockerEncryptDevice) BOOL bitLockerEncryptDevice;
    @property (nullable, nonatomic, setter=setBitLockerRemovableDrivePolicy:, getter=bitLockerRemovableDrivePolicy) MSGraphBitLockerRemovableDrivePolicy* bitLockerRemovableDrivePolicy;
  
@end
