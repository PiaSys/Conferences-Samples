// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceEnrollmentConfiguration.h"

@interface MSGraphDeviceEnrollmentLimitConfiguration : MSGraphDeviceEnrollmentConfiguration

  @property (nonatomic, setter=setLimit:, getter=limit) int32_t limit;
  
@end
