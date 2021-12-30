// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceAndAppManagementAssignmentTarget; 
#import "MSGraphInstallIntent.h"


#import "MSGraphEntity.h"

@interface MSGraphManagedEBookAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setTarget:, getter=target) MSGraphDeviceAndAppManagementAssignmentTarget* target;
    @property (nonnull, nonatomic, setter=setInstallIntent:, getter=installIntent) MSGraphInstallIntent* installIntent;
  
@end
