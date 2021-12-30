// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerBucketTaskBoardTaskFormat()
{
    NSString* _orderHint;
}
@end

@implementation MSGraphPlannerBucketTaskBoardTaskFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerBucketTaskBoardTaskFormat";
    }
    return self;
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


@end
