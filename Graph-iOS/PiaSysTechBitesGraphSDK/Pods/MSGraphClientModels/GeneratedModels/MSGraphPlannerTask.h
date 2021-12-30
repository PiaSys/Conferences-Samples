// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphPlannerAppliedCategories, MSGraphPlannerAssignments, MSGraphPlannerTaskDetails, MSGraphPlannerAssignedToTaskBoardTaskFormat, MSGraphPlannerProgressTaskBoardTaskFormat, MSGraphPlannerBucketTaskBoardTaskFormat; 
#import "MSGraphPlannerPreviewType.h"


#import "MSGraphEntity.h"

@interface MSGraphPlannerTask : MSGraphEntity

  @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setPlanId:, getter=planId) NSString* planId;
    @property (nullable, nonatomic, setter=setBucketId:, getter=bucketId) NSString* bucketId;
    @property (nonnull, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nullable, nonatomic, setter=setOrderHint:, getter=orderHint) NSString* orderHint;
    @property (nullable, nonatomic, setter=setAssigneePriority:, getter=assigneePriority) NSString* assigneePriority;
    @property (nonatomic, setter=setPercentComplete:, getter=percentComplete) int32_t percentComplete;
    @property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) NSDate* startDateTime;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDueDateTime:, getter=dueDateTime) NSDate* dueDateTime;
    @property (nonatomic, setter=setHasDescription:, getter=hasDescription) BOOL hasDescription;
    @property (nullable, nonatomic, setter=setPreviewType:, getter=previewType) MSGraphPlannerPreviewType* previewType;
    @property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) NSDate* completedDateTime;
    @property (nullable, nonatomic, setter=setCompletedBy:, getter=completedBy) MSGraphIdentitySet* completedBy;
    @property (nonatomic, setter=setReferenceCount:, getter=referenceCount) int32_t referenceCount;
    @property (nonatomic, setter=setChecklistItemCount:, getter=checklistItemCount) int32_t checklistItemCount;
    @property (nonatomic, setter=setActiveChecklistItemCount:, getter=activeChecklistItemCount) int32_t activeChecklistItemCount;
    @property (nullable, nonatomic, setter=setAppliedCategories:, getter=appliedCategories) MSGraphPlannerAppliedCategories* appliedCategories;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) MSGraphPlannerAssignments* assignments;
    @property (nullable, nonatomic, setter=setConversationThreadId:, getter=conversationThreadId) NSString* conversationThreadId;
    @property (nullable, nonatomic, setter=setDetails:, getter=details) MSGraphPlannerTaskDetails* details;
    @property (nullable, nonatomic, setter=setAssignedToTaskBoardFormat:, getter=assignedToTaskBoardFormat) MSGraphPlannerAssignedToTaskBoardTaskFormat* assignedToTaskBoardFormat;
    @property (nullable, nonatomic, setter=setProgressTaskBoardFormat:, getter=progressTaskBoardFormat) MSGraphPlannerProgressTaskBoardTaskFormat* progressTaskBoardFormat;
    @property (nullable, nonatomic, setter=setBucketTaskBoardFormat:, getter=bucketTaskBoardFormat) MSGraphPlannerBucketTaskBoardTaskFormat* bucketTaskBoardFormat;
  
@end
