// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerPlan()
{
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    NSString* _owner;
    NSString* _title;
    NSArray* _tasks;
    NSArray* _buckets;
    MSGraphPlannerPlanDetails* _details;
}
@end

@implementation MSGraphPlannerPlan

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerPlan";
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

- (NSString*) owner
{
    if([[NSNull null] isEqual:self.dictionary[@"owner"]])
    {
        return nil;
    }   
    return self.dictionary[@"owner"];
}

- (void) setOwner: (NSString*) val
{
    self.dictionary[@"owner"] = val;
}

- (NSString*) title
{
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSArray*) tasks
{
    if(!_tasks){
        
    NSMutableArray *tasksResult = [NSMutableArray array];
    NSArray *tasks = self.dictionary[@"tasks"];

    if ([tasks isKindOfClass:[NSArray class]]){
        for (id tempPlannerTask in tasks){
            [tasksResult addObject:tempPlannerTask];
        }
    }

    _tasks = tasksResult;
        
    }
    return _tasks;
}

- (void) setTasks: (NSArray*) val
{
    _tasks = val;
    self.dictionary[@"tasks"] = val;
}

- (NSArray*) buckets
{
    if(!_buckets){
        
    NSMutableArray *bucketsResult = [NSMutableArray array];
    NSArray *buckets = self.dictionary[@"buckets"];

    if ([buckets isKindOfClass:[NSArray class]]){
        for (id tempPlannerBucket in buckets){
            [bucketsResult addObject:tempPlannerBucket];
        }
    }

    _buckets = bucketsResult;
        
    }
    return _buckets;
}

- (void) setBuckets: (NSArray*) val
{
    _buckets = val;
    self.dictionary[@"buckets"] = val;
}

- (MSGraphPlannerPlanDetails*) details
{
    if(!_details){
        _details = [[MSGraphPlannerPlanDetails alloc] initWithDictionary: self.dictionary[@"details"]];
    }
    return _details;
}

- (void) setDetails: (MSGraphPlannerPlanDetails*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}


@end
