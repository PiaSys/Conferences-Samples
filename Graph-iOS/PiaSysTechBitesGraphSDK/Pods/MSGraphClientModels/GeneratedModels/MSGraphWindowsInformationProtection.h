// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWindowsInformationProtectionResourceCollection, MSGraphWindowsInformationProtectionDataRecoveryCertificate, MSGraphWindowsInformationProtectionApp, MSGraphWindowsInformationProtectionProxiedDomainCollection, MSGraphWindowsInformationProtectionIPRangeCollection, MSGraphWindowsInformationProtectionAppLockerFile, MSGraphTargetedManagedAppPolicyAssignment; 
#import "MSGraphWindowsInformationProtectionEnforcementLevel.h"


#import "MSGraphManagedAppPolicy.h"

@interface MSGraphWindowsInformationProtection : MSGraphManagedAppPolicy

  @property (nonnull, nonatomic, setter=setEnforcementLevel:, getter=enforcementLevel) MSGraphWindowsInformationProtectionEnforcementLevel* enforcementLevel;
    @property (nullable, nonatomic, setter=setEnterpriseDomain:, getter=enterpriseDomain) NSString* enterpriseDomain;
    @property (nullable, nonatomic, setter=setEnterpriseProtectedDomainNames:, getter=enterpriseProtectedDomainNames) NSArray* enterpriseProtectedDomainNames;
    @property (nonatomic, setter=setProtectionUnderLockConfigRequired:, getter=protectionUnderLockConfigRequired) BOOL protectionUnderLockConfigRequired;
    @property (nullable, nonatomic, setter=setDataRecoveryCertificate:, getter=dataRecoveryCertificate) MSGraphWindowsInformationProtectionDataRecoveryCertificate* dataRecoveryCertificate;
    @property (nonatomic, setter=setRevokeOnUnenrollDisabled:, getter=revokeOnUnenrollDisabled) BOOL revokeOnUnenrollDisabled;
    @property (nullable, nonatomic, setter=setRightsManagementServicesTemplateId:, getter=rightsManagementServicesTemplateId) NSString* rightsManagementServicesTemplateId;
    @property (nonatomic, setter=setAzureRightsManagementServicesAllowed:, getter=azureRightsManagementServicesAllowed) BOOL azureRightsManagementServicesAllowed;
    @property (nonatomic, setter=setIconsVisible:, getter=iconsVisible) BOOL iconsVisible;
    @property (nullable, nonatomic, setter=setProtectedApps:, getter=protectedApps) NSArray* protectedApps;
    @property (nullable, nonatomic, setter=setExemptApps:, getter=exemptApps) NSArray* exemptApps;
    @property (nullable, nonatomic, setter=setEnterpriseNetworkDomainNames:, getter=enterpriseNetworkDomainNames) NSArray* enterpriseNetworkDomainNames;
    @property (nullable, nonatomic, setter=setEnterpriseProxiedDomains:, getter=enterpriseProxiedDomains) NSArray* enterpriseProxiedDomains;
    @property (nullable, nonatomic, setter=setEnterpriseIPRanges:, getter=enterpriseIPRanges) NSArray* enterpriseIPRanges;
    @property (nonatomic, setter=setEnterpriseIPRangesAreAuthoritative:, getter=enterpriseIPRangesAreAuthoritative) BOOL enterpriseIPRangesAreAuthoritative;
    @property (nullable, nonatomic, setter=setEnterpriseProxyServers:, getter=enterpriseProxyServers) NSArray* enterpriseProxyServers;
    @property (nullable, nonatomic, setter=setEnterpriseInternalProxyServers:, getter=enterpriseInternalProxyServers) NSArray* enterpriseInternalProxyServers;
    @property (nonatomic, setter=setEnterpriseProxyServersAreAuthoritative:, getter=enterpriseProxyServersAreAuthoritative) BOOL enterpriseProxyServersAreAuthoritative;
    @property (nullable, nonatomic, setter=setNeutralDomainResources:, getter=neutralDomainResources) NSArray* neutralDomainResources;
    @property (nonatomic, setter=setIndexingEncryptedStoresOrItemsBlocked:, getter=indexingEncryptedStoresOrItemsBlocked) BOOL indexingEncryptedStoresOrItemsBlocked;
    @property (nullable, nonatomic, setter=setSmbAutoEncryptedFileExtensions:, getter=smbAutoEncryptedFileExtensions) NSArray* smbAutoEncryptedFileExtensions;
    @property (nonatomic, setter=setIsAssigned:, getter=isAssigned) BOOL isAssigned;
    @property (nullable, nonatomic, setter=setProtectedAppLockerFiles:, getter=protectedAppLockerFiles) NSArray* protectedAppLockerFiles;
    @property (nullable, nonatomic, setter=setExemptAppLockerFiles:, getter=exemptAppLockerFiles) NSArray* exemptAppLockerFiles;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
