// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartDataLabelFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartDataLabels : MSGraphEntity

  @property (nullable, nonatomic, setter=setPosition:, getter=position) NSString* position;
    @property (nullable, nonatomic, setter=setSeparator:, getter=separator) NSString* separator;
    @property (nonatomic, setter=setShowBubbleSize:, getter=showBubbleSize) BOOL showBubbleSize;
    @property (nonatomic, setter=setShowCategoryName:, getter=showCategoryName) BOOL showCategoryName;
    @property (nonatomic, setter=setShowLegendKey:, getter=showLegendKey) BOOL showLegendKey;
    @property (nonatomic, setter=setShowPercentage:, getter=showPercentage) BOOL showPercentage;
    @property (nonatomic, setter=setShowSeriesName:, getter=showSeriesName) BOOL showSeriesName;
    @property (nonatomic, setter=setShowValue:, getter=showValue) BOOL showValue;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartDataLabelFormat* format;
  
@end
