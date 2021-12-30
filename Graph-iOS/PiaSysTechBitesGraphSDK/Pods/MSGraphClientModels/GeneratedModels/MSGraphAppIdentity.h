// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAppIdentity : MSObject

@property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setServicePrincipalId:, getter=servicePrincipalId) NSString* servicePrincipalId;
@property (nullable, nonatomic, setter=setServicePrincipalName:, getter=servicePrincipalName) NSString* servicePrincipalName;

@end
