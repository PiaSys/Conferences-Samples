// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserSettings()
{
    BOOL _contributionToContentDiscoveryDisabled;
    BOOL _contributionToContentDiscoveryAsOrganizationDisabled;
}
@end

@implementation MSGraphUserSettings

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.userSettings";
    }
    return self;
}
- (BOOL) contributionToContentDiscoveryDisabled
{
    _contributionToContentDiscoveryDisabled = [self.dictionary[@"contributionToContentDiscoveryDisabled"] boolValue];
    return _contributionToContentDiscoveryDisabled;
}

- (void) setContributionToContentDiscoveryDisabled: (BOOL) val
{
    _contributionToContentDiscoveryDisabled = val;
    self.dictionary[@"contributionToContentDiscoveryDisabled"] = @(val);
}

- (BOOL) contributionToContentDiscoveryAsOrganizationDisabled
{
    _contributionToContentDiscoveryAsOrganizationDisabled = [self.dictionary[@"contributionToContentDiscoveryAsOrganizationDisabled"] boolValue];
    return _contributionToContentDiscoveryAsOrganizationDisabled;
}

- (void) setContributionToContentDiscoveryAsOrganizationDisabled: (BOOL) val
{
    _contributionToContentDiscoveryAsOrganizationDisabled = val;
    self.dictionary[@"contributionToContentDiscoveryAsOrganizationDisabled"] = @(val);
}


@end
