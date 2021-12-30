// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphCategoryColor.h"


#import "MSGraphEntity.h"

@interface MSGraphOutlookCategory : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setColor:, getter=color) MSGraphCategoryColor* color;
  
@end
