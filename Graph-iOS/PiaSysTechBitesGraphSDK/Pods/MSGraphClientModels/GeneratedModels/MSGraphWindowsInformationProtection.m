// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtection()
{
    MSGraphWindowsInformationProtectionEnforcementLevel* _enforcementLevel;
    NSString* _enterpriseDomain;
    NSArray* _enterpriseProtectedDomainNames;
    BOOL _protectionUnderLockConfigRequired;
    MSGraphWindowsInformationProtectionDataRecoveryCertificate* _dataRecoveryCertificate;
    BOOL _revokeOnUnenrollDisabled;
    NSString* _rightsManagementServicesTemplateId;
    BOOL _azureRightsManagementServicesAllowed;
    BOOL _iconsVisible;
    NSArray* _protectedApps;
    NSArray* _exemptApps;
    NSArray* _enterpriseNetworkDomainNames;
    NSArray* _enterpriseProxiedDomains;
    NSArray* _enterpriseIPRanges;
    BOOL _enterpriseIPRangesAreAuthoritative;
    NSArray* _enterpriseProxyServers;
    NSArray* _enterpriseInternalProxyServers;
    BOOL _enterpriseProxyServersAreAuthoritative;
    NSArray* _neutralDomainResources;
    BOOL _indexingEncryptedStoresOrItemsBlocked;
    NSArray* _smbAutoEncryptedFileExtensions;
    BOOL _isAssigned;
    NSArray* _protectedAppLockerFiles;
    NSArray* _exemptAppLockerFiles;
    NSArray* _assignments;
}
@end

@implementation MSGraphWindowsInformationProtection

- (MSGraphWindowsInformationProtectionEnforcementLevel*) enforcementLevel
{
    if(!_enforcementLevel){
        _enforcementLevel = [self.dictionary[@"enforcementLevel"] toMSGraphWindowsInformationProtectionEnforcementLevel];
    }
    return _enforcementLevel;
}

- (void) setEnforcementLevel: (MSGraphWindowsInformationProtectionEnforcementLevel*) val
{
    _enforcementLevel = val;
    self.dictionary[@"enforcementLevel"] = val;
}

- (NSString*) enterpriseDomain
{
    if([[NSNull null] isEqual:self.dictionary[@"enterpriseDomain"]])
    {
        return nil;
    }   
    return self.dictionary[@"enterpriseDomain"];
}

- (void) setEnterpriseDomain: (NSString*) val
{
    self.dictionary[@"enterpriseDomain"] = val;
}

- (NSArray*) enterpriseProtectedDomainNames
{
    if(!_enterpriseProtectedDomainNames){
        
    NSMutableArray *enterpriseProtectedDomainNamesResult = [NSMutableArray array];
    NSArray *enterpriseProtectedDomainNames = self.dictionary[@"enterpriseProtectedDomainNames"];

    if ([enterpriseProtectedDomainNames isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in enterpriseProtectedDomainNames){
            [enterpriseProtectedDomainNamesResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _enterpriseProtectedDomainNames = enterpriseProtectedDomainNamesResult;
        
    }
    return _enterpriseProtectedDomainNames;
}

- (void) setEnterpriseProtectedDomainNames: (NSArray*) val
{
    _enterpriseProtectedDomainNames = val;
    self.dictionary[@"enterpriseProtectedDomainNames"] = val;
}

- (BOOL) protectionUnderLockConfigRequired
{
    _protectionUnderLockConfigRequired = [self.dictionary[@"protectionUnderLockConfigRequired"] boolValue];
    return _protectionUnderLockConfigRequired;
}

- (void) setProtectionUnderLockConfigRequired: (BOOL) val
{
    _protectionUnderLockConfigRequired = val;
    self.dictionary[@"protectionUnderLockConfigRequired"] = @(val);
}

- (MSGraphWindowsInformationProtectionDataRecoveryCertificate*) dataRecoveryCertificate
{
    if(!_dataRecoveryCertificate){
        _dataRecoveryCertificate = [[MSGraphWindowsInformationProtectionDataRecoveryCertificate alloc] initWithDictionary: self.dictionary[@"dataRecoveryCertificate"]];
    }
    return _dataRecoveryCertificate;
}

- (void) setDataRecoveryCertificate: (MSGraphWindowsInformationProtectionDataRecoveryCertificate*) val
{
    _dataRecoveryCertificate = val;
    self.dictionary[@"dataRecoveryCertificate"] = val;
}

- (BOOL) revokeOnUnenrollDisabled
{
    _revokeOnUnenrollDisabled = [self.dictionary[@"revokeOnUnenrollDisabled"] boolValue];
    return _revokeOnUnenrollDisabled;
}

- (void) setRevokeOnUnenrollDisabled: (BOOL) val
{
    _revokeOnUnenrollDisabled = val;
    self.dictionary[@"revokeOnUnenrollDisabled"] = @(val);
}

- (NSString*) rightsManagementServicesTemplateId
{
    if([[NSNull null] isEqual:self.dictionary[@"rightsManagementServicesTemplateId"]])
    {
        return nil;
    }   
    return self.dictionary[@"rightsManagementServicesTemplateId"];
}

- (void) setRightsManagementServicesTemplateId: (NSString*) val
{
    self.dictionary[@"rightsManagementServicesTemplateId"] = val;
}

- (BOOL) azureRightsManagementServicesAllowed
{
    _azureRightsManagementServicesAllowed = [self.dictionary[@"azureRightsManagementServicesAllowed"] boolValue];
    return _azureRightsManagementServicesAllowed;
}

- (void) setAzureRightsManagementServicesAllowed: (BOOL) val
{
    _azureRightsManagementServicesAllowed = val;
    self.dictionary[@"azureRightsManagementServicesAllowed"] = @(val);
}

- (BOOL) iconsVisible
{
    _iconsVisible = [self.dictionary[@"iconsVisible"] boolValue];
    return _iconsVisible;
}

- (void) setIconsVisible: (BOOL) val
{
    _iconsVisible = val;
    self.dictionary[@"iconsVisible"] = @(val);
}

- (NSArray*) protectedApps
{
    if(!_protectedApps){
        
    NSMutableArray *protectedAppsResult = [NSMutableArray array];
    NSArray *protectedApps = self.dictionary[@"protectedApps"];

    if ([protectedApps isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionApp in protectedApps){
            [protectedAppsResult addObject:tempWindowsInformationProtectionApp];
        }
    }

    _protectedApps = protectedAppsResult;
        
    }
    return _protectedApps;
}

- (void) setProtectedApps: (NSArray*) val
{
    _protectedApps = val;
    self.dictionary[@"protectedApps"] = val;
}

- (NSArray*) exemptApps
{
    if(!_exemptApps){
        
    NSMutableArray *exemptAppsResult = [NSMutableArray array];
    NSArray *exemptApps = self.dictionary[@"exemptApps"];

    if ([exemptApps isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionApp in exemptApps){
            [exemptAppsResult addObject:tempWindowsInformationProtectionApp];
        }
    }

    _exemptApps = exemptAppsResult;
        
    }
    return _exemptApps;
}

- (void) setExemptApps: (NSArray*) val
{
    _exemptApps = val;
    self.dictionary[@"exemptApps"] = val;
}

- (NSArray*) enterpriseNetworkDomainNames
{
    if(!_enterpriseNetworkDomainNames){
        
    NSMutableArray *enterpriseNetworkDomainNamesResult = [NSMutableArray array];
    NSArray *enterpriseNetworkDomainNames = self.dictionary[@"enterpriseNetworkDomainNames"];

    if ([enterpriseNetworkDomainNames isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in enterpriseNetworkDomainNames){
            [enterpriseNetworkDomainNamesResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _enterpriseNetworkDomainNames = enterpriseNetworkDomainNamesResult;
        
    }
    return _enterpriseNetworkDomainNames;
}

- (void) setEnterpriseNetworkDomainNames: (NSArray*) val
{
    _enterpriseNetworkDomainNames = val;
    self.dictionary[@"enterpriseNetworkDomainNames"] = val;
}

- (NSArray*) enterpriseProxiedDomains
{
    if(!_enterpriseProxiedDomains){
        
    NSMutableArray *enterpriseProxiedDomainsResult = [NSMutableArray array];
    NSArray *enterpriseProxiedDomains = self.dictionary[@"enterpriseProxiedDomains"];

    if ([enterpriseProxiedDomains isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionProxiedDomainCollection in enterpriseProxiedDomains){
            [enterpriseProxiedDomainsResult addObject:tempWindowsInformationProtectionProxiedDomainCollection];
        }
    }

    _enterpriseProxiedDomains = enterpriseProxiedDomainsResult;
        
    }
    return _enterpriseProxiedDomains;
}

- (void) setEnterpriseProxiedDomains: (NSArray*) val
{
    _enterpriseProxiedDomains = val;
    self.dictionary[@"enterpriseProxiedDomains"] = val;
}

- (NSArray*) enterpriseIPRanges
{
    if(!_enterpriseIPRanges){
        
    NSMutableArray *enterpriseIPRangesResult = [NSMutableArray array];
    NSArray *enterpriseIPRanges = self.dictionary[@"enterpriseIPRanges"];

    if ([enterpriseIPRanges isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionIPRangeCollection in enterpriseIPRanges){
            [enterpriseIPRangesResult addObject:tempWindowsInformationProtectionIPRangeCollection];
        }
    }

    _enterpriseIPRanges = enterpriseIPRangesResult;
        
    }
    return _enterpriseIPRanges;
}

- (void) setEnterpriseIPRanges: (NSArray*) val
{
    _enterpriseIPRanges = val;
    self.dictionary[@"enterpriseIPRanges"] = val;
}

- (BOOL) enterpriseIPRangesAreAuthoritative
{
    _enterpriseIPRangesAreAuthoritative = [self.dictionary[@"enterpriseIPRangesAreAuthoritative"] boolValue];
    return _enterpriseIPRangesAreAuthoritative;
}

- (void) setEnterpriseIPRangesAreAuthoritative: (BOOL) val
{
    _enterpriseIPRangesAreAuthoritative = val;
    self.dictionary[@"enterpriseIPRangesAreAuthoritative"] = @(val);
}

- (NSArray*) enterpriseProxyServers
{
    if(!_enterpriseProxyServers){
        
    NSMutableArray *enterpriseProxyServersResult = [NSMutableArray array];
    NSArray *enterpriseProxyServers = self.dictionary[@"enterpriseProxyServers"];

    if ([enterpriseProxyServers isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in enterpriseProxyServers){
            [enterpriseProxyServersResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _enterpriseProxyServers = enterpriseProxyServersResult;
        
    }
    return _enterpriseProxyServers;
}

- (void) setEnterpriseProxyServers: (NSArray*) val
{
    _enterpriseProxyServers = val;
    self.dictionary[@"enterpriseProxyServers"] = val;
}

- (NSArray*) enterpriseInternalProxyServers
{
    if(!_enterpriseInternalProxyServers){
        
    NSMutableArray *enterpriseInternalProxyServersResult = [NSMutableArray array];
    NSArray *enterpriseInternalProxyServers = self.dictionary[@"enterpriseInternalProxyServers"];

    if ([enterpriseInternalProxyServers isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in enterpriseInternalProxyServers){
            [enterpriseInternalProxyServersResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _enterpriseInternalProxyServers = enterpriseInternalProxyServersResult;
        
    }
    return _enterpriseInternalProxyServers;
}

- (void) setEnterpriseInternalProxyServers: (NSArray*) val
{
    _enterpriseInternalProxyServers = val;
    self.dictionary[@"enterpriseInternalProxyServers"] = val;
}

- (BOOL) enterpriseProxyServersAreAuthoritative
{
    _enterpriseProxyServersAreAuthoritative = [self.dictionary[@"enterpriseProxyServersAreAuthoritative"] boolValue];
    return _enterpriseProxyServersAreAuthoritative;
}

- (void) setEnterpriseProxyServersAreAuthoritative: (BOOL) val
{
    _enterpriseProxyServersAreAuthoritative = val;
    self.dictionary[@"enterpriseProxyServersAreAuthoritative"] = @(val);
}

- (NSArray*) neutralDomainResources
{
    if(!_neutralDomainResources){
        
    NSMutableArray *neutralDomainResourcesResult = [NSMutableArray array];
    NSArray *neutralDomainResources = self.dictionary[@"neutralDomainResources"];

    if ([neutralDomainResources isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in neutralDomainResources){
            [neutralDomainResourcesResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _neutralDomainResources = neutralDomainResourcesResult;
        
    }
    return _neutralDomainResources;
}

- (void) setNeutralDomainResources: (NSArray*) val
{
    _neutralDomainResources = val;
    self.dictionary[@"neutralDomainResources"] = val;
}

- (BOOL) indexingEncryptedStoresOrItemsBlocked
{
    _indexingEncryptedStoresOrItemsBlocked = [self.dictionary[@"indexingEncryptedStoresOrItemsBlocked"] boolValue];
    return _indexingEncryptedStoresOrItemsBlocked;
}

- (void) setIndexingEncryptedStoresOrItemsBlocked: (BOOL) val
{
    _indexingEncryptedStoresOrItemsBlocked = val;
    self.dictionary[@"indexingEncryptedStoresOrItemsBlocked"] = @(val);
}

- (NSArray*) smbAutoEncryptedFileExtensions
{
    if(!_smbAutoEncryptedFileExtensions){
        
    NSMutableArray *smbAutoEncryptedFileExtensionsResult = [NSMutableArray array];
    NSArray *smbAutoEncryptedFileExtensions = self.dictionary[@"smbAutoEncryptedFileExtensions"];

    if ([smbAutoEncryptedFileExtensions isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionResourceCollection in smbAutoEncryptedFileExtensions){
            [smbAutoEncryptedFileExtensionsResult addObject:tempWindowsInformationProtectionResourceCollection];
        }
    }

    _smbAutoEncryptedFileExtensions = smbAutoEncryptedFileExtensionsResult;
        
    }
    return _smbAutoEncryptedFileExtensions;
}

- (void) setSmbAutoEncryptedFileExtensions: (NSArray*) val
{
    _smbAutoEncryptedFileExtensions = val;
    self.dictionary[@"smbAutoEncryptedFileExtensions"] = val;
}

- (BOOL) isAssigned
{
    _isAssigned = [self.dictionary[@"isAssigned"] boolValue];
    return _isAssigned;
}

- (void) setIsAssigned: (BOOL) val
{
    _isAssigned = val;
    self.dictionary[@"isAssigned"] = @(val);
}

- (NSArray*) protectedAppLockerFiles
{
    if(!_protectedAppLockerFiles){
        
    NSMutableArray *protectedAppLockerFilesResult = [NSMutableArray array];
    NSArray *protectedAppLockerFiles = self.dictionary[@"protectedAppLockerFiles"];

    if ([protectedAppLockerFiles isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionAppLockerFile in protectedAppLockerFiles){
            [protectedAppLockerFilesResult addObject:tempWindowsInformationProtectionAppLockerFile];
        }
    }

    _protectedAppLockerFiles = protectedAppLockerFilesResult;
        
    }
    return _protectedAppLockerFiles;
}

- (void) setProtectedAppLockerFiles: (NSArray*) val
{
    _protectedAppLockerFiles = val;
    self.dictionary[@"protectedAppLockerFiles"] = val;
}

- (NSArray*) exemptAppLockerFiles
{
    if(!_exemptAppLockerFiles){
        
    NSMutableArray *exemptAppLockerFilesResult = [NSMutableArray array];
    NSArray *exemptAppLockerFiles = self.dictionary[@"exemptAppLockerFiles"];

    if ([exemptAppLockerFiles isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionAppLockerFile in exemptAppLockerFiles){
            [exemptAppLockerFilesResult addObject:tempWindowsInformationProtectionAppLockerFile];
        }
    }

    _exemptAppLockerFiles = exemptAppLockerFilesResult;
        
    }
    return _exemptAppLockerFiles;
}

- (void) setExemptAppLockerFiles: (NSArray*) val
{
    _exemptAppLockerFiles = val;
    self.dictionary[@"exemptAppLockerFiles"] = val;
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempTargetedManagedAppPolicyAssignment in assignments){
            [assignmentsResult addObject:tempTargetedManagedAppPolicyAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}


@end
