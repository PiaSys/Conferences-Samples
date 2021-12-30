// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIosHomeScreenItem, MSGraphIosHomeScreenPage, MSGraphIosNotificationSettings; 


#import "MSGraphAppleDeviceFeaturesConfigurationBase.h"

@interface MSGraphIosDeviceFeaturesConfiguration : MSGraphAppleDeviceFeaturesConfigurationBase

  @property (nullable, nonatomic, setter=setAssetTagTemplate:, getter=assetTagTemplate) NSString* assetTagTemplate;
    @property (nullable, nonatomic, setter=setLockScreenFootnote:, getter=lockScreenFootnote) NSString* lockScreenFootnote;
    @property (nullable, nonatomic, setter=setHomeScreenDockIcons:, getter=homeScreenDockIcons) NSArray* homeScreenDockIcons;
    @property (nullable, nonatomic, setter=setHomeScreenPages:, getter=homeScreenPages) NSArray* homeScreenPages;
    @property (nullable, nonatomic, setter=setNotificationSettings:, getter=notificationSettings) NSArray* notificationSettings;
  
@end
