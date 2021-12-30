// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class NSDictionary, MSGraphWorkbookChartAxisFormat, MSGraphWorkbookChartGridlines, MSGraphWorkbookChartAxisTitle; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartAxis : MSGraphEntity

  @property (nullable, nonatomic, setter=setMajorUnit:, getter=majorUnit) NSDictionary* majorUnit;
    @property (nullable, nonatomic, setter=setMaximum:, getter=maximum) NSDictionary* maximum;
    @property (nullable, nonatomic, setter=setMinimum:, getter=minimum) NSDictionary* minimum;
    @property (nullable, nonatomic, setter=setMinorUnit:, getter=minorUnit) NSDictionary* minorUnit;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartAxisFormat* format;
    @property (nullable, nonatomic, setter=setMajorGridlines:, getter=majorGridlines) MSGraphWorkbookChartGridlines* majorGridlines;
    @property (nullable, nonatomic, setter=setMinorGridlines:, getter=minorGridlines) MSGraphWorkbookChartGridlines* minorGridlines;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) MSGraphWorkbookChartAxisTitle* title;
  
@end
