// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphItemReference, MSGraphSharingInvitation, MSGraphSharingLink; 


#import "MSGraphEntity.h"

@interface MSGraphPermission : MSGraphEntity

  @property (nullable, nonatomic, setter=setGrantedTo:, getter=grantedTo) MSGraphIdentitySet* grantedTo;
    @property (nullable, nonatomic, setter=setInheritedFrom:, getter=inheritedFrom) MSGraphItemReference* inheritedFrom;
    @property (nullable, nonatomic, setter=setInvitation:, getter=invitation) MSGraphSharingInvitation* invitation;
    @property (nullable, nonatomic, setter=setLink:, getter=link) MSGraphSharingLink* link;
    @property (nullable, nonatomic, setter=setRoles:, getter=roles) NSArray* roles;
    @property (nullable, nonatomic, setter=setShareId:, getter=shareId) NSString* shareId;
  
@end
