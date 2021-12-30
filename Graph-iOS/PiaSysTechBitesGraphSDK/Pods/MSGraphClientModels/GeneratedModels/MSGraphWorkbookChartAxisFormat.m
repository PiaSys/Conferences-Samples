// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartAxisFormat()
{
    MSGraphWorkbookChartFont* _font;
    MSGraphWorkbookChartLineFormat* _line;
}
@end

@implementation MSGraphWorkbookChartAxisFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartAxisFormat";
    }
    return self;
}
- (MSGraphWorkbookChartFont*) font
{
    if(!_font){
        _font = [[MSGraphWorkbookChartFont alloc] initWithDictionary: self.dictionary[@"font"]];
    }
    return _font;
}

- (void) setFont: (MSGraphWorkbookChartFont*) val
{
    _font = val;
    self.dictionary[@"font"] = val;
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
