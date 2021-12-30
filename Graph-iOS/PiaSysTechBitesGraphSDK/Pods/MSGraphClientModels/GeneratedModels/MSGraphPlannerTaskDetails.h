// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPlannerExternalReferences, MSGraphPlannerChecklistItems; 
#import "MSGraphPlannerPreviewType.h"


#import "MSGraphEntity.h"

@interface MSGraphPlannerTaskDetails : MSGraphEntity

  @property (nullable, nonatomic, setter=setPlannerTaskDetailsDescription:, getter=plannerTaskDetailsDescription) NSString* plannerTaskDetailsDescription;
    @property (nullable, nonatomic, setter=setPreviewType:, getter=previewType) MSGraphPlannerPreviewType* previewType;
    @property (nullable, nonatomic, setter=setReferences:, getter=references) MSGraphPlannerExternalReferences* references;
    @property (nullable, nonatomic, setter=setChecklist:, getter=checklist) MSGraphPlannerChecklistItems* checklist;
  
@end
