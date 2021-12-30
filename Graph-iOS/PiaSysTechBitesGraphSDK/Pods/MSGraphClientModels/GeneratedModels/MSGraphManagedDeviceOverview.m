// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedDeviceOverview()
{
    int32_t _enrolledDeviceCount;
    int32_t _mdmEnrolledCount;
    int32_t _dualEnrolledDeviceCount;
    MSGraphDeviceOperatingSystemSummary* _deviceOperatingSystemSummary;
    MSGraphDeviceExchangeAccessStateSummary* _deviceExchangeAccessStateSummary;
}
@end

@implementation MSGraphManagedDeviceOverview

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedDeviceOverview";
    }
    return self;
}
- (int32_t) enrolledDeviceCount
{
    _enrolledDeviceCount = [self.dictionary[@"enrolledDeviceCount"] intValue];
    return _enrolledDeviceCount;
}

- (void) setEnrolledDeviceCount: (int32_t) val
{
    _enrolledDeviceCount = val;
    self.dictionary[@"enrolledDeviceCount"] = @(val);
}

- (int32_t) mdmEnrolledCount
{
    _mdmEnrolledCount = [self.dictionary[@"mdmEnrolledCount"] intValue];
    return _mdmEnrolledCount;
}

- (void) setMdmEnrolledCount: (int32_t) val
{
    _mdmEnrolledCount = val;
    self.dictionary[@"mdmEnrolledCount"] = @(val);
}

- (int32_t) dualEnrolledDeviceCount
{
    _dualEnrolledDeviceCount = [self.dictionary[@"dualEnrolledDeviceCount"] intValue];
    return _dualEnrolledDeviceCount;
}

- (void) setDualEnrolledDeviceCount: (int32_t) val
{
    _dualEnrolledDeviceCount = val;
    self.dictionary[@"dualEnrolledDeviceCount"] = @(val);
}

- (MSGraphDeviceOperatingSystemSummary*) deviceOperatingSystemSummary
{
    if(!_deviceOperatingSystemSummary){
        _deviceOperatingSystemSummary = [[MSGraphDeviceOperatingSystemSummary alloc] initWithDictionary: self.dictionary[@"deviceOperatingSystemSummary"]];
    }
    return _deviceOperatingSystemSummary;
}

- (void) setDeviceOperatingSystemSummary: (MSGraphDeviceOperatingSystemSummary*) val
{
    _deviceOperatingSystemSummary = val;
    self.dictionary[@"deviceOperatingSystemSummary"] = val;
}

- (MSGraphDeviceExchangeAccessStateSummary*) deviceExchangeAccessStateSummary
{
    if(!_deviceExchangeAccessStateSummary){
        _deviceExchangeAccessStateSummary = [[MSGraphDeviceExchangeAccessStateSummary alloc] initWithDictionary: self.dictionary[@"deviceExchangeAccessStateSummary"]];
    }
    return _deviceExchangeAccessStateSummary;
}

- (void) setDeviceExchangeAccessStateSummary: (MSGraphDeviceExchangeAccessStateSummary*) val
{
    _deviceExchangeAccessStateSummary = val;
    self.dictionary[@"deviceExchangeAccessStateSummary"] = val;
}


@end
