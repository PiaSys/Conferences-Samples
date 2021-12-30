// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSoftwareUpdateStatusSummary()
{
    NSString* _displayName;
    int32_t _compliantDeviceCount;
    int32_t _nonCompliantDeviceCount;
    int32_t _remediatedDeviceCount;
    int32_t _errorDeviceCount;
    int32_t _unknownDeviceCount;
    int32_t _conflictDeviceCount;
    int32_t _notApplicableDeviceCount;
    int32_t _compliantUserCount;
    int32_t _nonCompliantUserCount;
    int32_t _remediatedUserCount;
    int32_t _errorUserCount;
    int32_t _unknownUserCount;
    int32_t _conflictUserCount;
    int32_t _notApplicableUserCount;
}
@end

@implementation MSGraphSoftwareUpdateStatusSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.softwareUpdateStatusSummary";
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

- (int32_t) compliantUserCount
{
    _compliantUserCount = [self.dictionary[@"compliantUserCount"] intValue];
    return _compliantUserCount;
}

- (void) setCompliantUserCount: (int32_t) val
{
    _compliantUserCount = val;
    self.dictionary[@"compliantUserCount"] = @(val);
}

- (int32_t) nonCompliantUserCount
{
    _nonCompliantUserCount = [self.dictionary[@"nonCompliantUserCount"] intValue];
    return _nonCompliantUserCount;
}

- (void) setNonCompliantUserCount: (int32_t) val
{
    _nonCompliantUserCount = val;
    self.dictionary[@"nonCompliantUserCount"] = @(val);
}

- (int32_t) remediatedUserCount
{
    _remediatedUserCount = [self.dictionary[@"remediatedUserCount"] intValue];
    return _remediatedUserCount;
}

- (void) setRemediatedUserCount: (int32_t) val
{
    _remediatedUserCount = val;
    self.dictionary[@"remediatedUserCount"] = @(val);
}

- (int32_t) errorUserCount
{
    _errorUserCount = [self.dictionary[@"errorUserCount"] intValue];
    return _errorUserCount;
}

- (void) setErrorUserCount: (int32_t) val
{
    _errorUserCount = val;
    self.dictionary[@"errorUserCount"] = @(val);
}

- (int32_t) unknownUserCount
{
    _unknownUserCount = [self.dictionary[@"unknownUserCount"] intValue];
    return _unknownUserCount;
}

- (void) setUnknownUserCount: (int32_t) val
{
    _unknownUserCount = val;
    self.dictionary[@"unknownUserCount"] = @(val);
}

- (int32_t) conflictUserCount
{
    _conflictUserCount = [self.dictionary[@"conflictUserCount"] intValue];
    return _conflictUserCount;
}

- (void) setConflictUserCount: (int32_t) val
{
    _conflictUserCount = val;
    self.dictionary[@"conflictUserCount"] = @(val);
}

- (int32_t) notApplicableUserCount
{
    _notApplicableUserCount = [self.dictionary[@"notApplicableUserCount"] intValue];
    return _notApplicableUserCount;
}

- (void) setNotApplicableUserCount: (int32_t) val
{
    _notApplicableUserCount = val;
    self.dictionary[@"notApplicableUserCount"] = @(val);
}


@end
