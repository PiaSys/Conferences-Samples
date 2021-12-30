// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerTask()
{
    MSGraphIdentitySet* _createdBy;
    NSString* _planId;
    NSString* _bucketId;
    NSString* _title;
    NSString* _orderHint;
    NSString* _assigneePriority;
    int32_t _percentComplete;
    NSDate* _startDateTime;
    NSDate* _createdDateTime;
    NSDate* _dueDateTime;
    BOOL _hasDescription;
    MSGraphPlannerPreviewType* _previewType;
    NSDate* _completedDateTime;
    MSGraphIdentitySet* _completedBy;
    int32_t _referenceCount;
    int32_t _checklistItemCount;
    int32_t _activeChecklistItemCount;
    MSGraphPlannerAppliedCategories* _appliedCategories;
    MSGraphPlannerAssignments* _assignments;
    NSString* _conversationThreadId;
    MSGraphPlannerTaskDetails* _details;
    MSGraphPlannerAssignedToTaskBoardTaskFormat* _assignedToTaskBoardFormat;
    MSGraphPlannerProgressTaskBoardTaskFormat* _progressTaskBoardFormat;
    MSGraphPlannerBucketTaskBoardTaskFormat* _bucketTaskBoardFormat;
}
@end

@implementation MSGraphPlannerTask

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerTask";
    }
    return self;
}
- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSString*) planId
{
    if([[NSNull null] isEqual:self.dictionary[@"planId"]])
    {
        return nil;
    }   
    return self.dictionary[@"planId"];
}

- (void) setPlanId: (NSString*) val
{
    self.dictionary[@"planId"] = val;
}

- (NSString*) bucketId
{
    if([[NSNull null] isEqual:self.dictionary[@"bucketId"]])
    {
        return nil;
    }   
    return self.dictionary[@"bucketId"];
}

- (void) setBucketId: (NSString*) val
{
    self.dictionary[@"bucketId"] = val;
}

- (NSString*) title
{
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSString*) orderHint
{
    if([[NSNull null] isEqual:self.dictionary[@"orderHint"]])
    {
        return nil;
    }   
    return self.dictionary[@"orderHint"];
}

- (void) setOrderHint: (NSString*) val
{
    self.dictionary[@"orderHint"] = val;
}

- (NSString*) assigneePriority
{
    if([[NSNull null] isEqual:self.dictionary[@"assigneePriority"]])
    {
        return nil;
    }   
    return self.dictionary[@"assigneePriority"];
}

- (void) setAssigneePriority: (NSString*) val
{
    self.dictionary[@"assigneePriority"] = val;
}

- (int32_t) percentComplete
{
    _percentComplete = [self.dictionary[@"percentComplete"] intValue];
    return _percentComplete;
}

- (void) setPercentComplete: (int32_t) val
{
    _percentComplete = val;
    self.dictionary[@"percentComplete"] = @(val);
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) dueDateTime
{
    if(!_dueDateTime){
        _dueDateTime = [NSDate ms_dateFromString: self.dictionary[@"dueDateTime"]];
    }
    return _dueDateTime;
}

- (void) setDueDateTime: (NSDate*) val
{
    _dueDateTime = val;
    self.dictionary[@"dueDateTime"] = [val ms_toString];
}

- (BOOL) hasDescription
{
    _hasDescription = [self.dictionary[@"hasDescription"] boolValue];
    return _hasDescription;
}

- (void) setHasDescription: (BOOL) val
{
    _hasDescription = val;
    self.dictionary[@"hasDescription"] = @(val);
}

- (MSGraphPlannerPreviewType*) previewType
{
    if(!_previewType){
        _previewType = [self.dictionary[@"previewType"] toMSGraphPlannerPreviewType];
    }
    return _previewType;
}

- (void) setPreviewType: (MSGraphPlannerPreviewType*) val
{
    _previewType = val;
    self.dictionary[@"previewType"] = val;
}

- (NSDate*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [NSDate ms_dateFromString: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (NSDate*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) completedBy
{
    if(!_completedBy){
        _completedBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"completedBy"]];
    }
    return _completedBy;
}

- (void) setCompletedBy: (MSGraphIdentitySet*) val
{
    _completedBy = val;
    self.dictionary[@"completedBy"] = val;
}

- (int32_t) referenceCount
{
    _referenceCount = [self.dictionary[@"referenceCount"] intValue];
    return _referenceCount;
}

- (void) setReferenceCount: (int32_t) val
{
    _referenceCount = val;
    self.dictionary[@"referenceCount"] = @(val);
}

- (int32_t) checklistItemCount
{
    _checklistItemCount = [self.dictionary[@"checklistItemCount"] intValue];
    return _checklistItemCount;
}

- (void) setChecklistItemCount: (int32_t) val
{
    _checklistItemCount = val;
    self.dictionary[@"checklistItemCount"] = @(val);
}

- (int32_t) activeChecklistItemCount
{
    _activeChecklistItemCount = [self.dictionary[@"activeChecklistItemCount"] intValue];
    return _activeChecklistItemCount;
}

- (void) setActiveChecklistItemCount: (int32_t) val
{
    _activeChecklistItemCount = val;
    self.dictionary[@"activeChecklistItemCount"] = @(val);
}

- (MSGraphPlannerAppliedCategories*) appliedCategories
{
    if(!_appliedCategories){
        _appliedCategories = [[MSGraphPlannerAppliedCategories alloc] initWithDictionary: self.dictionary[@"appliedCategories"]];
    }
    return _appliedCategories;
}

- (void) setAppliedCategories: (MSGraphPlannerAppliedCategories*) val
{
    _appliedCategories = val;
    self.dictionary[@"appliedCategories"] = val;
}

- (MSGraphPlannerAssignments*) assignments
{
    if(!_assignments){
        _assignments = [[MSGraphPlannerAssignments alloc] initWithDictionary: self.dictionary[@"assignments"]];
    }
    return _assignments;
}

- (void) setAssignments: (MSGraphPlannerAssignments*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}

- (NSString*) conversationThreadId
{
    if([[NSNull null] isEqual:self.dictionary[@"conversationThreadId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conversationThreadId"];
}

- (void) setConversationThreadId: (NSString*) val
{
    self.dictionary[@"conversationThreadId"] = val;
}

- (MSGraphPlannerTaskDetails*) details
{
    if(!_details){
        _details = [[MSGraphPlannerTaskDetails alloc] initWithDictionary: self.dictionary[@"details"]];
    }
    return _details;
}

- (void) setDetails: (MSGraphPlannerTaskDetails*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (MSGraphPlannerAssignedToTaskBoardTaskFormat*) assignedToTaskBoardFormat
{
    if(!_assignedToTaskBoardFormat){
        _assignedToTaskBoardFormat = [[MSGraphPlannerAssignedToTaskBoardTaskFormat alloc] initWithDictionary: self.dictionary[@"assignedToTaskBoardFormat"]];
    }
    return _assignedToTaskBoardFormat;
}

- (void) setAssignedToTaskBoardFormat: (MSGraphPlannerAssignedToTaskBoardTaskFormat*) val
{
    _assignedToTaskBoardFormat = val;
    self.dictionary[@"assignedToTaskBoardFormat"] = val;
}

- (MSGraphPlannerProgressTaskBoardTaskFormat*) progressTaskBoardFormat
{
    if(!_progressTaskBoardFormat){
        _progressTaskBoardFormat = [[MSGraphPlannerProgressTaskBoardTaskFormat alloc] initWithDictionary: self.dictionary[@"progressTaskBoardFormat"]];
    }
    return _progressTaskBoardFormat;
}

- (void) setProgressTaskBoardFormat: (MSGraphPlannerProgressTaskBoardTaskFormat*) val
{
    _progressTaskBoardFormat = val;
    self.dictionary[@"progressTaskBoardFormat"] = val;
}

- (MSGraphPlannerBucketTaskBoardTaskFormat*) bucketTaskBoardFormat
{
    if(!_bucketTaskBoardFormat){
        _bucketTaskBoardFormat = [[MSGraphPlannerBucketTaskBoardTaskFormat alloc] initWithDictionary: self.dictionary[@"bucketTaskBoardFormat"]];
    }
    return _bucketTaskBoardFormat;
}

- (void) setBucketTaskBoardFormat: (MSGraphPlannerBucketTaskBoardTaskFormat*) val
{
    _bucketTaskBoardFormat = val;
    self.dictionary[@"bucketTaskBoardFormat"] = val;
}


@end
