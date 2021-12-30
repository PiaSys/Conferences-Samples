// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartSeriesFormat, MSGraphWorkbookChartPoint; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartSeries : MSGraphEntity

  @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartSeriesFormat* format;
    @property (nullable, nonatomic, setter=setPoints:, getter=points) NSArray* points;
  
@end
