// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerUserIds, MSGraphPlannerCategoryDescriptions; 


#import "MSGraphEntity.h"

@interface MSGraphPlannerPlanDetails : MSGraphEntity

  @property (nullable, nonatomic, setter=setSharedWith:, getter=sharedWith) MSGraphPlannerUserIds* sharedWith;
    @property (nullable, nonatomic, setter=setCategoryDescriptions:, getter=categoryDescriptions) MSGraphPlannerCategoryDescriptions* categoryDescriptions;
  
@end
