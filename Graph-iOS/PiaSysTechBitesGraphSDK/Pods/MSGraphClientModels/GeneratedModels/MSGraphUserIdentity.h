// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphUserIdentity : MSObject

@property (nullable, nonatomic, setter=setUserIdentityId:, getter=userIdentityId) NSString* userIdentityId;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setIpAddress:, getter=ipAddress) NSString* ipAddress;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
