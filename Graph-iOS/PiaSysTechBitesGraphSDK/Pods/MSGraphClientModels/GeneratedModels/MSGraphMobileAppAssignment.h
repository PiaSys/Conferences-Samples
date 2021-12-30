// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDeviceAndAppManagementAssignmentTarget, MSGraphMobileAppAssignmentSettings; 
#import "MSGraphInstallIntent.h"


#import "MSGraphEntity.h"

@interface MSGraphMobileAppAssignment : MSGraphEntity

  @property (nonnull, nonatomic, setter=setIntent:, getter=intent) MSGraphInstallIntent* intent;
    @property (nullable, nonatomic, setter=setTarget:, getter=target) MSGraphDeviceAndAppManagementAssignmentTarget* target;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphMobileAppAssignmentSettings* settings;
  
@end
