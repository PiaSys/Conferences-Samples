// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows10EnterpriseModernAppManagementConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setUninstallBuiltInApps:, getter=uninstallBuiltInApps) BOOL uninstallBuiltInApps;
  
@end
