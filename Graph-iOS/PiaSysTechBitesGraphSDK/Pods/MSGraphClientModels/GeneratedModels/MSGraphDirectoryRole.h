// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDirectoryObject; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphDirectoryRole : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setDirectoryRoleDescription:, getter=directoryRoleDescription) NSString* directoryRoleDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setRoleTemplateId:, getter=roleTemplateId) NSString* roleTemplateId;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
  
@end
