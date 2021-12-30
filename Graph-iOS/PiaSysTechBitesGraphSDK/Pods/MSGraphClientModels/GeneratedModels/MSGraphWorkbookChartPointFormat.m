// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartPointFormat()
{
    MSGraphWorkbookChartFill* _fill;
}
@end

@implementation MSGraphWorkbookChartPointFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartPointFormat";
    }
    return self;
}
- (MSGraphWorkbookChartFill*) fill
{
    if(!_fill){
        _fill = [[MSGraphWorkbookChartFill alloc] initWithDictionary: self.dictionary[@"fill"]];
    }
    return _fill;
}

- (void) setFill: (MSGraphWorkbookChartFill*) val
{
    _fill = val;
    self.dictionary[@"fill"] = val;
}


@end
