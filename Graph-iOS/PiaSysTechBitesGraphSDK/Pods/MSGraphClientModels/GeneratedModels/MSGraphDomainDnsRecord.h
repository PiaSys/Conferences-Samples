// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphDomainDnsRecord : MSGraphEntity

  @property (nonatomic, setter=setIsOptional:, getter=isOptional) BOOL isOptional;
    @property (nonnull, nonatomic, setter=setLabel:, getter=label) NSString* label;
    @property (nullable, nonatomic, setter=setRecordType:, getter=recordType) NSString* recordType;
    @property (nonnull, nonatomic, setter=setSupportedService:, getter=supportedService) NSString* supportedService;
    @property (nonatomic, setter=setTtl:, getter=ttl) int32_t ttl;
  
@end
