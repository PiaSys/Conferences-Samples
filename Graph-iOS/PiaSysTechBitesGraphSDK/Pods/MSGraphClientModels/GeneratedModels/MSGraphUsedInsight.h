// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphUsageDetails, MSGraphResourceVisualization, MSGraphResourceReference, MSGraphEntity; 


#import "MSGraphEntity.h"

@interface MSGraphUsedInsight : MSGraphEntity

  @property (nullable, nonatomic, setter=setLastUsed:, getter=lastUsed) MSGraphUsageDetails* lastUsed;
    @property (nullable, nonatomic, setter=setResourceVisualization:, getter=resourceVisualization) MSGraphResourceVisualization* resourceVisualization;
    @property (nullable, nonatomic, setter=setResourceReference:, getter=resourceReference) MSGraphResourceReference* resourceReference;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEntity* resource;
  
@end
