// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTargetedManagedAppPolicyAssignment; 


#import "MSGraphManagedAppProtection.h"

@interface MSGraphTargetedManagedAppProtection : MSGraphManagedAppProtection

  @property (nonatomic, setter=setIsAssigned:, getter=isAssigned) BOOL isAssigned;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
