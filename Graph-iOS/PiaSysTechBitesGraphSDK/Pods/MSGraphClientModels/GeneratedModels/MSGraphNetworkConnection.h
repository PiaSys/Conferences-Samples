// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConnectionDirection.h"
#import "MSGraphSecurityNetworkProtocol.h"
#import "MSGraphConnectionStatus.h"


#import "MSObject.h"

@interface MSGraphNetworkConnection : MSObject

@property (nullable, nonatomic, setter=setApplicationName:, getter=applicationName) NSString* applicationName;
@property (nullable, nonatomic, setter=setDestinationAddress:, getter=destinationAddress) NSString* destinationAddress;
@property (nullable, nonatomic, setter=setDestinationDomain:, getter=destinationDomain) NSString* destinationDomain;
@property (nullable, nonatomic, setter=setDestinationPort:, getter=destinationPort) NSString* destinationPort;
@property (nullable, nonatomic, setter=setDestinationUrl:, getter=destinationUrl) NSString* destinationUrl;
@property (nullable, nonatomic, setter=setDirection:, getter=direction) MSGraphConnectionDirection* direction;
@property (nullable, nonatomic, setter=setDomainRegisteredDateTime:, getter=domainRegisteredDateTime) NSDate* domainRegisteredDateTime;
@property (nullable, nonatomic, setter=setLocalDnsName:, getter=localDnsName) NSString* localDnsName;
@property (nullable, nonatomic, setter=setNatDestinationAddress:, getter=natDestinationAddress) NSString* natDestinationAddress;
@property (nullable, nonatomic, setter=setNatDestinationPort:, getter=natDestinationPort) NSString* natDestinationPort;
@property (nullable, nonatomic, setter=setNatSourceAddress:, getter=natSourceAddress) NSString* natSourceAddress;
@property (nullable, nonatomic, setter=setNatSourcePort:, getter=natSourcePort) NSString* natSourcePort;
@property (nullable, nonatomic, setter=setNetworkConnectionProtocol:, getter=networkConnectionProtocol) MSGraphSecurityNetworkProtocol* networkConnectionProtocol;
@property (nullable, nonatomic, setter=setRiskScore:, getter=riskScore) NSString* riskScore;
@property (nullable, nonatomic, setter=setSourceAddress:, getter=sourceAddress) NSString* sourceAddress;
@property (nullable, nonatomic, setter=setSourcePort:, getter=sourcePort) NSString* sourcePort;
@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphConnectionStatus* status;
@property (nullable, nonatomic, setter=setUrlParameters:, getter=urlParameters) NSString* urlParameters;

@end
