// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExchangeConnectorStatusValue){

	MSGraphDeviceManagementExchangeConnectorStatusNone = 0,
	MSGraphDeviceManagementExchangeConnectorStatusConnectionPending = 1,
	MSGraphDeviceManagementExchangeConnectorStatusConnected = 2,
	MSGraphDeviceManagementExchangeConnectorStatusDisconnected = 3,
    MSGraphDeviceManagementExchangeConnectorStatusEndOfEnum
};

@interface MSGraphDeviceManagementExchangeConnectorStatus : NSObject

+(MSGraphDeviceManagementExchangeConnectorStatus*) none;
+(MSGraphDeviceManagementExchangeConnectorStatus*) connectionPending;
+(MSGraphDeviceManagementExchangeConnectorStatus*) connected;
+(MSGraphDeviceManagementExchangeConnectorStatus*) disconnected;

+(MSGraphDeviceManagementExchangeConnectorStatus*) UnknownEnumValue;

+(MSGraphDeviceManagementExchangeConnectorStatus*) deviceManagementExchangeConnectorStatusWithEnumValue:(MSGraphDeviceManagementExchangeConnectorStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExchangeConnectorStatusValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExchangeConnectorStatus)

- (MSGraphDeviceManagementExchangeConnectorStatus*) toMSGraphDeviceManagementExchangeConnectorStatus;

@end
