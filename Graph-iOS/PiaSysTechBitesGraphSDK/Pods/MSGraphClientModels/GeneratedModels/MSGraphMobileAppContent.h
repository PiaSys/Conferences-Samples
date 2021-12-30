// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMobileAppContentFile; 


#import "MSGraphEntity.h"

@interface MSGraphMobileAppContent : MSGraphEntity

  @property (nullable, nonatomic, setter=setFiles:, getter=files) NSArray* files;
  
@end
