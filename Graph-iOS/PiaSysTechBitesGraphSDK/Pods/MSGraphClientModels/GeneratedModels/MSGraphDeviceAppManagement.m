// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceAppManagement()
{
    NSDate* _microsoftStoreForBusinessLastSuccessfulSyncDateTime;
    BOOL _isEnabledForMicrosoftStoreForBusiness;
    NSString* _microsoftStoreForBusinessLanguage;
    NSDate* _microsoftStoreForBusinessLastCompletedApplicationSyncTime;
    NSArray* _managedEBooks;
    NSArray* _mobileApps;
    NSArray* _mobileAppCategories;
    NSArray* _mobileAppConfigurations;
    NSArray* _vppTokens;
    NSArray* _managedAppPolicies;
    NSArray* _iosManagedAppProtections;
    NSArray* _androidManagedAppProtections;
    NSArray* _defaultManagedAppProtections;
    NSArray* _targetedManagedAppConfigurations;
    NSArray* _mdmWindowsInformationProtectionPolicies;
    NSArray* _windowsInformationProtectionPolicies;
    NSArray* _managedAppRegistrations;
    NSArray* _managedAppStatuses;
}
@end

@implementation MSGraphDeviceAppManagement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceAppManagement";
    }
    return self;
}
- (NSDate*) microsoftStoreForBusinessLastSuccessfulSyncDateTime
{
    if(!_microsoftStoreForBusinessLastSuccessfulSyncDateTime){
        _microsoftStoreForBusinessLastSuccessfulSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"microsoftStoreForBusinessLastSuccessfulSyncDateTime"]];
    }
    return _microsoftStoreForBusinessLastSuccessfulSyncDateTime;
}

- (void) setMicrosoftStoreForBusinessLastSuccessfulSyncDateTime: (NSDate*) val
{
    _microsoftStoreForBusinessLastSuccessfulSyncDateTime = val;
    self.dictionary[@"microsoftStoreForBusinessLastSuccessfulSyncDateTime"] = [val ms_toString];
}

- (BOOL) isEnabledForMicrosoftStoreForBusiness
{
    _isEnabledForMicrosoftStoreForBusiness = [self.dictionary[@"isEnabledForMicrosoftStoreForBusiness"] boolValue];
    return _isEnabledForMicrosoftStoreForBusiness;
}

- (void) setIsEnabledForMicrosoftStoreForBusiness: (BOOL) val
{
    _isEnabledForMicrosoftStoreForBusiness = val;
    self.dictionary[@"isEnabledForMicrosoftStoreForBusiness"] = @(val);
}

- (NSString*) microsoftStoreForBusinessLanguage
{
    if([[NSNull null] isEqual:self.dictionary[@"microsoftStoreForBusinessLanguage"]])
    {
        return nil;
    }   
    return self.dictionary[@"microsoftStoreForBusinessLanguage"];
}

- (void) setMicrosoftStoreForBusinessLanguage: (NSString*) val
{
    self.dictionary[@"microsoftStoreForBusinessLanguage"] = val;
}

- (NSDate*) microsoftStoreForBusinessLastCompletedApplicationSyncTime
{
    if(!_microsoftStoreForBusinessLastCompletedApplicationSyncTime){
        _microsoftStoreForBusinessLastCompletedApplicationSyncTime = [NSDate ms_dateFromString: self.dictionary[@"microsoftStoreForBusinessLastCompletedApplicationSyncTime"]];
    }
    return _microsoftStoreForBusinessLastCompletedApplicationSyncTime;
}

- (void) setMicrosoftStoreForBusinessLastCompletedApplicationSyncTime: (NSDate*) val
{
    _microsoftStoreForBusinessLastCompletedApplicationSyncTime = val;
    self.dictionary[@"microsoftStoreForBusinessLastCompletedApplicationSyncTime"] = [val ms_toString];
}

- (NSArray*) managedEBooks
{
    if(!_managedEBooks){
        
    NSMutableArray *managedEBooksResult = [NSMutableArray array];
    NSArray *managedEBooks = self.dictionary[@"managedEBooks"];

    if ([managedEBooks isKindOfClass:[NSArray class]]){
        for (id tempManagedEBook in managedEBooks){
            [managedEBooksResult addObject:tempManagedEBook];
        }
    }

    _managedEBooks = managedEBooksResult;
        
    }
    return _managedEBooks;
}

- (void) setManagedEBooks: (NSArray*) val
{
    _managedEBooks = val;
    self.dictionary[@"managedEBooks"] = val;
}

- (NSArray*) mobileApps
{
    if(!_mobileApps){
        
    NSMutableArray *mobileAppsResult = [NSMutableArray array];
    NSArray *mobileApps = self.dictionary[@"mobileApps"];

    if ([mobileApps isKindOfClass:[NSArray class]]){
        for (id tempMobileApp in mobileApps){
            [mobileAppsResult addObject:tempMobileApp];
        }
    }

    _mobileApps = mobileAppsResult;
        
    }
    return _mobileApps;
}

- (void) setMobileApps: (NSArray*) val
{
    _mobileApps = val;
    self.dictionary[@"mobileApps"] = val;
}

- (NSArray*) mobileAppCategories
{
    if(!_mobileAppCategories){
        
    NSMutableArray *mobileAppCategoriesResult = [NSMutableArray array];
    NSArray *mobileAppCategories = self.dictionary[@"mobileAppCategories"];

    if ([mobileAppCategories isKindOfClass:[NSArray class]]){
        for (id tempMobileAppCategory in mobileAppCategories){
            [mobileAppCategoriesResult addObject:tempMobileAppCategory];
        }
    }

    _mobileAppCategories = mobileAppCategoriesResult;
        
    }
    return _mobileAppCategories;
}

- (void) setMobileAppCategories: (NSArray*) val
{
    _mobileAppCategories = val;
    self.dictionary[@"mobileAppCategories"] = val;
}

- (NSArray*) mobileAppConfigurations
{
    if(!_mobileAppConfigurations){
        
    NSMutableArray *mobileAppConfigurationsResult = [NSMutableArray array];
    NSArray *mobileAppConfigurations = self.dictionary[@"mobileAppConfigurations"];

    if ([mobileAppConfigurations isKindOfClass:[NSArray class]]){
        for (id tempManagedDeviceMobileAppConfiguration in mobileAppConfigurations){
            [mobileAppConfigurationsResult addObject:tempManagedDeviceMobileAppConfiguration];
        }
    }

    _mobileAppConfigurations = mobileAppConfigurationsResult;
        
    }
    return _mobileAppConfigurations;
}

- (void) setMobileAppConfigurations: (NSArray*) val
{
    _mobileAppConfigurations = val;
    self.dictionary[@"mobileAppConfigurations"] = val;
}

- (NSArray*) vppTokens
{
    if(!_vppTokens){
        
    NSMutableArray *vppTokensResult = [NSMutableArray array];
    NSArray *vppTokens = self.dictionary[@"vppTokens"];

    if ([vppTokens isKindOfClass:[NSArray class]]){
        for (id tempVppToken in vppTokens){
            [vppTokensResult addObject:tempVppToken];
        }
    }

    _vppTokens = vppTokensResult;
        
    }
    return _vppTokens;
}

- (void) setVppTokens: (NSArray*) val
{
    _vppTokens = val;
    self.dictionary[@"vppTokens"] = val;
}

- (NSArray*) managedAppPolicies
{
    if(!_managedAppPolicies){
        
    NSMutableArray *managedAppPoliciesResult = [NSMutableArray array];
    NSArray *managedAppPolicies = self.dictionary[@"managedAppPolicies"];

    if ([managedAppPolicies isKindOfClass:[NSArray class]]){
        for (id tempManagedAppPolicy in managedAppPolicies){
            [managedAppPoliciesResult addObject:tempManagedAppPolicy];
        }
    }

    _managedAppPolicies = managedAppPoliciesResult;
        
    }
    return _managedAppPolicies;
}

- (void) setManagedAppPolicies: (NSArray*) val
{
    _managedAppPolicies = val;
    self.dictionary[@"managedAppPolicies"] = val;
}

- (NSArray*) iosManagedAppProtections
{
    if(!_iosManagedAppProtections){
        
    NSMutableArray *iosManagedAppProtectionsResult = [NSMutableArray array];
    NSArray *iosManagedAppProtections = self.dictionary[@"iosManagedAppProtections"];

    if ([iosManagedAppProtections isKindOfClass:[NSArray class]]){
        for (id tempIosManagedAppProtection in iosManagedAppProtections){
            [iosManagedAppProtectionsResult addObject:tempIosManagedAppProtection];
        }
    }

    _iosManagedAppProtections = iosManagedAppProtectionsResult;
        
    }
    return _iosManagedAppProtections;
}

- (void) setIosManagedAppProtections: (NSArray*) val
{
    _iosManagedAppProtections = val;
    self.dictionary[@"iosManagedAppProtections"] = val;
}

- (NSArray*) androidManagedAppProtections
{
    if(!_androidManagedAppProtections){
        
    NSMutableArray *androidManagedAppProtectionsResult = [NSMutableArray array];
    NSArray *androidManagedAppProtections = self.dictionary[@"androidManagedAppProtections"];

    if ([androidManagedAppProtections isKindOfClass:[NSArray class]]){
        for (id tempAndroidManagedAppProtection in androidManagedAppProtections){
            [androidManagedAppProtectionsResult addObject:tempAndroidManagedAppProtection];
        }
    }

    _androidManagedAppProtections = androidManagedAppProtectionsResult;
        
    }
    return _androidManagedAppProtections;
}

- (void) setAndroidManagedAppProtections: (NSArray*) val
{
    _androidManagedAppProtections = val;
    self.dictionary[@"androidManagedAppProtections"] = val;
}

- (NSArray*) defaultManagedAppProtections
{
    if(!_defaultManagedAppProtections){
        
    NSMutableArray *defaultManagedAppProtectionsResult = [NSMutableArray array];
    NSArray *defaultManagedAppProtections = self.dictionary[@"defaultManagedAppProtections"];

    if ([defaultManagedAppProtections isKindOfClass:[NSArray class]]){
        for (id tempDefaultManagedAppProtection in defaultManagedAppProtections){
            [defaultManagedAppProtectionsResult addObject:tempDefaultManagedAppProtection];
        }
    }

    _defaultManagedAppProtections = defaultManagedAppProtectionsResult;
        
    }
    return _defaultManagedAppProtections;
}

- (void) setDefaultManagedAppProtections: (NSArray*) val
{
    _defaultManagedAppProtections = val;
    self.dictionary[@"defaultManagedAppProtections"] = val;
}

- (NSArray*) targetedManagedAppConfigurations
{
    if(!_targetedManagedAppConfigurations){
        
    NSMutableArray *targetedManagedAppConfigurationsResult = [NSMutableArray array];
    NSArray *targetedManagedAppConfigurations = self.dictionary[@"targetedManagedAppConfigurations"];

    if ([targetedManagedAppConfigurations isKindOfClass:[NSArray class]]){
        for (id tempTargetedManagedAppConfiguration in targetedManagedAppConfigurations){
            [targetedManagedAppConfigurationsResult addObject:tempTargetedManagedAppConfiguration];
        }
    }

    _targetedManagedAppConfigurations = targetedManagedAppConfigurationsResult;
        
    }
    return _targetedManagedAppConfigurations;
}

- (void) setTargetedManagedAppConfigurations: (NSArray*) val
{
    _targetedManagedAppConfigurations = val;
    self.dictionary[@"targetedManagedAppConfigurations"] = val;
}

- (NSArray*) mdmWindowsInformationProtectionPolicies
{
    if(!_mdmWindowsInformationProtectionPolicies){
        
    NSMutableArray *mdmWindowsInformationProtectionPoliciesResult = [NSMutableArray array];
    NSArray *mdmWindowsInformationProtectionPolicies = self.dictionary[@"mdmWindowsInformationProtectionPolicies"];

    if ([mdmWindowsInformationProtectionPolicies isKindOfClass:[NSArray class]]){
        for (id tempMdmWindowsInformationProtectionPolicy in mdmWindowsInformationProtectionPolicies){
            [mdmWindowsInformationProtectionPoliciesResult addObject:tempMdmWindowsInformationProtectionPolicy];
        }
    }

    _mdmWindowsInformationProtectionPolicies = mdmWindowsInformationProtectionPoliciesResult;
        
    }
    return _mdmWindowsInformationProtectionPolicies;
}

- (void) setMdmWindowsInformationProtectionPolicies: (NSArray*) val
{
    _mdmWindowsInformationProtectionPolicies = val;
    self.dictionary[@"mdmWindowsInformationProtectionPolicies"] = val;
}

- (NSArray*) windowsInformationProtectionPolicies
{
    if(!_windowsInformationProtectionPolicies){
        
    NSMutableArray *windowsInformationProtectionPoliciesResult = [NSMutableArray array];
    NSArray *windowsInformationProtectionPolicies = self.dictionary[@"windowsInformationProtectionPolicies"];

    if ([windowsInformationProtectionPolicies isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionPolicy in windowsInformationProtectionPolicies){
            [windowsInformationProtectionPoliciesResult addObject:tempWindowsInformationProtectionPolicy];
        }
    }

    _windowsInformationProtectionPolicies = windowsInformationProtectionPoliciesResult;
        
    }
    return _windowsInformationProtectionPolicies;
}

- (void) setWindowsInformationProtectionPolicies: (NSArray*) val
{
    _windowsInformationProtectionPolicies = val;
    self.dictionary[@"windowsInformationProtectionPolicies"] = val;
}

- (NSArray*) managedAppRegistrations
{
    if(!_managedAppRegistrations){
        
    NSMutableArray *managedAppRegistrationsResult = [NSMutableArray array];
    NSArray *managedAppRegistrations = self.dictionary[@"managedAppRegistrations"];

    if ([managedAppRegistrations isKindOfClass:[NSArray class]]){
        for (id tempManagedAppRegistration in managedAppRegistrations){
            [managedAppRegistrationsResult addObject:tempManagedAppRegistration];
        }
    }

    _managedAppRegistrations = managedAppRegistrationsResult;
        
    }
    return _managedAppRegistrations;
}

- (void) setManagedAppRegistrations: (NSArray*) val
{
    _managedAppRegistrations = val;
    self.dictionary[@"managedAppRegistrations"] = val;
}

- (NSArray*) managedAppStatuses
{
    if(!_managedAppStatuses){
        
    NSMutableArray *managedAppStatusesResult = [NSMutableArray array];
    NSArray *managedAppStatuses = self.dictionary[@"managedAppStatuses"];

    if ([managedAppStatuses isKindOfClass:[NSArray class]]){
        for (id tempManagedAppStatus in managedAppStatuses){
            [managedAppStatusesResult addObject:tempManagedAppStatus];
        }
    }

    _managedAppStatuses = managedAppStatusesResult;
        
    }
    return _managedAppStatuses;
}

- (void) setManagedAppStatuses: (NSArray*) val
{
    _managedAppStatuses = val;
    self.dictionary[@"managedAppStatuses"] = val;
}


@end
