// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSharingDetail, MSGraphResourceVisualization, MSGraphResourceReference, MSGraphEntity; 


#import "MSGraphEntity.h"

@interface MSGraphSharedInsight : MSGraphEntity

  @property (nullable, nonatomic, setter=setLastShared:, getter=lastShared) MSGraphSharingDetail* lastShared;
    @property (nullable, nonatomic, setter=setSharingHistory:, getter=sharingHistory) NSArray* sharingHistory;
    @property (nullable, nonatomic, setter=setResourceVisualization:, getter=resourceVisualization) MSGraphResourceVisualization* resourceVisualization;
    @property (nullable, nonatomic, setter=setResourceReference:, getter=resourceReference) MSGraphResourceReference* resourceReference;
    @property (nullable, nonatomic, setter=setLastSharedMethod:, getter=lastSharedMethod) MSGraphEntity* lastSharedMethod;
    @property (nullable, nonatomic, setter=setResource:, getter=resource) MSGraphEntity* resource;
  
@end
