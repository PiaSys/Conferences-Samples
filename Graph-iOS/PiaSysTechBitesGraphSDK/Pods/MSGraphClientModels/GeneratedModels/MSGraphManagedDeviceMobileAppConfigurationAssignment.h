// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceAndAppManagementAssignmentTarget; 


#import "MSGraphEntity.h"

@interface MSGraphManagedDeviceMobileAppConfigurationAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setTarget:, getter=target) MSGraphDeviceAndAppManagementAssignmentTarget* target;
  
@end
