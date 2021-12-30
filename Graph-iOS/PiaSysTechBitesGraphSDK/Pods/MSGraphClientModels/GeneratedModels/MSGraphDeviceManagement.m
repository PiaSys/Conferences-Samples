// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagement()
{
    MSGraphDeviceManagementSettings* _settings;
    MSGraphIntuneBrand* _intuneBrand;
    MSGraphDeviceManagementSubscriptionState* _subscriptionState;
    NSArray* _termsAndConditions;
    NSArray* _deviceConfigurations;
    NSArray* _deviceCompliancePolicies;
    MSGraphSoftwareUpdateStatusSummary* _softwareUpdateStatusSummary;
    MSGraphDeviceCompliancePolicyDeviceStateSummary* _deviceCompliancePolicyDeviceStateSummary;
    NSArray* _deviceCompliancePolicySettingStateSummaries;
    MSGraphDeviceConfigurationDeviceStateSummary* _deviceConfigurationDeviceStateSummaries;
    NSArray* _iosUpdateStatuses;
    NSArray* _deviceCategories;
    NSArray* _exchangeConnectors;
    NSArray* _deviceEnrollmentConfigurations;
    MSGraphOnPremisesConditionalAccessSettings* _conditionalAccessSettings;
    NSArray* _mobileThreatDefenseConnectors;
    NSArray* _deviceManagementPartners;
    MSGraphApplePushNotificationCertificate* _applePushNotificationCertificate;
    MSGraphManagedDeviceOverview* _managedDeviceOverview;
    NSArray* _detectedApps;
    NSArray* _managedDevices;
    NSArray* _notificationMessageTemplates;
    NSArray* _roleDefinitions;
    NSArray* _roleAssignments;
    NSArray* _resourceOperations;
    NSArray* _remoteAssistancePartners;
    NSArray* _telecomExpenseManagementPartners;
    NSArray* _troubleshootingEvents;
    NSArray* _windowsInformationProtectionAppLearningSummaries;
    NSArray* _windowsInformationProtectionNetworkLearningSummaries;
}
@end

@implementation MSGraphDeviceManagement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagement";
    }
    return self;
}
- (MSGraphDeviceManagementSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphDeviceManagementSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphDeviceManagementSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (MSGraphIntuneBrand*) intuneBrand
{
    if(!_intuneBrand){
        _intuneBrand = [[MSGraphIntuneBrand alloc] initWithDictionary: self.dictionary[@"intuneBrand"]];
    }
    return _intuneBrand;
}

- (void) setIntuneBrand: (MSGraphIntuneBrand*) val
{
    _intuneBrand = val;
    self.dictionary[@"intuneBrand"] = val;
}

- (MSGraphDeviceManagementSubscriptionState*) subscriptionState
{
    if(!_subscriptionState){
        _subscriptionState = [self.dictionary[@"subscriptionState"] toMSGraphDeviceManagementSubscriptionState];
    }
    return _subscriptionState;
}

- (void) setSubscriptionState: (MSGraphDeviceManagementSubscriptionState*) val
{
    _subscriptionState = val;
    self.dictionary[@"subscriptionState"] = val;
}

- (NSArray*) termsAndConditions
{
    if(!_termsAndConditions){
        
    NSMutableArray *termsAndConditionsResult = [NSMutableArray array];
    NSArray *termsAndConditions = self.dictionary[@"termsAndConditions"];

    if ([termsAndConditions isKindOfClass:[NSArray class]]){
        for (id tempTermsAndConditions in termsAndConditions){
            [termsAndConditionsResult addObject:tempTermsAndConditions];
        }
    }

    _termsAndConditions = termsAndConditionsResult;
        
    }
    return _termsAndConditions;
}

- (void) setTermsAndConditions: (NSArray*) val
{
    _termsAndConditions = val;
    self.dictionary[@"termsAndConditions"] = val;
}

- (NSArray*) deviceConfigurations
{
    if(!_deviceConfigurations){
        
    NSMutableArray *deviceConfigurationsResult = [NSMutableArray array];
    NSArray *deviceConfigurations = self.dictionary[@"deviceConfigurations"];

    if ([deviceConfigurations isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfiguration in deviceConfigurations){
            [deviceConfigurationsResult addObject:tempDeviceConfiguration];
        }
    }

    _deviceConfigurations = deviceConfigurationsResult;
        
    }
    return _deviceConfigurations;
}

- (void) setDeviceConfigurations: (NSArray*) val
{
    _deviceConfigurations = val;
    self.dictionary[@"deviceConfigurations"] = val;
}

- (NSArray*) deviceCompliancePolicies
{
    if(!_deviceCompliancePolicies){
        
    NSMutableArray *deviceCompliancePoliciesResult = [NSMutableArray array];
    NSArray *deviceCompliancePolicies = self.dictionary[@"deviceCompliancePolicies"];

    if ([deviceCompliancePolicies isKindOfClass:[NSArray class]]){
        for (id tempDeviceCompliancePolicy in deviceCompliancePolicies){
            [deviceCompliancePoliciesResult addObject:tempDeviceCompliancePolicy];
        }
    }

    _deviceCompliancePolicies = deviceCompliancePoliciesResult;
        
    }
    return _deviceCompliancePolicies;
}

- (void) setDeviceCompliancePolicies: (NSArray*) val
{
    _deviceCompliancePolicies = val;
    self.dictionary[@"deviceCompliancePolicies"] = val;
}

- (MSGraphSoftwareUpdateStatusSummary*) softwareUpdateStatusSummary
{
    if(!_softwareUpdateStatusSummary){
        _softwareUpdateStatusSummary = [[MSGraphSoftwareUpdateStatusSummary alloc] initWithDictionary: self.dictionary[@"softwareUpdateStatusSummary"]];
    }
    return _softwareUpdateStatusSummary;
}

- (void) setSoftwareUpdateStatusSummary: (MSGraphSoftwareUpdateStatusSummary*) val
{
    _softwareUpdateStatusSummary = val;
    self.dictionary[@"softwareUpdateStatusSummary"] = val;
}

- (MSGraphDeviceCompliancePolicyDeviceStateSummary*) deviceCompliancePolicyDeviceStateSummary
{
    if(!_deviceCompliancePolicyDeviceStateSummary){
        _deviceCompliancePolicyDeviceStateSummary = [[MSGraphDeviceCompliancePolicyDeviceStateSummary alloc] initWithDictionary: self.dictionary[@"deviceCompliancePolicyDeviceStateSummary"]];
    }
    return _deviceCompliancePolicyDeviceStateSummary;
}

- (void) setDeviceCompliancePolicyDeviceStateSummary: (MSGraphDeviceCompliancePolicyDeviceStateSummary*) val
{
    _deviceCompliancePolicyDeviceStateSummary = val;
    self.dictionary[@"deviceCompliancePolicyDeviceStateSummary"] = val;
}

- (NSArray*) deviceCompliancePolicySettingStateSummaries
{
    if(!_deviceCompliancePolicySettingStateSummaries){
        
    NSMutableArray *deviceCompliancePolicySettingStateSummariesResult = [NSMutableArray array];
    NSArray *deviceCompliancePolicySettingStateSummaries = self.dictionary[@"deviceCompliancePolicySettingStateSummaries"];

    if ([deviceCompliancePolicySettingStateSummaries isKindOfClass:[NSArray class]]){
        for (id tempDeviceCompliancePolicySettingStateSummary in deviceCompliancePolicySettingStateSummaries){
            [deviceCompliancePolicySettingStateSummariesResult addObject:tempDeviceCompliancePolicySettingStateSummary];
        }
    }

    _deviceCompliancePolicySettingStateSummaries = deviceCompliancePolicySettingStateSummariesResult;
        
    }
    return _deviceCompliancePolicySettingStateSummaries;
}

- (void) setDeviceCompliancePolicySettingStateSummaries: (NSArray*) val
{
    _deviceCompliancePolicySettingStateSummaries = val;
    self.dictionary[@"deviceCompliancePolicySettingStateSummaries"] = val;
}

- (MSGraphDeviceConfigurationDeviceStateSummary*) deviceConfigurationDeviceStateSummaries
{
    if(!_deviceConfigurationDeviceStateSummaries){
        _deviceConfigurationDeviceStateSummaries = [[MSGraphDeviceConfigurationDeviceStateSummary alloc] initWithDictionary: self.dictionary[@"deviceConfigurationDeviceStateSummaries"]];
    }
    return _deviceConfigurationDeviceStateSummaries;
}

- (void) setDeviceConfigurationDeviceStateSummaries: (MSGraphDeviceConfigurationDeviceStateSummary*) val
{
    _deviceConfigurationDeviceStateSummaries = val;
    self.dictionary[@"deviceConfigurationDeviceStateSummaries"] = val;
}

- (NSArray*) iosUpdateStatuses
{
    if(!_iosUpdateStatuses){
        
    NSMutableArray *iosUpdateStatusesResult = [NSMutableArray array];
    NSArray *iosUpdateStatuses = self.dictionary[@"iosUpdateStatuses"];

    if ([iosUpdateStatuses isKindOfClass:[NSArray class]]){
        for (id tempIosUpdateDeviceStatus in iosUpdateStatuses){
            [iosUpdateStatusesResult addObject:tempIosUpdateDeviceStatus];
        }
    }

    _iosUpdateStatuses = iosUpdateStatusesResult;
        
    }
    return _iosUpdateStatuses;
}

- (void) setIosUpdateStatuses: (NSArray*) val
{
    _iosUpdateStatuses = val;
    self.dictionary[@"iosUpdateStatuses"] = val;
}

- (NSArray*) deviceCategories
{
    if(!_deviceCategories){
        
    NSMutableArray *deviceCategoriesResult = [NSMutableArray array];
    NSArray *deviceCategories = self.dictionary[@"deviceCategories"];

    if ([deviceCategories isKindOfClass:[NSArray class]]){
        for (id tempDeviceCategory in deviceCategories){
            [deviceCategoriesResult addObject:tempDeviceCategory];
        }
    }

    _deviceCategories = deviceCategoriesResult;
        
    }
    return _deviceCategories;
}

- (void) setDeviceCategories: (NSArray*) val
{
    _deviceCategories = val;
    self.dictionary[@"deviceCategories"] = val;
}

- (NSArray*) exchangeConnectors
{
    if(!_exchangeConnectors){
        
    NSMutableArray *exchangeConnectorsResult = [NSMutableArray array];
    NSArray *exchangeConnectors = self.dictionary[@"exchangeConnectors"];

    if ([exchangeConnectors isKindOfClass:[NSArray class]]){
        for (id tempDeviceManagementExchangeConnector in exchangeConnectors){
            [exchangeConnectorsResult addObject:tempDeviceManagementExchangeConnector];
        }
    }

    _exchangeConnectors = exchangeConnectorsResult;
        
    }
    return _exchangeConnectors;
}

- (void) setExchangeConnectors: (NSArray*) val
{
    _exchangeConnectors = val;
    self.dictionary[@"exchangeConnectors"] = val;
}

- (NSArray*) deviceEnrollmentConfigurations
{
    if(!_deviceEnrollmentConfigurations){
        
    NSMutableArray *deviceEnrollmentConfigurationsResult = [NSMutableArray array];
    NSArray *deviceEnrollmentConfigurations = self.dictionary[@"deviceEnrollmentConfigurations"];

    if ([deviceEnrollmentConfigurations isKindOfClass:[NSArray class]]){
        for (id tempDeviceEnrollmentConfiguration in deviceEnrollmentConfigurations){
            [deviceEnrollmentConfigurationsResult addObject:tempDeviceEnrollmentConfiguration];
        }
    }

    _deviceEnrollmentConfigurations = deviceEnrollmentConfigurationsResult;
        
    }
    return _deviceEnrollmentConfigurations;
}

- (void) setDeviceEnrollmentConfigurations: (NSArray*) val
{
    _deviceEnrollmentConfigurations = val;
    self.dictionary[@"deviceEnrollmentConfigurations"] = val;
}

- (MSGraphOnPremisesConditionalAccessSettings*) conditionalAccessSettings
{
    if(!_conditionalAccessSettings){
        _conditionalAccessSettings = [[MSGraphOnPremisesConditionalAccessSettings alloc] initWithDictionary: self.dictionary[@"conditionalAccessSettings"]];
    }
    return _conditionalAccessSettings;
}

- (void) setConditionalAccessSettings: (MSGraphOnPremisesConditionalAccessSettings*) val
{
    _conditionalAccessSettings = val;
    self.dictionary[@"conditionalAccessSettings"] = val;
}

- (NSArray*) mobileThreatDefenseConnectors
{
    if(!_mobileThreatDefenseConnectors){
        
    NSMutableArray *mobileThreatDefenseConnectorsResult = [NSMutableArray array];
    NSArray *mobileThreatDefenseConnectors = self.dictionary[@"mobileThreatDefenseConnectors"];

    if ([mobileThreatDefenseConnectors isKindOfClass:[NSArray class]]){
        for (id tempMobileThreatDefenseConnector in mobileThreatDefenseConnectors){
            [mobileThreatDefenseConnectorsResult addObject:tempMobileThreatDefenseConnector];
        }
    }

    _mobileThreatDefenseConnectors = mobileThreatDefenseConnectorsResult;
        
    }
    return _mobileThreatDefenseConnectors;
}

- (void) setMobileThreatDefenseConnectors: (NSArray*) val
{
    _mobileThreatDefenseConnectors = val;
    self.dictionary[@"mobileThreatDefenseConnectors"] = val;
}

- (NSArray*) deviceManagementPartners
{
    if(!_deviceManagementPartners){
        
    NSMutableArray *deviceManagementPartnersResult = [NSMutableArray array];
    NSArray *deviceManagementPartners = self.dictionary[@"deviceManagementPartners"];

    if ([deviceManagementPartners isKindOfClass:[NSArray class]]){
        for (id tempDeviceManagementPartner in deviceManagementPartners){
            [deviceManagementPartnersResult addObject:tempDeviceManagementPartner];
        }
    }

    _deviceManagementPartners = deviceManagementPartnersResult;
        
    }
    return _deviceManagementPartners;
}

- (void) setDeviceManagementPartners: (NSArray*) val
{
    _deviceManagementPartners = val;
    self.dictionary[@"deviceManagementPartners"] = val;
}

- (MSGraphApplePushNotificationCertificate*) applePushNotificationCertificate
{
    if(!_applePushNotificationCertificate){
        _applePushNotificationCertificate = [[MSGraphApplePushNotificationCertificate alloc] initWithDictionary: self.dictionary[@"applePushNotificationCertificate"]];
    }
    return _applePushNotificationCertificate;
}

- (void) setApplePushNotificationCertificate: (MSGraphApplePushNotificationCertificate*) val
{
    _applePushNotificationCertificate = val;
    self.dictionary[@"applePushNotificationCertificate"] = val;
}

- (MSGraphManagedDeviceOverview*) managedDeviceOverview
{
    if(!_managedDeviceOverview){
        _managedDeviceOverview = [[MSGraphManagedDeviceOverview alloc] initWithDictionary: self.dictionary[@"managedDeviceOverview"]];
    }
    return _managedDeviceOverview;
}

- (void) setManagedDeviceOverview: (MSGraphManagedDeviceOverview*) val
{
    _managedDeviceOverview = val;
    self.dictionary[@"managedDeviceOverview"] = val;
}

- (NSArray*) detectedApps
{
    if(!_detectedApps){
        
    NSMutableArray *detectedAppsResult = [NSMutableArray array];
    NSArray *detectedApps = self.dictionary[@"detectedApps"];

    if ([detectedApps isKindOfClass:[NSArray class]]){
        for (id tempDetectedApp in detectedApps){
            [detectedAppsResult addObject:tempDetectedApp];
        }
    }

    _detectedApps = detectedAppsResult;
        
    }
    return _detectedApps;
}

- (void) setDetectedApps: (NSArray*) val
{
    _detectedApps = val;
    self.dictionary[@"detectedApps"] = val;
}

- (NSArray*) managedDevices
{
    if(!_managedDevices){
        
    NSMutableArray *managedDevicesResult = [NSMutableArray array];
    NSArray *managedDevices = self.dictionary[@"managedDevices"];

    if ([managedDevices isKindOfClass:[NSArray class]]){
        for (id tempManagedDevice in managedDevices){
            [managedDevicesResult addObject:tempManagedDevice];
        }
    }

    _managedDevices = managedDevicesResult;
        
    }
    return _managedDevices;
}

- (void) setManagedDevices: (NSArray*) val
{
    _managedDevices = val;
    self.dictionary[@"managedDevices"] = val;
}

- (NSArray*) notificationMessageTemplates
{
    if(!_notificationMessageTemplates){
        
    NSMutableArray *notificationMessageTemplatesResult = [NSMutableArray array];
    NSArray *notificationMessageTemplates = self.dictionary[@"notificationMessageTemplates"];

    if ([notificationMessageTemplates isKindOfClass:[NSArray class]]){
        for (id tempNotificationMessageTemplate in notificationMessageTemplates){
            [notificationMessageTemplatesResult addObject:tempNotificationMessageTemplate];
        }
    }

    _notificationMessageTemplates = notificationMessageTemplatesResult;
        
    }
    return _notificationMessageTemplates;
}

- (void) setNotificationMessageTemplates: (NSArray*) val
{
    _notificationMessageTemplates = val;
    self.dictionary[@"notificationMessageTemplates"] = val;
}

- (NSArray*) roleDefinitions
{
    if(!_roleDefinitions){
        
    NSMutableArray *roleDefinitionsResult = [NSMutableArray array];
    NSArray *roleDefinitions = self.dictionary[@"roleDefinitions"];

    if ([roleDefinitions isKindOfClass:[NSArray class]]){
        for (id tempRoleDefinition in roleDefinitions){
            [roleDefinitionsResult addObject:tempRoleDefinition];
        }
    }

    _roleDefinitions = roleDefinitionsResult;
        
    }
    return _roleDefinitions;
}

- (void) setRoleDefinitions: (NSArray*) val
{
    _roleDefinitions = val;
    self.dictionary[@"roleDefinitions"] = val;
}

- (NSArray*) roleAssignments
{
    if(!_roleAssignments){
        
    NSMutableArray *roleAssignmentsResult = [NSMutableArray array];
    NSArray *roleAssignments = self.dictionary[@"roleAssignments"];

    if ([roleAssignments isKindOfClass:[NSArray class]]){
        for (id tempDeviceAndAppManagementRoleAssignment in roleAssignments){
            [roleAssignmentsResult addObject:tempDeviceAndAppManagementRoleAssignment];
        }
    }

    _roleAssignments = roleAssignmentsResult;
        
    }
    return _roleAssignments;
}

- (void) setRoleAssignments: (NSArray*) val
{
    _roleAssignments = val;
    self.dictionary[@"roleAssignments"] = val;
}

- (NSArray*) resourceOperations
{
    if(!_resourceOperations){
        
    NSMutableArray *resourceOperationsResult = [NSMutableArray array];
    NSArray *resourceOperations = self.dictionary[@"resourceOperations"];

    if ([resourceOperations isKindOfClass:[NSArray class]]){
        for (id tempResourceOperation in resourceOperations){
            [resourceOperationsResult addObject:tempResourceOperation];
        }
    }

    _resourceOperations = resourceOperationsResult;
        
    }
    return _resourceOperations;
}

- (void) setResourceOperations: (NSArray*) val
{
    _resourceOperations = val;
    self.dictionary[@"resourceOperations"] = val;
}

- (NSArray*) remoteAssistancePartners
{
    if(!_remoteAssistancePartners){
        
    NSMutableArray *remoteAssistancePartnersResult = [NSMutableArray array];
    NSArray *remoteAssistancePartners = self.dictionary[@"remoteAssistancePartners"];

    if ([remoteAssistancePartners isKindOfClass:[NSArray class]]){
        for (id tempRemoteAssistancePartner in remoteAssistancePartners){
            [remoteAssistancePartnersResult addObject:tempRemoteAssistancePartner];
        }
    }

    _remoteAssistancePartners = remoteAssistancePartnersResult;
        
    }
    return _remoteAssistancePartners;
}

- (void) setRemoteAssistancePartners: (NSArray*) val
{
    _remoteAssistancePartners = val;
    self.dictionary[@"remoteAssistancePartners"] = val;
}

- (NSArray*) telecomExpenseManagementPartners
{
    if(!_telecomExpenseManagementPartners){
        
    NSMutableArray *telecomExpenseManagementPartnersResult = [NSMutableArray array];
    NSArray *telecomExpenseManagementPartners = self.dictionary[@"telecomExpenseManagementPartners"];

    if ([telecomExpenseManagementPartners isKindOfClass:[NSArray class]]){
        for (id tempTelecomExpenseManagementPartner in telecomExpenseManagementPartners){
            [telecomExpenseManagementPartnersResult addObject:tempTelecomExpenseManagementPartner];
        }
    }

    _telecomExpenseManagementPartners = telecomExpenseManagementPartnersResult;
        
    }
    return _telecomExpenseManagementPartners;
}

- (void) setTelecomExpenseManagementPartners: (NSArray*) val
{
    _telecomExpenseManagementPartners = val;
    self.dictionary[@"telecomExpenseManagementPartners"] = val;
}

- (NSArray*) troubleshootingEvents
{
    if(!_troubleshootingEvents){
        
    NSMutableArray *troubleshootingEventsResult = [NSMutableArray array];
    NSArray *troubleshootingEvents = self.dictionary[@"troubleshootingEvents"];

    if ([troubleshootingEvents isKindOfClass:[NSArray class]]){
        for (id tempDeviceManagementTroubleshootingEvent in troubleshootingEvents){
            [troubleshootingEventsResult addObject:tempDeviceManagementTroubleshootingEvent];
        }
    }

    _troubleshootingEvents = troubleshootingEventsResult;
        
    }
    return _troubleshootingEvents;
}

- (void) setTroubleshootingEvents: (NSArray*) val
{
    _troubleshootingEvents = val;
    self.dictionary[@"troubleshootingEvents"] = val;
}

- (NSArray*) windowsInformationProtectionAppLearningSummaries
{
    if(!_windowsInformationProtectionAppLearningSummaries){
        
    NSMutableArray *windowsInformationProtectionAppLearningSummariesResult = [NSMutableArray array];
    NSArray *windowsInformationProtectionAppLearningSummaries = self.dictionary[@"windowsInformationProtectionAppLearningSummaries"];

    if ([windowsInformationProtectionAppLearningSummaries isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionAppLearningSummary in windowsInformationProtectionAppLearningSummaries){
            [windowsInformationProtectionAppLearningSummariesResult addObject:tempWindowsInformationProtectionAppLearningSummary];
        }
    }

    _windowsInformationProtectionAppLearningSummaries = windowsInformationProtectionAppLearningSummariesResult;
        
    }
    return _windowsInformationProtectionAppLearningSummaries;
}

- (void) setWindowsInformationProtectionAppLearningSummaries: (NSArray*) val
{
    _windowsInformationProtectionAppLearningSummaries = val;
    self.dictionary[@"windowsInformationProtectionAppLearningSummaries"] = val;
}

- (NSArray*) windowsInformationProtectionNetworkLearningSummaries
{
    if(!_windowsInformationProtectionNetworkLearningSummaries){
        
    NSMutableArray *windowsInformationProtectionNetworkLearningSummariesResult = [NSMutableArray array];
    NSArray *windowsInformationProtectionNetworkLearningSummaries = self.dictionary[@"windowsInformationProtectionNetworkLearningSummaries"];

    if ([windowsInformationProtectionNetworkLearningSummaries isKindOfClass:[NSArray class]]){
        for (id tempWindowsInformationProtectionNetworkLearningSummary in windowsInformationProtectionNetworkLearningSummaries){
            [windowsInformationProtectionNetworkLearningSummariesResult addObject:tempWindowsInformationProtectionNetworkLearningSummary];
        }
    }

    _windowsInformationProtectionNetworkLearningSummaries = windowsInformationProtectionNetworkLearningSummariesResult;
        
    }
    return _windowsInformationProtectionNetworkLearningSummaries;
}

- (void) setWindowsInformationProtectionNetworkLearningSummaries: (NSArray*) val
{
    _windowsInformationProtectionNetworkLearningSummaries = val;
    self.dictionary[@"windowsInformationProtectionNetworkLearningSummaries"] = val;
}


@end
