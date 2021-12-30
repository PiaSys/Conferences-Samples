// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsAppInstallation()
{
    MSGraphTeamsApp* _teamsApp;
    MSGraphTeamsAppDefinition* _teamsAppDefinition;
}
@end

@implementation MSGraphTeamsAppInstallation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsAppInstallation";
    }
    return self;
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

- (MSGraphTeamsAppDefinition*) teamsAppDefinition
{
    if(!_teamsAppDefinition){
        _teamsAppDefinition = [[MSGraphTeamsAppDefinition alloc] initWithDictionary: self.dictionary[@"teamsAppDefinition"]];
    }
    return _teamsAppDefinition;
}

- (void) setTeamsAppDefinition: (MSGraphTeamsAppDefinition*) val
{
    _teamsAppDefinition = val;
    self.dictionary[@"teamsAppDefinition"] = val;
}


@end
