// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExchangeConnectorSyncTypeValue){

	MSGraphDeviceManagementExchangeConnectorSyncTypeFullSync = 0,
	MSGraphDeviceManagementExchangeConnectorSyncTypeDeltaSync = 1,
    MSGraphDeviceManagementExchangeConnectorSyncTypeEndOfEnum
};

@interface MSGraphDeviceManagementExchangeConnectorSyncType : NSObject

+(MSGraphDeviceManagementExchangeConnectorSyncType*) fullSync;
+(MSGraphDeviceManagementExchangeConnectorSyncType*) deltaSync;

+(MSGraphDeviceManagementExchangeConnectorSyncType*) UnknownEnumValue;

+(MSGraphDeviceManagementExchangeConnectorSyncType*) deviceManagementExchangeConnectorSyncTypeWithEnumValue:(MSGraphDeviceManagementExchangeConnectorSyncTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExchangeConnectorSyncTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExchangeConnectorSyncType)

- (MSGraphDeviceManagementExchangeConnectorSyncType*) toMSGraphDeviceManagementExchangeConnectorSyncType;

@end
