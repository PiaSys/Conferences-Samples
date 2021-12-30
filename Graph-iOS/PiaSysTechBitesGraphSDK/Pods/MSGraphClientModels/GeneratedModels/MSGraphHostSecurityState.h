// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphHostSecurityState : MSObject

@property (nullable, nonatomic, setter=setFqdn:, getter=fqdn) NSString* fqdn;
@property (nonatomic, setter=setIsAzureAdJoined:, getter=isAzureAdJoined) BOOL isAzureAdJoined;
@property (nonatomic, setter=setIsAzureAdRegistered:, getter=isAzureAdRegistered) BOOL isAzureAdRegistered;
@property (nonatomic, setter=setIsHybridAzureDomainJoined:, getter=isHybridAzureDomainJoined) BOOL isHybridAzureDomainJoined;
@property (nullable, nonatomic, setter=setNetBiosName:, getter=netBiosName) NSString* netBiosName;
@property (nullable, nonatomic, setter=setOs:, getter=os) NSString* os;
@property (nullable, nonatomic, setter=setPrivateIpAddress:, getter=privateIpAddress) NSString* privateIpAddress;
@property (nullable, nonatomic, setter=setPublicIpAddress:, getter=publicIpAddress) NSString* publicIpAddress;
@property (nullable, nonatomic, setter=setRiskScore:, getter=riskScore) NSString* riskScore;

@end
