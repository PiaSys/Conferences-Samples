// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphDirectoryObject : MSGraphEntity

  @property (nullable, nonatomic, setter=setDeletedDateTime:, getter=deletedDateTime) NSDate* deletedDateTime;
  
@end
