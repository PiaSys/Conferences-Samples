// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class NSDictionary, MSGraphWorkbookFilter; 


#import "MSGraphEntity.h"

@interface MSGraphWorkbookTableColumn : MSGraphEntity

  @property (nonatomic, setter=setIndex:, getter=index) int32_t index;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setValues:, getter=values) NSDictionary* values;
    @property (nullable, nonatomic, setter=setFilter:, getter=filter) MSGraphWorkbookFilter* filter;
  
@end
