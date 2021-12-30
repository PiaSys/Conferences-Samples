// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookPivotTable()
{
    NSString* _name;
    MSGraphWorkbookWorksheet* _worksheet;
}
@end

@implementation MSGraphWorkbookPivotTable

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookPivotTable";
    }
    return self;
}
- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (MSGraphWorkbookWorksheet*) worksheet
{
    if(!_worksheet){
        _worksheet = [[MSGraphWorkbookWorksheet alloc] initWithDictionary: self.dictionary[@"worksheet"]];
    }
    return _worksheet;
}

- (void) setWorksheet: (MSGraphWorkbookWorksheet*) val
{
    _worksheet = val;
    self.dictionary[@"worksheet"] = val;
}


@end
