// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharepointIds()
{
    NSString* _listId;
    NSString* _listItemId;
    NSString* _listItemUniqueId;
    NSString* _siteId;
    NSString* _siteUrl;
    NSString* _webId;
}
@end

@implementation MSGraphSharepointIds

- (NSString*) listId
{
    if([[NSNull null] isEqual:self.dictionary[@"listId"]])
    {
        return nil;
    }   
    return self.dictionary[@"listId"];
}

- (void) setListId: (NSString*) val
{
    self.dictionary[@"listId"] = val;
}

- (NSString*) listItemId
{
    if([[NSNull null] isEqual:self.dictionary[@"listItemId"]])
    {
        return nil;
    }   
    return self.dictionary[@"listItemId"];
}

- (void) setListItemId: (NSString*) val
{
    self.dictionary[@"listItemId"] = val;
}

- (NSString*) listItemUniqueId
{
    if([[NSNull null] isEqual:self.dictionary[@"listItemUniqueId"]])
    {
        return nil;
    }   
    return self.dictionary[@"listItemUniqueId"];
}

- (void) setListItemUniqueId: (NSString*) val
{
    self.dictionary[@"listItemUniqueId"] = val;
}

- (NSString*) siteId
{
    if([[NSNull null] isEqual:self.dictionary[@"siteId"]])
    {
        return nil;
    }   
    return self.dictionary[@"siteId"];
}

- (void) setSiteId: (NSString*) val
{
    self.dictionary[@"siteId"] = val;
}

- (NSString*) siteUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"siteUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"siteUrl"];
}

- (void) setSiteUrl: (NSString*) val
{
    self.dictionary[@"siteUrl"] = val;
}

- (NSString*) webId
{
    if([[NSNull null] isEqual:self.dictionary[@"webId"]])
    {
        return nil;
    }   
    return self.dictionary[@"webId"];
}

- (void) setWebId: (NSString*) val
{
    self.dictionary[@"webId"] = val;
}

@end
