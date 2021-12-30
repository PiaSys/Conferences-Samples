// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceComplianceDeviceOverview()
{
    int32_t _pendingCount;
    int32_t _notApplicableCount;
    int32_t _successCount;
    int32_t _errorCount;
    int32_t _failedCount;
    NSDate* _lastUpdateDateTime;
    int32_t _configurationVersion;
}
@end

@implementation MSGraphDeviceComplianceDeviceOverview

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceComplianceDeviceOverview";
    }
    return self;
}
- (int32_t) pendingCount
{
    _pendingCount = [self.dictionary[@"pendingCount"] intValue];
    return _pendingCount;
}

- (void) setPendingCount: (int32_t) val
{
    _pendingCount = val;
    self.dictionary[@"pendingCount"] = @(val);
}

- (int32_t) notApplicableCount
{
    _notApplicableCount = [self.dictionary[@"notApplicableCount"] intValue];
    return _notApplicableCount;
}

- (void) setNotApplicableCount: (int32_t) val
{
    _notApplicableCount = val;
    self.dictionary[@"notApplicableCount"] = @(val);
}

- (int32_t) successCount
{
    _successCount = [self.dictionary[@"successCount"] intValue];
    return _successCount;
}

- (void) setSuccessCount: (int32_t) val
{
    _successCount = val;
    self.dictionary[@"successCount"] = @(val);
}

- (int32_t) errorCount
{
    _errorCount = [self.dictionary[@"errorCount"] intValue];
    return _errorCount;
}

- (void) setErrorCount: (int32_t) val
{
    _errorCount = val;
    self.dictionary[@"errorCount"] = @(val);
}

- (int32_t) failedCount
{
    _failedCount = [self.dictionary[@"failedCount"] intValue];
    return _failedCount;
}

- (void) setFailedCount: (int32_t) val
{
    _failedCount = val;
    self.dictionary[@"failedCount"] = @(val);
}

- (NSDate*) lastUpdateDateTime
{
    if(!_lastUpdateDateTime){
        _lastUpdateDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastUpdateDateTime"]];
    }
    return _lastUpdateDateTime;
}

- (void) setLastUpdateDateTime: (NSDate*) val
{
    _lastUpdateDateTime = val;
    self.dictionary[@"lastUpdateDateTime"] = [val ms_toString];
}

- (int32_t) configurationVersion
{
    _configurationVersion = [self.dictionary[@"configurationVersion"] intValue];
    return _configurationVersion;
}

- (void) setConfigurationVersion: (int32_t) val
{
    _configurationVersion = val;
    self.dictionary[@"configurationVersion"] = @(val);
}


@end
