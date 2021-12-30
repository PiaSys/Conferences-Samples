// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkbookChartFont; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookChartAxisTitleFormat : MSGraphEntity

  @property (nullable, nonatomic, setter=setFont:, getter=font) MSGraphWorkbookChartFont* font;
  
@end
