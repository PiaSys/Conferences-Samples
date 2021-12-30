// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerTask, MSGraphPlannerPlan, MSGraphPlannerBucket; 


#import "MSGraphEntity.h"

@interface MSGraphPlanner : MSGraphEntity

  @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
    @property (nullable, nonatomic, setter=setPlans:, getter=plans) NSArray* plans;
    @property (nullable, nonatomic, setter=setBuckets:, getter=buckets) NSArray* buckets;
  
@end
