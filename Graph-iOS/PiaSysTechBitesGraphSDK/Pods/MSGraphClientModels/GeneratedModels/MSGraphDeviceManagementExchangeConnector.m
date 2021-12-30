// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementExchangeConnector()
{
    NSDate* _lastSyncDateTime;
    MSGraphDeviceManagementExchangeConnectorStatus* _status;
    NSString* _primarySmtpAddress;
    NSString* _serverName;
    NSString* _connectorServerName;
    MSGraphDeviceManagementExchangeConnectorType* _exchangeConnectorType;
    NSString* _version;
    NSString* _exchangeAlias;
    NSString* _exchangeOrganization;
}
@end

@implementation MSGraphDeviceManagementExchangeConnector

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagementExchangeConnector";
    }
    return self;
}
- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (MSGraphDeviceManagementExchangeConnectorStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphDeviceManagementExchangeConnectorStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphDeviceManagementExchangeConnectorStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) primarySmtpAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"primarySmtpAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"primarySmtpAddress"];
}

- (void) setPrimarySmtpAddress: (NSString*) val
{
    self.dictionary[@"primarySmtpAddress"] = val;
}

- (NSString*) serverName
{
    if([[NSNull null] isEqual:self.dictionary[@"serverName"]])
    {
        return nil;
    }   
    return self.dictionary[@"serverName"];
}

- (void) setServerName: (NSString*) val
{
    self.dictionary[@"serverName"] = val;
}

- (NSString*) connectorServerName
{
    if([[NSNull null] isEqual:self.dictionary[@"connectorServerName"]])
    {
        return nil;
    }   
    return self.dictionary[@"connectorServerName"];
}

- (void) setConnectorServerName: (NSString*) val
{
    self.dictionary[@"connectorServerName"] = val;
}

- (MSGraphDeviceManagementExchangeConnectorType*) exchangeConnectorType
{
    if(!_exchangeConnectorType){
        _exchangeConnectorType = [self.dictionary[@"exchangeConnectorType"] toMSGraphDeviceManagementExchangeConnectorType];
    }
    return _exchangeConnectorType;
}

- (void) setExchangeConnectorType: (MSGraphDeviceManagementExchangeConnectorType*) val
{
    _exchangeConnectorType = val;
    self.dictionary[@"exchangeConnectorType"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}

- (NSString*) exchangeAlias
{
    if([[NSNull null] isEqual:self.dictionary[@"exchangeAlias"]])
    {
        return nil;
    }   
    return self.dictionary[@"exchangeAlias"];
}

- (void) setExchangeAlias: (NSString*) val
{
    self.dictionary[@"exchangeAlias"] = val;
}

- (NSString*) exchangeOrganization
{
    if([[NSNull null] isEqual:self.dictionary[@"exchangeOrganization"]])
    {
        return nil;
    }   
    return self.dictionary[@"exchangeOrganization"];
}

- (void) setExchangeOrganization: (NSString*) val
{
    self.dictionary[@"exchangeOrganization"] = val;
}


@end
