// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphAttachment : MSGraphEntity

  @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
    @property (nonatomic, setter=setSize:, getter=size) int32_t size;
    @property (nonatomic, setter=setIsInline:, getter=isInline) BOOL isInline;
  
@end
