// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartTitleFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartTitle : MSGraphEntity

  @property (nonatomic, setter=setOverlay:, getter=overlay) BOOL overlay;
    @property (nullable, nonatomic, setter=setText:, getter=text) NSString* text;
    @property (nonatomic, setter=setVisible:, getter=visible) BOOL visible;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartTitleFormat* format;
  
@end
