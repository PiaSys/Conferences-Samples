// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartAxisTitleFormat()
{
    MSGraphWorkbookChartFont* _font;
}
@end

@implementation MSGraphWorkbookChartAxisTitleFormat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartAxisTitleFormat";
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


@end
