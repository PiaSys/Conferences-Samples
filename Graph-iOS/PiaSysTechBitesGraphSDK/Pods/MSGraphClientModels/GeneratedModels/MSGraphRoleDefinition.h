// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRolePermission, MSGraphRoleAssignment; 


#import "MSGraphEntity.h"

@interface MSGraphRoleDefinition : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setRoleDefinitionDescription:, getter=roleDefinitionDescription) NSString* roleDefinitionDescription;
    @property (nullable, nonatomic, setter=setRolePermissions:, getter=rolePermissions) NSArray* rolePermissions;
    @property (nonatomic, setter=setIsBuiltIn:, getter=isBuiltIn) BOOL isBuiltIn;
    @property (nullable, nonatomic, setter=setRoleAssignments:, getter=roleAssignments) NSArray* roleAssignments;
  
@end
