// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsTabConfiguration()
{
    NSString* _entityId;
    NSString* _contentUrl;
    NSString* _removeUrl;
    NSString* _websiteUrl;
}
@end

@implementation MSGraphTeamsTabConfiguration

- (NSString*) entityId
{
    if([[NSNull null] isEqual:self.dictionary[@"entityId"]])
    {
        return nil;
    }   
    return self.dictionary[@"entityId"];
}

- (void) setEntityId: (NSString*) val
{
    self.dictionary[@"entityId"] = val;
}

- (NSString*) contentUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"contentUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentUrl"];
}

- (void) setContentUrl: (NSString*) val
{
    self.dictionary[@"contentUrl"] = val;
}

- (NSString*) removeUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"removeUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"removeUrl"];
}

- (void) setRemoveUrl: (NSString*) val
{
    self.dictionary[@"removeUrl"] = val;
}

- (NSString*) websiteUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"websiteUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"websiteUrl"];
}

- (void) setWebsiteUrl: (NSString*) val
{
    self.dictionary[@"websiteUrl"] = val;
}

@end
