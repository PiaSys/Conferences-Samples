// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOnPremisesConditionalAccessSettings()
{
    BOOL _enabled;
    NSArray* _includedGroups;
    NSArray* _excludedGroups;
    BOOL _overrideDefaultRule;
}
@end

@implementation MSGraphOnPremisesConditionalAccessSettings

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.onPremisesConditionalAccessSettings";
    }
    return self;
}
- (BOOL) enabled
{
    _enabled = [self.dictionary[@"enabled"] boolValue];
    return _enabled;
}

- (void) setEnabled: (BOOL) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (NSArray*) includedGroups
{
    return self.dictionary[@"includedGroups"];
}

- (void) setIncludedGroups: (NSArray*) val
{
    self.dictionary[@"includedGroups"] = val;
}

- (NSArray*) excludedGroups
{
    return self.dictionary[@"excludedGroups"];
}

- (void) setExcludedGroups: (NSArray*) val
{
    self.dictionary[@"excludedGroups"] = val;
}

- (BOOL) overrideDefaultRule
{
    _overrideDefaultRule = [self.dictionary[@"overrideDefaultRule"] boolValue];
    return _overrideDefaultRule;
}

- (void) setOverrideDefaultRule: (BOOL) val
{
    _overrideDefaultRule = val;
    self.dictionary[@"overrideDefaultRule"] = @(val);
}


@end
