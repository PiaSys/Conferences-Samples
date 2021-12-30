// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphOmaSetting; 


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphAndroidWorkProfileCustomConfiguration : MSGraphDeviceConfiguration

  @property (nullable, nonatomic, setter=setOmaSettings:, getter=omaSettings) NSArray* omaSettings;
  
@end
