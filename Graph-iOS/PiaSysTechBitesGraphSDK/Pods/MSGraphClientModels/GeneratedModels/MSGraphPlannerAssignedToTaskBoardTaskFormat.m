// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerAssignedToTaskBoardTaskFormat()
{
    NSString* _unassignedOrderHint;
    MSGraphPlannerOrderHintsByAssignee* _orderHintsByAssignee;
}
@end

@implementation MSGraphPlannerAssignedToTaskBoardTaskFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerAssignedToTaskBoardTaskFormat";
    }
    return self;
}
- (NSString*) unassignedOrderHint
{
    if([[NSNull null] isEqual:self.dictionary[@"unassignedOrderHint"]])
    {
        return nil;
    }   
    return self.dictionary[@"unassignedOrderHint"];
}

- (void) setUnassignedOrderHint: (NSString*) val
{
    self.dictionary[@"unassignedOrderHint"] = val;
}

- (MSGraphPlannerOrderHintsByAssignee*) orderHintsByAssignee
{
    if(!_orderHintsByAssignee){
        _orderHintsByAssignee = [[MSGraphPlannerOrderHintsByAssignee alloc] initWithDictionary: self.dictionary[@"orderHintsByAssignee"]];
    }
    return _orderHintsByAssignee;
}

- (void) setOrderHintsByAssignee: (MSGraphPlannerOrderHintsByAssignee*) val
{
    _orderHintsByAssignee = val;
    self.dictionary[@"orderHintsByAssignee"] = val;
}


@end
