// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerOrderHintsByAssignee; 


#import "MSGraphEntity.h"

@interface MSGraphPlannerAssignedToTaskBoardTaskFormat : MSGraphEntity

  @property (nullable, nonatomic, setter=setUnassignedOrderHint:, getter=unassignedOrderHint) NSString* unassignedOrderHint;
    @property (nullable, nonatomic, setter=setOrderHintsByAssignee:, getter=orderHintsByAssignee) MSGraphPlannerOrderHintsByAssignee* orderHintsByAssignee;
  
@end
