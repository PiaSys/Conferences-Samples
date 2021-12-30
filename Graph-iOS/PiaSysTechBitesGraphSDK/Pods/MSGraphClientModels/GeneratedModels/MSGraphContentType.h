// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemReference, MSGraphContentTypeOrder, MSGraphColumnLink; 


#import "MSGraphEntity.h"

@interface MSGraphContentType : MSGraphEntity

  @property (nullable, nonatomic, setter=setContentTypeDescription:, getter=contentTypeDescription) NSString* contentTypeDescription;
    @property (nullable, nonatomic, setter=setGroup:, getter=group) NSString* group;
    @property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
    @property (nullable, nonatomic, setter=setInheritedFrom:, getter=inheritedFrom) MSGraphItemReference* inheritedFrom;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setOrder:, getter=order) MSGraphContentTypeOrder* order;
    @property (nullable, nonatomic, setter=setParentId:, getter=parentId) NSString* parentId;
    @property (nonatomic, setter=setContentTypeReadOnly:, getter=contentTypeReadOnly) BOOL contentTypeReadOnly;
    @property (nonatomic, setter=setSealed:, getter=sealed) BOOL sealed;
    @property (nullable, nonatomic, setter=setColumnLinks:, getter=columnLinks) NSArray* columnLinks;
  
@end
