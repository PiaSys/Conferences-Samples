// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphRoleAssignment.h"

@interface MSGraphDeviceAndAppManagementRoleAssignment : MSGraphRoleAssignment

  @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
  
@end
