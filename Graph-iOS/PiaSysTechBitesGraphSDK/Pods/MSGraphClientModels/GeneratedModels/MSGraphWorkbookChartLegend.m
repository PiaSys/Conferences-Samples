// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartLegend()
{
    BOOL _overlay;
    NSString* _position;
    BOOL _visible;
    MSGraphWorkbookChartLegendFormat* _format;
}
@end

@implementation MSGraphWorkbookChartLegend

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartLegend";
    }
    return self;
}
- (BOOL) overlay
{
    _overlay = [self.dictionary[@"overlay"] boolValue];
    return _overlay;
}

- (void) setOverlay: (BOOL) val
{
    _overlay = val;
    self.dictionary[@"overlay"] = @(val);
}

- (NSString*) position
{
    if([[NSNull null] isEqual:self.dictionary[@"position"]])
    {
        return nil;
    }   
    return self.dictionary[@"position"];
}

- (void) setPosition: (NSString*) val
{
    self.dictionary[@"position"] = val;
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

- (MSGraphWorkbookChartLegendFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartLegendFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartLegendFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}


@end
