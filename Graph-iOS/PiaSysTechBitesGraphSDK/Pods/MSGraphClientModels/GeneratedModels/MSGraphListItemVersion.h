// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphFieldValueSet; 


#import "MSGraphBaseItemVersion.h"

@interface MSGraphListItemVersion : MSGraphBaseItemVersion

  @property (nullable, nonatomic, setter=setFields:, getter=fields) MSGraphFieldValueSet* fields;
  
@end
