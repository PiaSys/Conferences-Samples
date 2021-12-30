// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartAxis; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartAxes : MSGraphEntity

  @property (nullable, nonatomic, setter=setCategoryAxis:, getter=categoryAxis) MSGraphWorkbookChartAxis* categoryAxis;
    @property (nullable, nonatomic, setter=setSeriesAxis:, getter=seriesAxis) MSGraphWorkbookChartAxis* seriesAxis;
    @property (nullable, nonatomic, setter=setValueAxis:, getter=valueAxis) MSGraphWorkbookChartAxis* valueAxis;
  
@end
