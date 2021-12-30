// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTeamsTabConfiguration : MSObject

@property (nullable, nonatomic, setter=setEntityId:, getter=entityId) NSString* entityId;
@property (nullable, nonatomic, setter=setContentUrl:, getter=contentUrl) NSString* contentUrl;
@property (nullable, nonatomic, setter=setRemoveUrl:, getter=removeUrl) NSString* removeUrl;
@property (nullable, nonatomic, setter=setWebsiteUrl:, getter=websiteUrl) NSString* websiteUrl;

@end
