// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartGridlinesFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartGridlines : MSGraphEntity

  @property (nonatomic, setter=setVisible:, getter=visible) BOOL visible;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartGridlinesFormat* format;
  
@end
