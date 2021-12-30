// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphPublicationFacet; 


#import "MSGraphEntity.h"

@interface MSGraphBaseItemVersion : MSGraphEntity

  @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setPublication:, getter=publication) MSGraphPublicationFacet* publication;
  
@end
