// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartLegendFormat()
{
    MSGraphWorkbookChartFill* _fill;
    MSGraphWorkbookChartFont* _font;
}
@end

@implementation MSGraphWorkbookChartLegendFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartLegendFormat";
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


@end
