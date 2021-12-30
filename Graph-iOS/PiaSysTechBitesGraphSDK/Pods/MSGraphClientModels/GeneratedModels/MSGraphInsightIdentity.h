// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphInsightIdentity : MSObject

@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setInsightIdentityId:, getter=insightIdentityId) NSString* insightIdentityId;
@property (nullable, nonatomic, setter=setAddress:, getter=address) NSString* address;

@end
