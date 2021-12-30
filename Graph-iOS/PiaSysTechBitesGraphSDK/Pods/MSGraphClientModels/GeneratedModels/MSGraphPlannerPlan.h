// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphPlannerTask, MSGraphPlannerBucket, MSGraphPlannerPlanDetails; 


#import "MSGraphEntity.h"

@interface MSGraphPlannerPlan : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setOwner:, getter=owner) NSString* owner;
    @property (nonnull, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
    @property (nullable, nonatomic, setter=setBuckets:, getter=buckets) NSArray* buckets;
    @property (nullable, nonatomic, setter=setDetails:, getter=details) MSGraphPlannerPlanDetails* details;
  
@end
