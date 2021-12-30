// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOutlookUser()
{
    NSArray* _masterCategories;
}
@end

@implementation MSGraphOutlookUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.outlookUser";
    }
    return self;
}
- (NSArray*) masterCategories
{
    if(!_masterCategories){
        
    NSMutableArray *masterCategoriesResult = [NSMutableArray array];
    NSArray *masterCategories = self.dictionary[@"masterCategories"];

    if ([masterCategories isKindOfClass:[NSArray class]]){
        for (id tempOutlookCategory in masterCategories){
            [masterCategoriesResult addObject:tempOutlookCategory];
        }
    }

    _masterCategories = masterCategoriesResult;
        
    }
    return _masterCategories;
}

- (void) setMasterCategories: (NSArray*) val
{
    _masterCategories = val;
    self.dictionary[@"masterCategories"] = val;
}


@end
