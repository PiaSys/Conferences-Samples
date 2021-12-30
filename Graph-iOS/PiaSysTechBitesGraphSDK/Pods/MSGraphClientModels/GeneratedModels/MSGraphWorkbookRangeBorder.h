// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphWorkbookRangeBorder : MSGraphEntity

  @property (nullable, nonatomic, setter=setColor:, getter=color) NSString* color;
    @property (nullable, nonatomic, setter=setSideIndex:, getter=sideIndex) NSString* sideIndex;
    @property (nullable, nonatomic, setter=setStyle:, getter=style) NSString* style;
    @property (nullable, nonatomic, setter=setWeight:, getter=weight) NSString* weight;
  
@end
