// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSharepointIds : MSObject

@property (nullable, nonatomic, setter=setListId:, getter=listId) NSString* listId;
@property (nullable, nonatomic, setter=setListItemId:, getter=listItemId) NSString* listItemId;
@property (nullable, nonatomic, setter=setListItemUniqueId:, getter=listItemUniqueId) NSString* listItemUniqueId;
@property (nullable, nonatomic, setter=setSiteId:, getter=siteId) NSString* siteId;
@property (nullable, nonatomic, setter=setSiteUrl:, getter=siteUrl) NSString* siteUrl;
@property (nullable, nonatomic, setter=setWebId:, getter=webId) NSString* webId;

@end
