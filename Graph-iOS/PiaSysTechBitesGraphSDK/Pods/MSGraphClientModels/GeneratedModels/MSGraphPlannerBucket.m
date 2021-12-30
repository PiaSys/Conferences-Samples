// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerBucket()
{
    NSString* _name;
    NSString* _planId;
    NSString* _orderHint;
    NSArray* _tasks;
}
@end

@implementation MSGraphPlannerBucket

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerBucket";
    }
    return self;
}
- (NSString*) name
{
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
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


@end
