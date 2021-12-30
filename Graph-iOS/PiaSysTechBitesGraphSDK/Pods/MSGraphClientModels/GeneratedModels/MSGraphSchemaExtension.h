// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExtensionSchemaProperty; 


#import "MSGraphEntity.h"

@interface MSGraphSchemaExtension : MSGraphEntity

  @property (nullable, nonatomic, setter=setSchemaExtensionDescription:, getter=schemaExtensionDescription) NSString* schemaExtensionDescription;
    @property (nonnull, nonatomic, setter=setTargetTypes:, getter=targetTypes) NSArray* targetTypes;
    @property (nonnull, nonatomic, setter=setProperties:, getter=properties) NSArray* properties;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) NSString* status;
    @property (nonnull, nonatomic, setter=setOwner:, getter=owner) NSString* owner;
  
@end
