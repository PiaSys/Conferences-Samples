// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityProvider()
{
    NSString* _type;
    NSString* _name;
    NSString* _clientId;
    NSString* _clientSecret;
}
@end

@implementation MSGraphIdentityProvider

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityProvider";
    }
    return self;
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

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

- (NSString*) clientId
{
    if([[NSNull null] isEqual:self.dictionary[@"clientId"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientId"];
}

- (void) setClientId: (NSString*) val
{
    self.dictionary[@"clientId"] = val;
}

- (NSString*) clientSecret
{
    if([[NSNull null] isEqual:self.dictionary[@"clientSecret"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientSecret"];
}

- (void) setClientSecret: (NSString*) val
{
    self.dictionary[@"clientSecret"] = val;
}


@end
