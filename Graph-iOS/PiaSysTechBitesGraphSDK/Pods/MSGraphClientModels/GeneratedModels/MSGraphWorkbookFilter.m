// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookFilter()
{
    MSGraphWorkbookFilterCriteria* _criteria;
}
@end

@implementation MSGraphWorkbookFilter

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookFilter";
    }
    return self;
}
- (MSGraphWorkbookFilterCriteria*) criteria
{
    if(!_criteria){
        _criteria = [[MSGraphWorkbookFilterCriteria alloc] initWithDictionary: self.dictionary[@"criteria"]];
    }
    return _criteria;
}

- (void) setCriteria: (MSGraphWorkbookFilterCriteria*) val
{
    _criteria = val;
    self.dictionary[@"criteria"] = val;
}


@end
