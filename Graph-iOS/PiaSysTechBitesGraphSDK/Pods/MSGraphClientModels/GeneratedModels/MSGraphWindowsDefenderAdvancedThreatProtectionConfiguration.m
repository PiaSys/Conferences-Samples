// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsDefenderAdvancedThreatProtectionConfiguration()
{
    BOOL _allowSampleSharing;
    BOOL _enableExpeditedTelemetryReporting;
}
@end

@implementation MSGraphWindowsDefenderAdvancedThreatProtectionConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration";
    }
    return self;
}
- (BOOL) allowSampleSharing
{
    _allowSampleSharing = [self.dictionary[@"allowSampleSharing"] boolValue];
    return _allowSampleSharing;
}

- (void) setAllowSampleSharing: (BOOL) val
{
    _allowSampleSharing = val;
    self.dictionary[@"allowSampleSharing"] = @(val);
}

- (BOOL) enableExpeditedTelemetryReporting
{
    _enableExpeditedTelemetryReporting = [self.dictionary[@"enableExpeditedTelemetryReporting"] boolValue];
    return _enableExpeditedTelemetryReporting;
}

- (void) setEnableExpeditedTelemetryReporting: (BOOL) val
{
    _enableExpeditedTelemetryReporting = val;
    self.dictionary[@"enableExpeditedTelemetryReporting"] = @(val);
}


@end
