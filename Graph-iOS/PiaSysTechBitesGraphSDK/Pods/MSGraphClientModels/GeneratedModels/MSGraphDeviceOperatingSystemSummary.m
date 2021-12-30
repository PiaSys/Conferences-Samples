// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceOperatingSystemSummary()
{
    int32_t _androidCount;
    int32_t _iosCount;
    int32_t _macOSCount;
    int32_t _windowsMobileCount;
    int32_t _windowsCount;
    int32_t _unknownCount;
}
@end

@implementation MSGraphDeviceOperatingSystemSummary

- (int32_t) androidCount
{
    _androidCount = [self.dictionary[@"androidCount"] intValue];
    return _androidCount;
}

- (void) setAndroidCount: (int32_t) val
{
    _androidCount = val;
    self.dictionary[@"androidCount"] = @(val);
}

- (int32_t) iosCount
{
    _iosCount = [self.dictionary[@"iosCount"] intValue];
    return _iosCount;
}

- (void) setIosCount: (int32_t) val
{
    _iosCount = val;
    self.dictionary[@"iosCount"] = @(val);
}

- (int32_t) macOSCount
{
    _macOSCount = [self.dictionary[@"macOSCount"] intValue];
    return _macOSCount;
}

- (void) setMacOSCount: (int32_t) val
{
    _macOSCount = val;
    self.dictionary[@"macOSCount"] = @(val);
}

- (int32_t) windowsMobileCount
{
    _windowsMobileCount = [self.dictionary[@"windowsMobileCount"] intValue];
    return _windowsMobileCount;
}

- (void) setWindowsMobileCount: (int32_t) val
{
    _windowsMobileCount = val;
    self.dictionary[@"windowsMobileCount"] = @(val);
}

- (int32_t) windowsCount
{
    _windowsCount = [self.dictionary[@"windowsCount"] intValue];
    return _windowsCount;
}

- (void) setWindowsCount: (int32_t) val
{
    _windowsCount = val;
    self.dictionary[@"windowsCount"] = @(val);
}

- (int32_t) unknownCount
{
    _unknownCount = [self.dictionary[@"unknownCount"] intValue];
    return _unknownCount;
}

- (void) setUnknownCount: (int32_t) val
{
    _unknownCount = val;
    self.dictionary[@"unknownCount"] = @(val);
}

@end
