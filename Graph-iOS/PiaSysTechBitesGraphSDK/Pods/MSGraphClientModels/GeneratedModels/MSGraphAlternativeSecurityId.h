// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAlternativeSecurityId : MSObject

@property (nonatomic, setter=setType:, getter=type) int32_t type;
@property (nullable, nonatomic, setter=setIdentityProvider:, getter=identityProvider) NSString* identityProvider;
@property (nullable, nonatomic, setter=setKey:, getter=key) NSString* key;

@end
