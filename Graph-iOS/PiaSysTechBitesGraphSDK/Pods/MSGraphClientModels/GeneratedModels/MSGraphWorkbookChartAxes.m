// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWorkbookChartAxes()
{
    MSGraphWorkbookChartAxis* _categoryAxis;
    MSGraphWorkbookChartAxis* _seriesAxis;
    MSGraphWorkbookChartAxis* _valueAxis;
}
@end

@implementation MSGraphWorkbookChartAxes

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.workbookChartAxes";
    }
    return self;
}
- (MSGraphWorkbookChartAxis*) categoryAxis
{
    if(!_categoryAxis){
        _categoryAxis = [[MSGraphWorkbookChartAxis alloc] initWithDictionary: self.dictionary[@"categoryAxis"]];
    }
    return _categoryAxis;
}

- (void) setCategoryAxis: (MSGraphWorkbookChartAxis*) val
{
    _categoryAxis = val;
    self.dictionary[@"categoryAxis"] = val;
}

- (MSGraphWorkbookChartAxis*) seriesAxis
{
    if(!_seriesAxis){
        _seriesAxis = [[MSGraphWorkbookChartAxis alloc] initWithDictionary: self.dictionary[@"seriesAxis"]];
    }
    return _seriesAxis;
}

- (void) setSeriesAxis: (MSGraphWorkbookChartAxis*) val
{
    _seriesAxis = val;
    self.dictionary[@"seriesAxis"] = val;
}

- (MSGraphWorkbookChartAxis*) valueAxis
{
    if(!_valueAxis){
        _valueAxis = [[MSGraphWorkbookChartAxis alloc] initWithDictionary: self.dictionary[@"valueAxis"]];
    }
    return _valueAxis;
}

- (void) setValueAxis: (MSGraphWorkbookChartAxis*) val
{
    _valueAxis = val;
    self.dictionary[@"valueAxis"] = val;
}


@end
