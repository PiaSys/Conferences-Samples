// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphGroupLifecyclePolicy()
{
    int32_t _groupLifetimeInDays;
    NSString* _managedGroupTypes;
    NSString* _alternateNotificationEmails;
}
@end

@implementation MSGraphGroupLifecyclePolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.groupLifecyclePolicy";
    }
    return self;
}
- (int32_t) groupLifetimeInDays
{
    _groupLifetimeInDays = [self.dictionary[@"groupLifetimeInDays"] intValue];
    return _groupLifetimeInDays;
}

- (void) setGroupLifetimeInDays: (int32_t) val
{
    _groupLifetimeInDays = val;
    self.dictionary[@"groupLifetimeInDays"] = @(val);
}

- (NSString*) managedGroupTypes
{
    if([[NSNull null] isEqual:self.dictionary[@"managedGroupTypes"]])
    {
        return nil;
    }   
    return self.dictionary[@"managedGroupTypes"];
}

- (void) setManagedGroupTypes: (NSString*) val
{
    self.dictionary[@"managedGroupTypes"] = val;
}

- (NSString*) alternateNotificationEmails
{
    if([[NSNull null] isEqual:self.dictionary[@"alternateNotificationEmails"]])
    {
        return nil;
    }   
    return self.dictionary[@"alternateNotificationEmails"];
}

- (void) setAlternateNotificationEmails: (NSString*) val
{
    self.dictionary[@"alternateNotificationEmails"] = val;
}


@end
