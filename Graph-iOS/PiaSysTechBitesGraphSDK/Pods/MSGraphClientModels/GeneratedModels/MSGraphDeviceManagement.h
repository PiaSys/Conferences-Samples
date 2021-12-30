// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceManagementSettings, MSGraphIntuneBrand, MSGraphTermsAndConditions, MSGraphDeviceConfiguration, MSGraphDeviceCompliancePolicy, MSGraphSoftwareUpdateStatusSummary, MSGraphDeviceCompliancePolicyDeviceStateSummary, MSGraphDeviceCompliancePolicySettingStateSummary, MSGraphDeviceConfigurationDeviceStateSummary, MSGraphIosUpdateDeviceStatus, MSGraphDeviceCategory, MSGraphDeviceManagementExchangeConnector, MSGraphDeviceEnrollmentConfiguration, MSGraphOnPremisesConditionalAccessSettings, MSGraphMobileThreatDefenseConnector, MSGraphDeviceManagementPartner, MSGraphApplePushNotificationCertificate, MSGraphManagedDeviceOverview, MSGraphDetectedApp, MSGraphManagedDevice, MSGraphNotificationMessageTemplate, MSGraphRoleDefinition, MSGraphDeviceAndAppManagementRoleAssignment, MSGraphResourceOperation, MSGraphRemoteAssistancePartner, MSGraphTelecomExpenseManagementPartner, MSGraphDeviceManagementTroubleshootingEvent, MSGraphWindowsInformationProtectionAppLearningSummary, MSGraphWindowsInformationProtectionNetworkLearningSummary; 
#import "MSGraphDeviceManagementSubscriptionState.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagement : MSGraphEntity

  @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphDeviceManagementSettings* settings;
    @property (nullable, nonatomic, setter=setIntuneBrand:, getter=intuneBrand) MSGraphIntuneBrand* intuneBrand;
    @property (nonnull, nonatomic, setter=setSubscriptionState:, getter=subscriptionState) MSGraphDeviceManagementSubscriptionState* subscriptionState;
    @property (nullable, nonatomic, setter=setTermsAndConditions:, getter=termsAndConditions) NSArray* termsAndConditions;
    @property (nullable, nonatomic, setter=setDeviceConfigurations:, getter=deviceConfigurations) NSArray* deviceConfigurations;
    @property (nullable, nonatomic, setter=setDeviceCompliancePolicies:, getter=deviceCompliancePolicies) NSArray* deviceCompliancePolicies;
    @property (nullable, nonatomic, setter=setSoftwareUpdateStatusSummary:, getter=softwareUpdateStatusSummary) MSGraphSoftwareUpdateStatusSummary* softwareUpdateStatusSummary;
    @property (nullable, nonatomic, setter=setDeviceCompliancePolicyDeviceStateSummary:, getter=deviceCompliancePolicyDeviceStateSummary) MSGraphDeviceCompliancePolicyDeviceStateSummary* deviceCompliancePolicyDeviceStateSummary;
    @property (nullable, nonatomic, setter=setDeviceCompliancePolicySettingStateSummaries:, getter=deviceCompliancePolicySettingStateSummaries) NSArray* deviceCompliancePolicySettingStateSummaries;
    @property (nullable, nonatomic, setter=setDeviceConfigurationDeviceStateSummaries:, getter=deviceConfigurationDeviceStateSummaries) MSGraphDeviceConfigurationDeviceStateSummary* deviceConfigurationDeviceStateSummaries;
    @property (nullable, nonatomic, setter=setIosUpdateStatuses:, getter=iosUpdateStatuses) NSArray* iosUpdateStatuses;
    @property (nullable, nonatomic, setter=setDeviceCategories:, getter=deviceCategories) NSArray* deviceCategories;
    @property (nullable, nonatomic, setter=setExchangeConnectors:, getter=exchangeConnectors) NSArray* exchangeConnectors;
    @property (nullable, nonatomic, setter=setDeviceEnrollmentConfigurations:, getter=deviceEnrollmentConfigurations) NSArray* deviceEnrollmentConfigurations;
    @property (nullable, nonatomic, setter=setConditionalAccessSettings:, getter=conditionalAccessSettings) MSGraphOnPremisesConditionalAccessSettings* conditionalAccessSettings;
    @property (nullable, nonatomic, setter=setMobileThreatDefenseConnectors:, getter=mobileThreatDefenseConnectors) NSArray* mobileThreatDefenseConnectors;
    @property (nullable, nonatomic, setter=setDeviceManagementPartners:, getter=deviceManagementPartners) NSArray* deviceManagementPartners;
    @property (nullable, nonatomic, setter=setApplePushNotificationCertificate:, getter=applePushNotificationCertificate) MSGraphApplePushNotificationCertificate* applePushNotificationCertificate;
    @property (nullable, nonatomic, setter=setManagedDeviceOverview:, getter=managedDeviceOverview) MSGraphManagedDeviceOverview* managedDeviceOverview;
    @property (nullable, nonatomic, setter=setDetectedApps:, getter=detectedApps) NSArray* detectedApps;
    @property (nullable, nonatomic, setter=setManagedDevices:, getter=managedDevices) NSArray* managedDevices;
    @property (nullable, nonatomic, setter=setNotificationMessageTemplates:, getter=notificationMessageTemplates) NSArray* notificationMessageTemplates;
    @property (nullable, nonatomic, setter=setRoleDefinitions:, getter=roleDefinitions) NSArray* roleDefinitions;
    @property (nullable, nonatomic, setter=setRoleAssignments:, getter=roleAssignments) NSArray* roleAssignments;
    @property (nullable, nonatomic, setter=setResourceOperations:, getter=resourceOperations) NSArray* resourceOperations;
    @property (nullable, nonatomic, setter=setRemoteAssistancePartners:, getter=remoteAssistancePartners) NSArray* remoteAssistancePartners;
    @property (nullable, nonatomic, setter=setTelecomExpenseManagementPartners:, getter=telecomExpenseManagementPartners) NSArray* telecomExpenseManagementPartners;
    @property (nullable, nonatomic, setter=setTroubleshootingEvents:, getter=troubleshootingEvents) NSArray* troubleshootingEvents;
    @property (nullable, nonatomic, setter=setWindowsInformationProtectionAppLearningSummaries:, getter=windowsInformationProtectionAppLearningSummaries) NSArray* windowsInformationProtectionAppLearningSummaries;
    @property (nullable, nonatomic, setter=setWindowsInformationProtectionNetworkLearningSummaries:, getter=windowsInformationProtectionNetworkLearningSummaries) NSArray* windowsInformationProtectionNetworkLearningSummaries;
  
@end
