// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphProfilePhoto : MSGraphEntity

  @property (nonatomic, setter=setHeight:, getter=height) int32_t height;
    @property (nonatomic, setter=setWidth:, getter=width) int32_t width;
  
@end
