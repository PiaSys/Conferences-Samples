// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAppConfigurationSettingItem; 


#import "MSGraphManagedDeviceMobileAppConfiguration.h"

@interface MSGraphIosMobileAppConfiguration : MSGraphManagedDeviceMobileAppConfiguration

  @property (nullable, nonatomic, setter=setEncodedSettingXml:, getter=encodedSettingXml) NSString* encodedSettingXml;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) NSArray* settings;
  
@end
