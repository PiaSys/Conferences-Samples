// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartAxisTitle()
{
    NSString* _text;
    BOOL _visible;
    MSGraphWorkbookChartAxisTitleFormat* _format;
}
@end

@implementation MSGraphWorkbookChartAxisTitle

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartAxisTitle";
    }
    return self;
}
- (NSString*) text
{
    if([[NSNull null] isEqual:self.dictionary[@"text"]])
    {
        return nil;
    }   
    return self.dictionary[@"text"];
}

- (void) setText: (NSString*) val
{
    self.dictionary[@"text"] = val;
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

- (MSGraphWorkbookChartAxisTitleFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartAxisTitleFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartAxisTitleFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}


@end
