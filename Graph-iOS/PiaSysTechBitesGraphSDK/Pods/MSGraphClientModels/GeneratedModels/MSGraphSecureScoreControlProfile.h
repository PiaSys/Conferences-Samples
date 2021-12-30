// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphComplianceInformation, MSGraphSecureScoreControlStateUpdate, MSGraphSecurityVendorInformation; 


#import "MSGraphEntity.h"

@interface MSGraphSecureScoreControlProfile : MSGraphEntity

  @property (nullable, nonatomic, setter=setActionType:, getter=actionType) NSString* actionType;
    @property (nullable, nonatomic, setter=setActionUrl:, getter=actionUrl) NSString* actionUrl;
    @property (nonnull, nonatomic, setter=setAzureTenantId:, getter=azureTenantId) NSString* azureTenantId;
    @property (nullable, nonatomic, setter=setComplianceInformation:, getter=complianceInformation) NSArray* complianceInformation;
    @property (nullable, nonatomic, setter=setControlCategory:, getter=controlCategory) NSString* controlCategory;
    @property (nullable, nonatomic, setter=setControlStateUpdates:, getter=controlStateUpdates) NSArray* controlStateUpdates;
    @property (nonatomic, setter=setDeprecated:, getter=deprecated) BOOL deprecated;
    @property (nullable, nonatomic, setter=setImplementationCost:, getter=implementationCost) NSString* implementationCost;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonatomic, setter=setMaxScore:, getter=maxScore) double maxScore;
    @property (nonatomic, setter=setRank:, getter=rank) int32_t rank;
    @property (nullable, nonatomic, setter=setRemediation:, getter=remediation) NSString* remediation;
    @property (nullable, nonatomic, setter=setRemediationImpact:, getter=remediationImpact) NSString* remediationImpact;
    @property (nullable, nonatomic, setter=setService:, getter=service) NSString* service;
    @property (nullable, nonatomic, setter=setThreats:, getter=threats) NSArray* threats;
    @property (nullable, nonatomic, setter=setTier:, getter=tier) NSString* tier;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setUserImpact:, getter=userImpact) NSString* userImpact;
    @property (nullable, nonatomic, setter=setVendorInformation:, getter=vendorInformation) MSGraphSecurityVendorInformation* vendorInformation;
  
@end
