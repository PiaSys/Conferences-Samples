// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceExchangeAccessStateSummary()
{
    int32_t _allowedDeviceCount;
    int32_t _blockedDeviceCount;
    int32_t _quarantinedDeviceCount;
    int32_t _unknownDeviceCount;
    int32_t _unavailableDeviceCount;
}
@end

@implementation MSGraphDeviceExchangeAccessStateSummary

- (int32_t) allowedDeviceCount
{
    _allowedDeviceCount = [self.dictionary[@"allowedDeviceCount"] intValue];
    return _allowedDeviceCount;
}

- (void) setAllowedDeviceCount: (int32_t) val
{
    _allowedDeviceCount = val;
    self.dictionary[@"allowedDeviceCount"] = @(val);
}

- (int32_t) blockedDeviceCount
{
    _blockedDeviceCount = [self.dictionary[@"blockedDeviceCount"] intValue];
    return _blockedDeviceCount;
}

- (void) setBlockedDeviceCount: (int32_t) val
{
    _blockedDeviceCount = val;
    self.dictionary[@"blockedDeviceCount"] = @(val);
}

- (int32_t) quarantinedDeviceCount
{
    _quarantinedDeviceCount = [self.dictionary[@"quarantinedDeviceCount"] intValue];
    return _quarantinedDeviceCount;
}

- (void) setQuarantinedDeviceCount: (int32_t) val
{
    _quarantinedDeviceCount = val;
    self.dictionary[@"quarantinedDeviceCount"] = @(val);
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

- (int32_t) unavailableDeviceCount
{
    _unavailableDeviceCount = [self.dictionary[@"unavailableDeviceCount"] intValue];
    return _unavailableDeviceCount;
}

- (void) setUnavailableDeviceCount: (int32_t) val
{
    _unavailableDeviceCount = val;
    self.dictionary[@"unavailableDeviceCount"] = @(val);
}

@end
