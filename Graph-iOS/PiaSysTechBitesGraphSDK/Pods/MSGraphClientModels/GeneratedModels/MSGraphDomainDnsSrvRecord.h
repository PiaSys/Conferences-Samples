// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDomainDnsRecord.h"

@interface MSGraphDomainDnsSrvRecord : MSGraphDomainDnsRecord

  @property (nullable, nonatomic, setter=setNameTarget:, getter=nameTarget) NSString* nameTarget;
    @property (nonatomic, setter=setPort:, getter=port) int32_t port;
    @property (nonatomic, setter=setPriority:, getter=priority) int32_t priority;
    @property (nullable, nonatomic, setter=setDomainDnsSrvRecordProtocol:, getter=domainDnsSrvRecordProtocol) NSString* domainDnsSrvRecordProtocol;
    @property (nullable, nonatomic, setter=setService:, getter=service) NSString* service;
    @property (nonatomic, setter=setWeight:, getter=weight) int32_t weight;
  
@end
