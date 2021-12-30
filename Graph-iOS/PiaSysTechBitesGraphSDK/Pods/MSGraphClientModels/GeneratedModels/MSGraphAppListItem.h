// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAppListItem : MSObject

@property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
@property (nullable, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
@property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;

@end
