// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChart()
{
    double _height;
    double _left;
    NSString* _name;
    double _top;
    double _width;
    MSGraphWorkbookChartAxes* _axes;
    MSGraphWorkbookChartDataLabels* _dataLabels;
    MSGraphWorkbookChartAreaFormat* _format;
    MSGraphWorkbookChartLegend* _legend;
    NSArray* _series;
    MSGraphWorkbookChartTitle* _title;
    MSGraphWorkbookWorksheet* _worksheet;
}
@end

@implementation MSGraphWorkbookChart

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChart";
    }
    return self;
}
- (double) height
{
    _height = [self.dictionary[@"height"] floatValue];
    return _height;
}

- (void) setHeight: (double) val
{
    _height = val;
    self.dictionary[@"height"] = @(val);
}

- (double) left
{
    _left = [self.dictionary[@"left"] floatValue];
    return _left;
}

- (void) setLeft: (double) val
{
    _left = val;
    self.dictionary[@"left"] = @(val);
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (double) top
{
    _top = [self.dictionary[@"top"] floatValue];
    return _top;
}

- (void) setTop: (double) val
{
    _top = val;
    self.dictionary[@"top"] = @(val);
}

- (double) width
{
    _width = [self.dictionary[@"width"] floatValue];
    return _width;
}

- (void) setWidth: (double) val
{
    _width = val;
    self.dictionary[@"width"] = @(val);
}

- (MSGraphWorkbookChartAxes*) axes
{
    if(!_axes){
        _axes = [[MSGraphWorkbookChartAxes alloc] initWithDictionary: self.dictionary[@"axes"]];
    }
    return _axes;
}

- (void) setAxes: (MSGraphWorkbookChartAxes*) val
{
    _axes = val;
    self.dictionary[@"axes"] = val;
}

- (MSGraphWorkbookChartDataLabels*) dataLabels
{
    if(!_dataLabels){
        _dataLabels = [[MSGraphWorkbookChartDataLabels alloc] initWithDictionary: self.dictionary[@"dataLabels"]];
    }
    return _dataLabels;
}

- (void) setDataLabels: (MSGraphWorkbookChartDataLabels*) val
{
    _dataLabels = val;
    self.dictionary[@"dataLabels"] = val;
}

- (MSGraphWorkbookChartAreaFormat*) format
{
    if(!_format){
        _format = [[MSGraphWorkbookChartAreaFormat alloc] initWithDictionary: self.dictionary[@"format"]];
    }
    return _format;
}

- (void) setFormat: (MSGraphWorkbookChartAreaFormat*) val
{
    _format = val;
    self.dictionary[@"format"] = val;
}

- (MSGraphWorkbookChartLegend*) legend
{
    if(!_legend){
        _legend = [[MSGraphWorkbookChartLegend alloc] initWithDictionary: self.dictionary[@"legend"]];
    }
    return _legend;
}

- (void) setLegend: (MSGraphWorkbookChartLegend*) val
{
    _legend = val;
    self.dictionary[@"legend"] = val;
}

- (NSArray*) series
{
    if(!_series){
        
    NSMutableArray *seriesResult = [NSMutableArray array];
    NSArray *series = self.dictionary[@"series"];

    if ([series isKindOfClass:[NSArray class]]){
        for (id tempWorkbookChartSeries in series){
            [seriesResult addObject:tempWorkbookChartSeries];
        }
    }

    _series = seriesResult;
        
    }
    return _series;
}

- (void) setSeries: (NSArray*) val
{
    _series = val;
    self.dictionary[@"series"] = val;
}

- (MSGraphWorkbookChartTitle*) title
{
    if(!_title){
        _title = [[MSGraphWorkbookChartTitle alloc] initWithDictionary: self.dictionary[@"title"]];
    }
    return _title;
}

- (void) setTitle: (MSGraphWorkbookChartTitle*) val
{
    _title = val;
    self.dictionary[@"title"] = val;
}

- (MSGraphWorkbookWorksheet*) worksheet
{
    if(!_worksheet){
        _worksheet = [[MSGraphWorkbookWorksheet alloc] initWithDictionary: self.dictionary[@"worksheet"]];
    }
    return _worksheet;
}

- (void) setWorksheet: (MSGraphWorkbookWorksheet*) val
{
    _worksheet = val;
    self.dictionary[@"worksheet"] = val;
}


@end
