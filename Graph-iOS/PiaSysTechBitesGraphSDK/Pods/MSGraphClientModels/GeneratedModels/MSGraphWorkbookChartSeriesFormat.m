// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartSeriesFormat()
{
    MSGraphWorkbookChartFill* _fill;
    MSGraphWorkbookChartLineFormat* _line;
}
@end

@implementation MSGraphWorkbookChartSeriesFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartSeriesFormat";
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
