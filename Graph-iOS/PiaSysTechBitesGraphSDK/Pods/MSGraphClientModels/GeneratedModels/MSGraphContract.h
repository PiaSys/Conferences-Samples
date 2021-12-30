// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDirectoryObject.h"

@interface MSGraphContract : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setContractType:, getter=contractType) NSString* contractType;
    @property (nullable, nonatomic, setter=setCustomerId:, getter=customerId) NSString* customerId;
    @property (nullable, nonatomic, setter=setDefaultDomainName:, getter=defaultDomainName) NSString* defaultDomainName;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
  
@end
