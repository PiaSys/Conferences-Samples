// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDomainDnsRecord.h"

@interface MSGraphDomainDnsCnameRecord : MSGraphDomainDnsRecord

  @property (nullable, nonatomic, setter=setCanonicalName:, getter=canonicalName) NSString* canonicalName;
  
@end
