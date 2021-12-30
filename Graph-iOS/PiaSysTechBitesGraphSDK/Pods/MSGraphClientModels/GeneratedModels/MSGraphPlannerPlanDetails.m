// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPlannerPlanDetails()
{
    MSGraphPlannerUserIds* _sharedWith;
    MSGraphPlannerCategoryDescriptions* _categoryDescriptions;
}
@end

@implementation MSGraphPlannerPlanDetails

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.plannerPlanDetails";
    }
    return self;
}
- (MSGraphPlannerUserIds*) sharedWith
{
    if(!_sharedWith){
        _sharedWith = [[MSGraphPlannerUserIds alloc] initWithDictionary: self.dictionary[@"sharedWith"]];
    }
    return _sharedWith;
}

- (void) setSharedWith: (MSGraphPlannerUserIds*) val
{
    _sharedWith = val;
    self.dictionary[@"sharedWith"] = val;
}

- (MSGraphPlannerCategoryDescriptions*) categoryDescriptions
{
    if(!_categoryDescriptions){
        _categoryDescriptions = [[MSGraphPlannerCategoryDescriptions alloc] initWithDictionary: self.dictionary[@"categoryDescriptions"]];
    }
    return _categoryDescriptions;
}

- (void) setCategoryDescriptions: (MSGraphPlannerCategoryDescriptions*) val
{
    _categoryDescriptions = val;
    self.dictionary[@"categoryDescriptions"] = val;
}


@end
