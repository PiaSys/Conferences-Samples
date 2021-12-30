// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphEntity.h"

@interface MSGraphIdentityProvider : MSGraphEntity

  @property (nullable, nonatomic, setter=setType:, getter=type) NSString* type;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setClientId:, getter=clientId) NSString* clientId;
    @property (nullable, nonatomic, setter=setClientSecret:, getter=clientSecret) NSString* clientSecret;
  
@end
