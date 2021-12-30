// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartAxis()
{
    NSDictionary* _majorUnit;
    NSDictionary* _maximum;
    NSDictionary* _minimum;
    NSDictionary* _minorUnit;
    MSGraphWorkbookChartAxisFormat* _format;
    MSGraphWorkbookChartGridlines* _majorGridlines;
    MSGraphWorkbookChartGridlines* _minorGridlines;
    MSGraphWorkbookChartAxisTitle* _title;
}
@end

@implementation MSGraphWorkbookChartAxis

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartAxis";
    }
    return self;
}
- (NSDictionary*) majorUnit
{
    if(!_majorUnit){
        _majorUnit = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"majorUnit"]];
    }
    return _majorUnit;
}

- (void) setMajorUnit: (NSDictionary*) val
{
    _majorUnit = val;
    self.dictionary[@"majorUnit"] = val;
}

- (NSDictionary*) maximum
{
    if(!_maximum){
        _maximum = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"maximum"]];
    }
    return _maximum;
}

- (void) setMaximum: (NSDictionary*) val
{
    _maximum = val;
    self.dictionary[@"maximum"] = val;
}

- (NSDictionary*) minimum
{
    if(!_minimum){
        _minimum = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"minimum"]];
    }
    return _minimum;
}

- (void) setMinimum: (NSDictionary*) val
{
    _minimum = val;
    self.dictionary[@"minimum"] = val;
}

- (NSDictionary*) minorUnit
{
    if(!_minorUnit){
        _minorUnit = [[NSDictionary alloc] initWithDictionary: self.dictionary[@"minorUnit"]];
    }
    return _minorUnit;
}

- (void) setMinorUnit: (NSDictionary*) val
{
    _minorUnit = val;
    self.dictionary[@"minorUnit"] = val;
}

- (MSGraphWorkbookChartAxisFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartAxisFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartAxisFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}

- (MSGraphWorkbookChartGridlines*) majorGridlines
{
    if(!_majorGridlines){
        _majorGridlines = [[MSGraphWorkbookChartGridlines alloc] initWithDictionary: self.dictionary[@"majorGridlines"]];
    }
    return _majorGridlines;
}

- (void) setMajorGridlines: (MSGraphWorkbookChartGridlines*) val
{
    _majorGridlines = val;
    self.dictionary[@"majorGridlines"] = val;
}

- (MSGraphWorkbookChartGridlines*) minorGridlines
{
    if(!_minorGridlines){
        _minorGridlines = [[MSGraphWorkbookChartGridlines alloc] initWithDictionary: self.dictionary[@"minorGridlines"]];
    }
    return _minorGridlines;
}

- (void) setMinorGridlines: (MSGraphWorkbookChartGridlines*) val
{
    _minorGridlines = val;
    self.dictionary[@"minorGridlines"] = val;
}

- (MSGraphWorkbookChartAxisTitle*) title
{
    if(!_title){
        _title = [[MSGraphWorkbookChartAxisTitle alloc] initWithDictionary: self.dictionary[@"title"]];
    }
    return _title;
}

- (void) setTitle: (MSGraphWorkbookChartAxisTitle*) val
{
    _title = val;
    self.dictionary[@"title"] = val;
}


@end
