// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindowsDefenderAdvancedThreatProtectionConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAllowSampleSharing:, getter=allowSampleSharing) BOOL allowSampleSharing;
    @property (nonatomic, setter=setEnableExpeditedTelemetryReporting:, getter=enableExpeditedTelemetryReporting) BOOL enableExpeditedTelemetryReporting;
  
@end
