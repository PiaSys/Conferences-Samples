// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphResourceReference()
{
    NSString* _webUrl;
    NSString* _resourceReferenceId;
    NSString* _type;
}
@end

@implementation MSGraphResourceReference

- (NSString*) webUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"webUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"webUrl"];
}

- (void) setWebUrl: (NSString*) val
{
    self.dictionary[@"webUrl"] = val;
}

- (NSString*) resourceReferenceId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setResourceReferenceId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}

@end
