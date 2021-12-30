// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartGridlinesFormat()
{
    MSGraphWorkbookChartLineFormat* _line;
}
@end

@implementation MSGraphWorkbookChartGridlinesFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartGridlinesFormat";
    }
    return self;
}
- (MSGraphWorkbookChartLineFormat*) line
{
    if(!_line){
        _line = [[MSGraphWorkbookChartLineFormat alloc] initWithDictionary: self.dictionary[@"line"]];
    }
    return _line;
}

- (void) setLine: (MSGraphWorkbookChartLineFormat*) val
{
    _line = val;
    self.dictionary[@"line"] = val;
}


@end
