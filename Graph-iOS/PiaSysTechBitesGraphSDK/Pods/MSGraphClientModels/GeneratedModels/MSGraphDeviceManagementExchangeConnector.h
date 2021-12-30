// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceManagementExchangeConnectorStatus.h"
#import "MSGraphDeviceManagementExchangeConnectorType.h"


#import "MSGraphEntity.h"

@interface MSGraphDeviceManagementExchangeConnector : MSGraphEntity

  @property (nonnull, nonatomic, setter=setLastSyncDateTime:, getter=lastSyncDateTime) NSDate* lastSyncDateTime;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphDeviceManagementExchangeConnectorStatus* status;
    @property (nullable, nonatomic, setter=setPrimarySmtpAddress:, getter=primarySmtpAddress) NSString* primarySmtpAddress;
    @property (nullable, nonatomic, setter=setServerName:, getter=serverName) NSString* serverName;
    @property (nullable, nonatomic, setter=setConnectorServerName:, getter=connectorServerName) NSString* connectorServerName;
    @property (nonnull, nonatomic, setter=setExchangeConnectorType:, getter=exchangeConnectorType) MSGraphDeviceManagementExchangeConnectorType* exchangeConnectorType;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
    @property (nullable, nonatomic, setter=setExchangeAlias:, getter=exchangeAlias) NSString* exchangeAlias;
    @property (nullable, nonatomic, setter=setExchangeOrganization:, getter=exchangeOrganization) NSString* exchangeOrganization;
  
@end
