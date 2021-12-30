// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamGuestSettings()
{
    BOOL _allowCreateUpdateChannels;
    BOOL _allowDeleteChannels;
}
@end

@implementation MSGraphTeamGuestSettings

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

@end
