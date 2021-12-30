// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTrending, MSGraphSharedInsight, MSGraphUsedInsight; 


#import "MSGraphEntity.h"

@interface MSGraphOfficeGraphInsights : MSGraphEntity

  @property (nullable, nonatomic, setter=setTrending:, getter=trending) NSArray* trending;
    @property (nullable, nonatomic, setter=setShared:, getter=shared) NSArray* shared;
    @property (nullable, nonatomic, setter=setUsed:, getter=used) NSArray* used;
  
@end
