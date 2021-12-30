// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsAppDefinition()
{
    NSString* _teamsAppId;
    NSString* _displayName;
    NSString* _version;
}
@end

@implementation MSGraphTeamsAppDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsAppDefinition";
    }
    return self;
}
- (NSString*) teamsAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"teamsAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamsAppId"];
}

- (void) setTeamsAppId: (NSString*) val
{
    self.dictionary[@"teamsAppId"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}


@end
