// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphThumbnail; 


#import "MSGraphEntity.h"

@interface MSGraphThumbnailSet : MSGraphEntity

  @property (nullable, nonatomic, setter=setLarge:, getter=large) MSGraphThumbnail* large;
    @property (nullable, nonatomic, setter=setMedium:, getter=medium) MSGraphThumbnail* medium;
    @property (nullable, nonatomic, setter=setSmall:, getter=small) MSGraphThumbnail* small;
    @property (nullable, nonatomic, setter=setSource:, getter=source) MSGraphThumbnail* source;
  
@end
