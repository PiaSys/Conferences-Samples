// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamMemberSettings()
{
    BOOL _allowCreateUpdateChannels;
    BOOL _allowDeleteChannels;
    BOOL _allowAddRemoveApps;
    BOOL _allowCreateUpdateRemoveTabs;
    BOOL _allowCreateUpdateRemoveConnectors;
}
@end

@implementation MSGraphTeamMemberSettings

- (BOOL) allowCreateUpdateChannels
{
    _allowCreateUpdateChannels = [self.dictionary[@"allowCreateUpdateChannels"] boolValue];
    return _allowCreateUpdateChannels;
}

- (void) setAllowCreateUpdateChannels: (BOOL) val
{
    _allowCreateUpdateChannels = val;
    self.dictionary[@"allowCreateUpdateChannels"] = @(val);
}

- (BOOL) allowDeleteChannels
{
    _allowDeleteChannels = [self.dictionary[@"allowDeleteChannels"] boolValue];
    return _allowDeleteChannels;
}

- (void) setAllowDeleteChannels: (BOOL) val
{
    _allowDeleteChannels = val;
    self.dictionary[@"allowDeleteChannels"] = @(val);
}

- (BOOL) allowAddRemoveApps
{
    _allowAddRemoveApps = [self.dictionary[@"allowAddRemoveApps"] boolValue];
    return _allowAddRemoveApps;
}

- (void) setAllowAddRemoveApps: (BOOL) val
{
    _allowAddRemoveApps = val;
    self.dictionary[@"allowAddRemoveApps"] = @(val);
}

- (BOOL) allowCreateUpdateRemoveTabs
{
    _allowCreateUpdateRemoveTabs = [self.dictionary[@"allowCreateUpdateRemoveTabs"] boolValue];
    return _allowCreateUpdateRemoveTabs;
}

- (void) setAllowCreateUpdateRemoveTabs: (BOOL) val
{
    _allowCreateUpdateRemoveTabs = val;
    self.dictionary[@"allowCreateUpdateRemoveTabs"] = @(val);
}

- (BOOL) allowCreateUpdateRemoveConnectors
{
    _allowCreateUpdateRemoveConnectors = [self.dictionary[@"allowCreateUpdateRemoveConnectors"] boolValue];
    return _allowCreateUpdateRemoveConnectors;
}

- (void) setAllowCreateUpdateRemoveConnectors: (BOOL) val
{
    _allowCreateUpdateRemoveConnectors = val;
    self.dictionary[@"allowCreateUpdateRemoveConnectors"] = @(val);
}

@end
