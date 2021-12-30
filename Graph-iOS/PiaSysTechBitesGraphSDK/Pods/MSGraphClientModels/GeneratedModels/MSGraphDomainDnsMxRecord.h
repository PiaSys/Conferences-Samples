// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDomainDnsRecord.h"

@interface MSGraphDomainDnsMxRecord : MSGraphDomainDnsRecord

  @property (nonnull, nonatomic, setter=setMailExchange:, getter=mailExchange) NSString* mailExchange;
    @property (nonatomic, setter=setPreference:, getter=preference) int32_t preference;
  
@end
