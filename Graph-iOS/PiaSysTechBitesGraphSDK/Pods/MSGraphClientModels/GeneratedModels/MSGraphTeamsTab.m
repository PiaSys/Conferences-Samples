// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsTab()
{
    NSString* _displayName;
    NSString* _webUrl;
    MSGraphTeamsTabConfiguration* _configuration;
    MSGraphTeamsApp* _teamsApp;
}
@end

@implementation MSGraphTeamsTab

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsTab";
    }
    return self;
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

- (MSGraphTeamsTabConfiguration*) configuration
{
    if(!_configuration){
        _configuration = [[MSGraphTeamsTabConfiguration alloc] initWithDictionary: self.dictionary[@"configuration"]];
    }
    return _configuration;
}

- (void) setConfiguration: (MSGraphTeamsTabConfiguration*) val
{
    _configuration = val;
    self.dictionary[@"configuration"] = val;
}

- (MSGraphTeamsApp*) teamsApp
{
    if(!_teamsApp){
        _teamsApp = [[MSGraphTeamsApp alloc] initWithDictionary: self.dictionary[@"teamsApp"]];
    }
    return _teamsApp;
}

- (void) setTeamsApp: (MSGraphTeamsApp*) val
{
    _teamsApp = val;
    self.dictionary[@"teamsApp"] = val;
}


@end
