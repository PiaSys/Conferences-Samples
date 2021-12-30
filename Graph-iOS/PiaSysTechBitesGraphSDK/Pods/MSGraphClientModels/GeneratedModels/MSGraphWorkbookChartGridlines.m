// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartGridlines()
{
    BOOL _visible;
    MSGraphWorkbookChartGridlinesFormat* _format;
}
@end

@implementation MSGraphWorkbookChartGridlines

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartGridlines";
    }
    return self;
}
- (BOOL) visible
{
    _visible = [self.dictionary[@"visible"] boolValue];
    return _visible;
}

- (void) setVisible: (BOOL) val
{
    _visible = val;
    self.dictionary[@"visible"] = @(val);
}

- (MSGraphWorkbookChartGridlinesFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartGridlinesFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartGridlinesFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}


@end
