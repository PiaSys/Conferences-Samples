// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphProxiedDomain : MSObject

@property (nonnull, nonatomic, setter=setIpAddressOrFQDN:, getter=ipAddressOrFQDN) NSString* ipAddressOrFQDN;
@property (nullable, nonatomic, setter=setProxy:, getter=proxy) NSString* proxy;

@end
