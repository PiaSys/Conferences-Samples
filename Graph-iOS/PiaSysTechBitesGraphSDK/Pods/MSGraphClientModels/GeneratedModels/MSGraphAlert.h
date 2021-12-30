// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphCloudAppSecurityState, MSGraphFileSecurityState, MSGraphAlertHistoryState, MSGraphHostSecurityState, MSGraphMalwareState, MSGraphNetworkConnection, MSGraphProcess, MSGraphRegistryKeyState, MSGraphAlertTrigger, MSGraphUserSecurityState, MSGraphSecurityVendorInformation, MSGraphVulnerabilityState; 
#import "MSGraphAlertFeedback.h"
#import "MSGraphAlertSeverity.h"
#import "MSGraphAlertStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphAlert : MSGraphEntity

  @property (nullable, nonatomic, setter=setActivityGroupName:, getter=activityGroupName) NSString* activityGroupName;
    @property (nullable, nonatomic, setter=setAssignedTo:, getter=assignedTo) NSString* assignedTo;
    @property (nullable, nonatomic, setter=setAzureSubscriptionId:, getter=azureSubscriptionId) NSString* azureSubscriptionId;
    @property (nonnull, nonatomic, setter=setAzureTenantId:, getter=azureTenantId) NSString* azureTenantId;
    @property (nullable, nonatomic, setter=setCategory:, getter=category) NSString* category;
    @property (nullable, nonatomic, setter=setClosedDateTime:, getter=closedDateTime) NSDate* closedDateTime;
    @property (nullable, nonatomic, setter=setCloudAppStates:, getter=cloudAppStates) NSArray* cloudAppStates;
    @property (nullable, nonatomic, setter=setComments:, getter=comments) NSArray* comments;
    @property (nonatomic, setter=setConfidence:, getter=confidence) int32_t confidence;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setAlertDescription:, getter=alertDescription) NSString* alertDescription;
    @property (nullable, nonatomic, setter=setDetectionIds:, getter=detectionIds) NSArray* detectionIds;
    @property (nullable, nonatomic, setter=setEventDateTime:, getter=eventDateTime) NSDate* eventDateTime;
    @property (nullable, nonatomic, setter=setFeedback:, getter=feedback) MSGraphAlertFeedback* feedback;
    @property (nullable, nonatomic, setter=setFileStates:, getter=fileStates) NSArray* fileStates;
    @property (nullable, nonatomic, setter=setHistoryStates:, getter=historyStates) NSArray* historyStates;
    @property (nullable, nonatomic, setter=setHostStates:, getter=hostStates) NSArray* hostStates;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setMalwareStates:, getter=malwareStates) NSArray* malwareStates;
    @property (nullable, nonatomic, setter=setNetworkConnections:, getter=networkConnections) NSArray* networkConnections;
    @property (nullable, nonatomic, setter=setProcesses:, getter=processes) NSArray* processes;
    @property (nullable, nonatomic, setter=setRecommendedActions:, getter=recommendedActions) NSArray* recommendedActions;
    @property (nullable, nonatomic, setter=setRegistryKeyStates:, getter=registryKeyStates) NSArray* registryKeyStates;
    @property (nonnull, nonatomic, setter=setSeverity:, getter=severity) MSGraphAlertSeverity* severity;
    @property (nullable, nonatomic, setter=setSourceMaterials:, getter=sourceMaterials) NSArray* sourceMaterials;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphAlertStatus* status;
    @property (nullable, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setTriggers:, getter=triggers) NSArray* triggers;
    @property (nullable, nonatomic, setter=setUserStates:, getter=userStates) NSArray* userStates;
    @property (nullable, nonatomic, setter=setVendorInformation:, getter=vendorInformation) MSGraphSecurityVendorInformation* vendorInformation;
    @property (nullable, nonatomic, setter=setVulnerabilityStates:, getter=vulnerabilityStates) NSArray* vulnerabilityStates;
  
@end
