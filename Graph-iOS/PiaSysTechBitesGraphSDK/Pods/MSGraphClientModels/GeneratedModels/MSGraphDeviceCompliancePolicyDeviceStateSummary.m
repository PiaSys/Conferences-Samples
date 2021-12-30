// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceCompliancePolicyDeviceStateSummary()
{
    int32_t _inGracePeriodCount;
    int32_t _configManagerCount;
    int32_t _unknownDeviceCount;
    int32_t _notApplicableDeviceCount;
    int32_t _compliantDeviceCount;
    int32_t _remediatedDeviceCount;
    int32_t _nonCompliantDeviceCount;
    int32_t _errorDeviceCount;
    int32_t _conflictDeviceCount;
}
@end

@implementation MSGraphDeviceCompliancePolicyDeviceStateSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceCompliancePolicyDeviceStateSummary";
    }
    return self;
}
- (int32_t) inGracePeriodCount
{
    _inGracePeriodCount = [self.dictionary[@"inGracePeriodCount"] intValue];
    return _inGracePeriodCount;
}

- (void) setInGracePeriodCount: (int32_t) val
{
    _inGracePeriodCount = val;
    self.dictionary[@"inGracePeriodCount"] = @(val);
}

- (int32_t) configManagerCount
{
    _configManagerCount = [self.dictionary[@"configManagerCount"] intValue];
    return _configManagerCount;
}

- (void) setConfigManagerCount: (int32_t) val
{
    _configManagerCount = val;
    self.dictionary[@"configManagerCount"] = @(val);
}

- (int32_t) unknownDeviceCount
{
    _unknownDeviceCount = [self.dictionary[@"unknownDeviceCount"] intValue];
    return _unknownDeviceCount;
}

- (void) setUnknownDeviceCount: (int32_t) val
{
    _unknownDeviceCount = val;
    self.dictionary[@"unknownDeviceCount"] = @(val);
}

- (int32_t) notApplicableDeviceCount
{
    _notApplicableDeviceCount = [self.dictionary[@"notApplicableDeviceCount"] intValue];
    return _notApplicableDeviceCount;
}

- (void) setNotApplicableDeviceCount: (int32_t) val
{
    _notApplicableDeviceCount = val;
    self.dictionary[@"notApplicableDeviceCount"] = @(val);
}

- (int32_t) compliantDeviceCount
{
    _compliantDeviceCount = [self.dictionary[@"compliantDeviceCount"] intValue];
    return _compliantDeviceCount;
}

- (void) setCompliantDeviceCount: (int32_t) val
{
    _compliantDeviceCount = val;
    self.dictionary[@"compliantDeviceCount"] = @(val);
}

- (int32_t) remediatedDeviceCount
{
    _remediatedDeviceCount = [self.dictionary[@"remediatedDeviceCount"] intValue];
    return _remediatedDeviceCount;
}

- (void) setRemediatedDeviceCount: (int32_t) val
{
    _remediatedDeviceCount = val;
    self.dictionary[@"remediatedDeviceCount"] = @(val);
}

- (int32_t) nonCompliantDeviceCount
{
    _nonCompliantDeviceCount = [self.dictionary[@"nonCompliantDeviceCount"] intValue];
    return _nonCompliantDeviceCount;
}

- (void) setNonCompliantDeviceCount: (int32_t) val
{
    _nonCompliantDeviceCount = val;
    self.dictionary[@"nonCompliantDeviceCount"] = @(val);
}

- (int32_t) errorDeviceCount
{
    _errorDeviceCount = [self.dictionary[@"errorDeviceCount"] intValue];
    return _errorDeviceCount;
}

- (void) setErrorDeviceCount: (int32_t) val
{
    _errorDeviceCount = val;
    self.dictionary[@"errorDeviceCount"] = @(val);
}

- (int32_t) conflictDeviceCount
{
    _conflictDeviceCount = [self.dictionary[@"conflictDeviceCount"] intValue];
    return _conflictDeviceCount;
}

- (void) setConflictDeviceCount: (int32_t) val
{
    _conflictDeviceCount = val;
    self.dictionary[@"conflictDeviceCount"] = @(val);
}


@end
