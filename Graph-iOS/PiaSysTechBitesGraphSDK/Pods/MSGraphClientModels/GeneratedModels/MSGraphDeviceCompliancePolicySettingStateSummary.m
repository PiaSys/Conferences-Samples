// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceCompliancePolicySettingStateSummary()
{
    NSString* _setting;
    NSString* _settingName;
    MSGraphPolicyPlatformType* _platformType;
    int32_t _unknownDeviceCount;
    int32_t _notApplicableDeviceCount;
    int32_t _compliantDeviceCount;
    int32_t _remediatedDeviceCount;
    int32_t _nonCompliantDeviceCount;
    int32_t _errorDeviceCount;
    int32_t _conflictDeviceCount;
    NSArray* _deviceComplianceSettingStates;
}
@end

@implementation MSGraphDeviceCompliancePolicySettingStateSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceCompliancePolicySettingStateSummary";
    }
    return self;
}
- (NSString*) setting
{
    if([[NSNull null] isEqual:self.dictionary[@"setting"]])
    {
        return nil;
    }   
    return self.dictionary[@"setting"];
}

- (void) setSetting: (NSString*) val
{
    self.dictionary[@"setting"] = val;
}

- (NSString*) settingName
{
    if([[NSNull null] isEqual:self.dictionary[@"settingName"]])
    {
        return nil;
    }   
    return self.dictionary[@"settingName"];
}

- (void) setSettingName: (NSString*) val
{
    self.dictionary[@"settingName"] = val;
}

- (MSGraphPolicyPlatformType*) platformType
{
    if(!_platformType){
        _platformType = [self.dictionary[@"platformType"] toMSGraphPolicyPlatformType];
    }
    return _platformType;
}

- (void) setPlatformType: (MSGraphPolicyPlatformType*) val
{
    _platformType = val;
    self.dictionary[@"platformType"] = val;
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

- (NSArray*) deviceComplianceSettingStates
{
    if(!_deviceComplianceSettingStates){
        
    NSMutableArray *deviceComplianceSettingStatesResult = [NSMutableArray array];
    NSArray *deviceComplianceSettingStates = self.dictionary[@"deviceComplianceSettingStates"];

    if ([deviceComplianceSettingStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceComplianceSettingState in deviceComplianceSettingStates){
            [deviceComplianceSettingStatesResult addObject:tempDeviceComplianceSettingState];
        }
    }

    _deviceComplianceSettingStates = deviceComplianceSettingStatesResult;
        
    }
    return _deviceComplianceSettingStates;
}

- (void) setDeviceComplianceSettingStates: (NSArray*) val
{
    _deviceComplianceSettingStates = val;
    self.dictionary[@"deviceComplianceSettingStates"] = val;
}


@end
