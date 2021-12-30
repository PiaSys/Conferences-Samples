// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAuditActivityInitiator, MSGraphTargetResource, MSGraphKeyValue; 
#import "MSGraphOperationResult.h"


#import "MSGraphEntity.h"

@interface MSGraphDirectoryAudit : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCategory:, getter=category) NSString* category;
    @property (nullable, nonatomic, setter=setCorrelationId:, getter=correlationId) NSString* correlationId;
    @property (nullable, nonatomic, setter=setResult:, getter=result) MSGraphOperationResult* result;
    @property (nullable, nonatomic, setter=setResultReason:, getter=resultReason) NSString* resultReason;
    @property (nonnull, nonatomic, setter=setActivityDisplayName:, getter=activityDisplayName) NSString* activityDisplayName;
    @property (nonnull, nonatomic, setter=setActivityDateTime:, getter=activityDateTime) NSDate* activityDateTime;
    @property (nullable, nonatomic, setter=setLoggedByService:, getter=loggedByService) NSString* loggedByService;
    @property (nullable, nonatomic, setter=setOperationType:, getter=operationType) NSString* operationType;
    @property (nonnull, nonatomic, setter=setInitiatedBy:, getter=initiatedBy) MSGraphAuditActivityInitiator* initiatedBy;
    @property (nullable, nonatomic, setter=setTargetResources:, getter=targetResources) NSArray* targetResources;
    @property (nullable, nonatomic, setter=setAdditionalDetails:, getter=additionalDetails) NSArray* additionalDetails;
  
@end
