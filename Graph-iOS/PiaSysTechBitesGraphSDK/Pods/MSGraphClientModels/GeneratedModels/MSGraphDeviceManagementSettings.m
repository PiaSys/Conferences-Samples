// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementSettings()
{
    int32_t _deviceComplianceCheckinThresholdDays;
    BOOL _isScheduledActionEnabled;
    BOOL _secureByDefault;
}
@end

@implementation MSGraphDeviceManagementSettings

- (int32_t) deviceComplianceCheckinThresholdDays
{
    _deviceComplianceCheckinThresholdDays = [self.dictionary[@"deviceComplianceCheckinThresholdDays"] intValue];
    return _deviceComplianceCheckinThresholdDays;
}

- (void) setDeviceComplianceCheckinThresholdDays: (int32_t) val
{
    _deviceComplianceCheckinThresholdDays = val;
    self.dictionary[@"deviceComplianceCheckinThresholdDays"] = @(val);
}

- (BOOL) isScheduledActionEnabled
{
    _isScheduledActionEnabled = [self.dictionary[@"isScheduledActionEnabled"] boolValue];
    return _isScheduledActionEnabled;
}

- (void) setIsScheduledActionEnabled: (BOOL) val
{
    _isScheduledActionEnabled = val;
    self.dictionary[@"isScheduledActionEnabled"] = @(val);
}

- (BOOL) secureByDefault
{
    _secureByDefault = [self.dictionary[@"secureByDefault"] boolValue];
    return _secureByDefault;
}

- (void) setSecureByDefault: (BOOL) val
{
    _secureByDefault = val;
    self.dictionary[@"secureByDefault"] = @(val);
}

@end
