// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphProxiedDomain; 


#import "MSObject.h"

@interface MSGraphWindowsInformationProtectionProxiedDomainCollection : MSObject

@property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setProxiedDomains:, getter=proxiedDomains) NSArray* proxiedDomains;

@end
