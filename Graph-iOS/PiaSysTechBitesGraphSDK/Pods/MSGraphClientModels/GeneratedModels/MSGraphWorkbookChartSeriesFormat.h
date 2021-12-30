// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartFill, MSGraphWorkbookChartLineFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartSeriesFormat : MSGraphEntity

  @property (nullable, nonatomic, setter=setFill:, getter=fill) MSGraphWorkbookChartFill* fill;
    @property (nullable, nonatomic, setter=setLine:, getter=line) MSGraphWorkbookChartLineFormat* line;
  
@end
