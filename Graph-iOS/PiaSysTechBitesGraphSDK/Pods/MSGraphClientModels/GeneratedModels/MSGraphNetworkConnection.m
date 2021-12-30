// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphNetworkConnection()
{
    NSString* _applicationName;
    NSString* _destinationAddress;
    NSString* _destinationDomain;
    NSString* _destinationPort;
    NSString* _destinationUrl;
    MSGraphConnectionDirection* _direction;
    NSDate* _domainRegisteredDateTime;
    NSString* _localDnsName;
    NSString* _natDestinationAddress;
    NSString* _natDestinationPort;
    NSString* _natSourceAddress;
    NSString* _natSourcePort;
    MSGraphSecurityNetworkProtocol* _networkConnectionProtocol;
    NSString* _riskScore;
    NSString* _sourceAddress;
    NSString* _sourcePort;
    MSGraphConnectionStatus* _status;
    NSString* _urlParameters;
}
@end

@implementation MSGraphNetworkConnection

- (NSString*) applicationName
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationName"];
}

- (void) setApplicationName: (NSString*) val
{
    self.dictionary[@"applicationName"] = val;
}

- (NSString*) destinationAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationAddress"];
}

- (void) setDestinationAddress: (NSString*) val
{
    self.dictionary[@"destinationAddress"] = val;
}

- (NSString*) destinationDomain
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationDomain"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationDomain"];
}

- (void) setDestinationDomain: (NSString*) val
{
    self.dictionary[@"destinationDomain"] = val;
}

- (NSString*) destinationPort
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationPort"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationPort"];
}

- (void) setDestinationPort: (NSString*) val
{
    self.dictionary[@"destinationPort"] = val;
}

- (NSString*) destinationUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"destinationUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"destinationUrl"];
}

- (void) setDestinationUrl: (NSString*) val
{
    self.dictionary[@"destinationUrl"] = val;
}

- (MSGraphConnectionDirection*) direction
{
    if(!_direction){
        _direction = [self.dictionary[@"direction"] toMSGraphConnectionDirection];
    }
    return _direction;
}

- (void) setDirection: (MSGraphConnectionDirection*) val
{
    _direction = val;
    self.dictionary[@"direction"] = val;
}

- (NSDate*) domainRegisteredDateTime
{
    if(!_domainRegisteredDateTime){
        _domainRegisteredDateTime = [NSDate ms_dateFromString: self.dictionary[@"domainRegisteredDateTime"]];
    }
    return _domainRegisteredDateTime;
}

- (void) setDomainRegisteredDateTime: (NSDate*) val
{
    _domainRegisteredDateTime = val;
    self.dictionary[@"domainRegisteredDateTime"] = [val ms_toString];
}

- (NSString*) localDnsName
{
    if([[NSNull null] isEqual:self.dictionary[@"localDnsName"]])
    {
        return nil;
    }   
    return self.dictionary[@"localDnsName"];
}

- (void) setLocalDnsName: (NSString*) val
{
    self.dictionary[@"localDnsName"] = val;
}

- (NSString*) natDestinationAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"natDestinationAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"natDestinationAddress"];
}

- (void) setNatDestinationAddress: (NSString*) val
{
    self.dictionary[@"natDestinationAddress"] = val;
}

- (NSString*) natDestinationPort
{
    if([[NSNull null] isEqual:self.dictionary[@"natDestinationPort"]])
    {
        return nil;
    }   
    return self.dictionary[@"natDestinationPort"];
}

- (void) setNatDestinationPort: (NSString*) val
{
    self.dictionary[@"natDestinationPort"] = val;
}

- (NSString*) natSourceAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"natSourceAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"natSourceAddress"];
}

- (void) setNatSourceAddress: (NSString*) val
{
    self.dictionary[@"natSourceAddress"] = val;
}

- (NSString*) natSourcePort
{
    if([[NSNull null] isEqual:self.dictionary[@"natSourcePort"]])
    {
        return nil;
    }   
    return self.dictionary[@"natSourcePort"];
}

- (void) setNatSourcePort: (NSString*) val
{
    self.dictionary[@"natSourcePort"] = val;
}

- (MSGraphSecurityNetworkProtocol*) networkConnectionProtocol
{
    if(!_networkConnectionProtocol){
        _networkConnectionProtocol = [self.dictionary[@"protocol"] toMSGraphSecurityNetworkProtocol];
    }
    return _networkConnectionProtocol;
}

- (void) setNetworkConnectionProtocol: (MSGraphSecurityNetworkProtocol*) val
{
    _networkConnectionProtocol = val;
    self.dictionary[@"protocol"] = val;
}

- (NSString*) riskScore
{
    if([[NSNull null] isEqual:self.dictionary[@"riskScore"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskScore"];
}

- (void) setRiskScore: (NSString*) val
{
    self.dictionary[@"riskScore"] = val;
}

- (NSString*) sourceAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceAddress"];
}

- (void) setSourceAddress: (NSString*) val
{
    self.dictionary[@"sourceAddress"] = val;
}

- (NSString*) sourcePort
{
    if([[NSNull null] isEqual:self.dictionary[@"sourcePort"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourcePort"];
}

- (void) setSourcePort: (NSString*) val
{
    self.dictionary[@"sourcePort"] = val;
}

- (MSGraphConnectionStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphConnectionStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphConnectionStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) urlParameters
{
    if([[NSNull null] isEqual:self.dictionary[@"urlParameters"]])
    {
        return nil;
    }   
    return self.dictionary[@"urlParameters"];
}

- (void) setUrlParameters: (NSString*) val
{
    self.dictionary[@"urlParameters"] = val;
}

@end
