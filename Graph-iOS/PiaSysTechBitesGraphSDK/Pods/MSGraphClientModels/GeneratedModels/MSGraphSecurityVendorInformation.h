// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSecurityVendorInformation : MSObject

@property (nullable, nonatomic, setter=setProvider:, getter=provider) NSString* provider;
@property (nullable, nonatomic, setter=setProviderVersion:, getter=providerVersion) NSString* providerVersion;
@property (nullable, nonatomic, setter=setSubProvider:, getter=subProvider) NSString* subProvider;
@property (nullable, nonatomic, setter=setVendor:, getter=vendor) NSString* vendor;

@end
