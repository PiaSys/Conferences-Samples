// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartAxisTitleFormat; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartAxisTitle : MSGraphEntity

  @property (nullable, nonatomic, setter=setText:, getter=text) NSString* text;
    @property (nonatomic, setter=setVisible:, getter=visible) BOOL visible;
    @property (nullable, nonatomic, setter=setFormat:, getter=format) MSGraphWorkbookChartAxisTitleFormat* format;
  
@end
