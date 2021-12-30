// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartAxes, MSGraphWorkbookChartDataLabels, MSGraphWorkbookChartAreaFormat, MSGraphWorkbookChartLegend, MSGraphWorkbookChartSeries, MSGraphWorkbookChartTitle, MSGraphWorkbookWorksheet; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChart : MSGraphEntity

  @property (nonatomic, setter=setHeight:, getter=height) double height;
    @property (nonatomic, setter=setLeft:, getter=left) double left;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nonatomic, setter=setTop:, getter=top) double top;
    @property (nonatomic, setter=setWidth:, getter=width) double width;
    @property (nullable, nonatomic, setter=setAxes:, getter=axes) MSGraphWorkbookChartAxes* axes;
    @property (nullable, nonatomic, setter=setDataLabels:, getter=dataLabels) MSGraphWorkbookChartDataLabels* dataLabels;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartAreaFormat* format;
    @property (nullable, nonatomic, setter=setLegend:, getter=legend) MSGraphWorkbookChartLegend* legend;
    @property (nullable, nonatomic, setter=setSeries:, getter=series) NSArray* series;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) MSGraphWorkbookChartTitle* title;
    @property (nullable, nonatomic, setter=setWorksheet:, getter=worksheet) MSGraphWorkbookWorksheet* worksheet;
  
@end
