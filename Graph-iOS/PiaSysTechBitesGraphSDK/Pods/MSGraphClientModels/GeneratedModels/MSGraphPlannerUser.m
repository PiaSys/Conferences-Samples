// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerUser()
{
    NSArray* _tasks;
    NSArray* _plans;
}
@end

@implementation MSGraphPlannerUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerUser";
    }
    return self;
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

- (NSArray*) plans
{
    if(!_plans){
        
    NSMutableArray *plansResult = [NSMutableArray array];
    NSArray *plans = self.dictionary[@"plans"];

    if ([plans isKindOfClass:[NSArray class]]){
        for (id tempPlannerPlan in plans){
            [plansResult addObject:tempPlannerPlan];
        }
    }

    _plans = plansResult;
        
    }
    return _plans;
}

- (void) setPlans: (NSArray*) val
{
    _plans = val;
    self.dictionary[@"plans"] = val;
}


@end
