// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMdmAppConfigKeyType.h"


#import "MSObject.h"

@interface MSGraphAppConfigurationSettingItem : MSObject

@property (nonnull, nonatomic, setter=setAppConfigKey:, getter=appConfigKey) NSString* appConfigKey;
@property (nonnull, nonatomic, setter=setAppConfigKeyType:, getter=appConfigKeyType) MSGraphMdmAppConfigKeyType* appConfigKeyType;
@property (nonnull, nonatomic, setter=setAppConfigKeyValue:, getter=appConfigKeyValue) NSString* appConfigKeyValue;

@end
