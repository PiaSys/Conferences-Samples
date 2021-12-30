// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEBookInstallSummary()
{
    int32_t _installedDeviceCount;
    int32_t _failedDeviceCount;
    int32_t _notInstalledDeviceCount;
    int32_t _installedUserCount;
    int32_t _failedUserCount;
    int32_t _notInstalledUserCount;
}
@end

@implementation MSGraphEBookInstallSummary

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.eBookInstallSummary";
    }
    return self;
}
- (int32_t) installedDeviceCount
{
    _installedDeviceCount = [self.dictionary[@"installedDeviceCount"] intValue];
    return _installedDeviceCount;
}

- (void) setInstalledDeviceCount: (int32_t) val
{
    _installedDeviceCount = val;
    self.dictionary[@"installedDeviceCount"] = @(val);
}

- (int32_t) failedDeviceCount
{
    _failedDeviceCount = [self.dictionary[@"failedDeviceCount"] intValue];
    return _failedDeviceCount;
}

- (void) setFailedDeviceCount: (int32_t) val
{
    _failedDeviceCount = val;
    self.dictionary[@"failedDeviceCount"] = @(val);
}

- (int32_t) notInstalledDeviceCount
{
    _notInstalledDeviceCount = [self.dictionary[@"notInstalledDeviceCount"] intValue];
    return _notInstalledDeviceCount;
}

- (void) setNotInstalledDeviceCount: (int32_t) val
{
    _notInstalledDeviceCount = val;
    self.dictionary[@"notInstalledDeviceCount"] = @(val);
}

- (int32_t) installedUserCount
{
    _installedUserCount = [self.dictionary[@"installedUserCount"] intValue];
    return _installedUserCount;
}

- (void) setInstalledUserCount: (int32_t) val
{
    _installedUserCount = val;
    self.dictionary[@"installedUserCount"] = @(val);
}

- (int32_t) failedUserCount
{
    _failedUserCount = [self.dictionary[@"failedUserCount"] intValue];
    return _failedUserCount;
}

- (void) setFailedUserCount: (int32_t) val
{
    _failedUserCount = val;
    self.dictionary[@"failedUserCount"] = @(val);
}

- (int32_t) notInstalledUserCount
{
    _notInstalledUserCount = [self.dictionary[@"notInstalledUserCount"] intValue];
    return _notInstalledUserCount;
}

- (void) setNotInstalledUserCount: (int32_t) val
{
    _notInstalledUserCount = val;
    self.dictionary[@"notInstalledUserCount"] = @(val);
}


@end
