// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementExchangeConnectorTypeValue){

	MSGraphDeviceManagementExchangeConnectorTypeOnPremises = 0,
	MSGraphDeviceManagementExchangeConnectorTypeHosted = 1,
	MSGraphDeviceManagementExchangeConnectorTypeServiceToService = 2,
	MSGraphDeviceManagementExchangeConnectorTypeDedicated = 3,
    MSGraphDeviceManagementExchangeConnectorTypeEndOfEnum
};

@interface MSGraphDeviceManagementExchangeConnectorType : NSObject

+(MSGraphDeviceManagementExchangeConnectorType*) onPremises;
+(MSGraphDeviceManagementExchangeConnectorType*) hosted;
+(MSGraphDeviceManagementExchangeConnectorType*) serviceToService;
+(MSGraphDeviceManagementExchangeConnectorType*) dedicated;

+(MSGraphDeviceManagementExchangeConnectorType*) UnknownEnumValue;

+(MSGraphDeviceManagementExchangeConnectorType*) deviceManagementExchangeConnectorTypeWithEnumValue:(MSGraphDeviceManagementExchangeConnectorTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementExchangeConnectorTypeValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementExchangeConnectorType)

- (MSGraphDeviceManagementExchangeConnectorType*) toMSGraphDeviceManagementExchangeConnectorType;

@end
