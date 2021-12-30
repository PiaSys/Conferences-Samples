// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphResourceVisualization, MSGraphResourceReference, MSGraphEntity; 


#import "MSGraphEntity.h"

@interface MSGraphTrending : MSGraphEntity

  @property (nonatomic, setter=setWeight:, getter=weight) double weight;
    @property (nullable, nonatomic, setter=setResourceVisualization:, getter=resourceVisualization) MSGraphResourceVisualization* resourceVisualization;
    @property (nullable, nonatomic, setter=setResourceReference:, getter=resourceReference) MSGraphResourceReference* resourceReference;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEntity* resource;
  
@end
