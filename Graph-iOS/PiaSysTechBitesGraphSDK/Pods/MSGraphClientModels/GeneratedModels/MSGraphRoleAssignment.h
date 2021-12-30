// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRoleDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphRoleAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setRoleAssignmentDescription:, getter=roleAssignmentDescription) NSString* roleAssignmentDescription;
    @property (nullable, nonatomic, setter=setResourceScopes:, getter=resourceScopes) NSArray* resourceScopes;
    @property (nullable, nonatomic, setter=setRoleDefinition:, getter=roleDefinition) MSGraphRoleDefinition* roleDefinition;
  
@end
