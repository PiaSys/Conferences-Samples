// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartFont, MSGraphWorkbookChartLineFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartAxisFormat : MSGraphEntity

  @property (nullable, nonatomic, setter=setFont:, getter=font) MSGraphWorkbookChartFont* font;
    @property (nullable, nonatomic, setter=setLine:, getter=line) MSGraphWorkbookChartLineFormat* line;
  
@end
