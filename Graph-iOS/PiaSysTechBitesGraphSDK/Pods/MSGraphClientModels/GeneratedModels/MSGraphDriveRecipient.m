// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDriveRecipient()
{
    NSString* _alias;
    NSString* _email;
    NSString* _objectId;
}
@end

@implementation MSGraphDriveRecipient

- (NSString*) alias
{
    if([[NSNull null] isEqual:self.dictionary[@"alias"]])
    {
        return nil;
    }   
    return self.dictionary[@"alias"];
}

- (void) setAlias: (NSString*) val
{
    self.dictionary[@"alias"] = val;
}

- (NSString*) email
{
    if([[NSNull null] isEqual:self.dictionary[@"email"]])
    {
        return nil;
    }   
    return self.dictionary[@"email"];
}

- (void) setEmail: (NSString*) val
{
    self.dictionary[@"email"] = val;
}

- (NSString*) objectId
{
    if([[NSNull null] isEqual:self.dictionary[@"objectId"]])
    {
        return nil;
    }   
    return self.dictionary[@"objectId"];
}

- (void) setObjectId: (NSString*) val
{
    self.dictionary[@"objectId"] = val;
}

@end
