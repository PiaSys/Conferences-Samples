// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSignInStatus, MSGraphDeviceDetail, MSGraphSignInLocation, MSGraphAppliedConditionalAccessPolicy; 
#import "MSGraphConditionalAccessStatus.h"
#import "MSGraphRiskDetail.h"
#import "MSGraphRiskLevel.h"
#import "MSGraphRiskState.h"
#import "MSGraphRiskEventType.h"


#import "MSGraphEntity.h"

@interface MSGraphSignIn : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setUserDisplayName:, getter=userDisplayName) NSString* userDisplayName;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nonnull, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
    @property (nullable, nonatomic, setter=setAppDisplayName:, getter=appDisplayName) NSString* appDisplayName;
    @property (nullable, nonatomic, setter=setIpAddress:, getter=ipAddress) NSString* ipAddress;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphSignInStatus* status;
    @property (nullable, nonatomic, setter=setClientAppUsed:, getter=clientAppUsed) NSString* clientAppUsed;
    @property (nullable, nonatomic, setter=setDeviceDetail:, getter=deviceDetail) MSGraphDeviceDetail* deviceDetail;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphSignInLocation* location;
    @property (nullable, nonatomic, setter=setCorrelationId:, getter=correlationId) NSString* correlationId;
    @property (nullable, nonatomic, setter=setConditionalAccessStatus:, getter=conditionalAccessStatus) MSGraphConditionalAccessStatus* conditionalAccessStatus;
    @property (nullable, nonatomic, setter=setAppliedConditionalAccessPolicies:, getter=appliedConditionalAccessPolicies) NSArray* appliedConditionalAccessPolicies;
    @property (nonatomic, setter=setIsInteractive:, getter=isInteractive) BOOL isInteractive;
    @property (nullable, nonatomic, setter=setRiskDetail:, getter=riskDetail) MSGraphRiskDetail* riskDetail;
    @property (nullable, nonatomic, setter=setRiskLevelAggregated:, getter=riskLevelAggregated) MSGraphRiskLevel* riskLevelAggregated;
    @property (nullable, nonatomic, setter=setRiskLevelDuringSignIn:, getter=riskLevelDuringSignIn) MSGraphRiskLevel* riskLevelDuringSignIn;
    @property (nullable, nonatomic, setter=setRiskState:, getter=riskState) MSGraphRiskState* riskState;
    @property (nullable, nonatomic, setter=setRiskEventTypes:, getter=riskEventTypes) NSArray* riskEventTypes;
    @property (nullable, nonatomic, setter=setResourceDisplayName:, getter=resourceDisplayName) NSString* resourceDisplayName;
    @property (nullable, nonatomic, setter=setResourceId:, getter=resourceId) NSString* resourceId;
  
@end
