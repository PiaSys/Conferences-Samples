// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphMultiValueLegacyExtendedProperty : MSGraphEntity

  @property (nullable, nonatomic, setter=setValue:, getter=value) NSArray* value;
  
@end
