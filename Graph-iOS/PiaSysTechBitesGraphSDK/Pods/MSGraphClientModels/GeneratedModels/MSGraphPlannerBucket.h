// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerTask; 


#import "MSGraphEntity.h"

@interface MSGraphPlannerBucket : MSGraphEntity

  @property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setPlanId:, getter=planId) NSString* planId;
    @property (nullable, nonatomic, setter=setOrderHint:, getter=orderHint) NSString* orderHint;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
  
@end
