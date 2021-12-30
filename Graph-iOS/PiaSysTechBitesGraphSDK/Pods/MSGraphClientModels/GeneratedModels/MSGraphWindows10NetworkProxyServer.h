// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphWindows10NetworkProxyServer : MSObject

@property (nonnull, nonatomic, setter=setAddress:, getter=address) NSString* address;
@property (nullable, nonatomic, setter=setExceptions:, getter=exceptions) NSArray* exceptions;
@property (nonatomic, setter=setUseForLocalAddresses:, getter=useForLocalAddresses) BOOL useForLocalAddresses;

@end
