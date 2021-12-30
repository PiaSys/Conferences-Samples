// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet; 


#import "MSGraphOnenoteEntitySchemaObjectModel.h"

@interface MSGraphOnenoteEntityHierarchyModel : MSGraphOnenoteEntitySchemaObjectModel

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
  
@end
