// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceEnrollmentPlatformRestrictionsConfiguration()
{
    MSGraphDeviceEnrollmentPlatformRestriction* _iosRestriction;
    MSGraphDeviceEnrollmentPlatformRestriction* _windowsRestriction;
    MSGraphDeviceEnrollmentPlatformRestriction* _windowsMobileRestriction;
    MSGraphDeviceEnrollmentPlatformRestriction* _androidRestriction;
    MSGraphDeviceEnrollmentPlatformRestriction* _macOSRestriction;
}
@end

@implementation MSGraphDeviceEnrollmentPlatformRestrictionsConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceEnrollmentPlatformRestrictionsConfiguration";
    }
    return self;
}
- (MSGraphDeviceEnrollmentPlatformRestriction*) iosRestriction
{
    if(!_iosRestriction){
        _iosRestriction = [[MSGraphDeviceEnrollmentPlatformRestriction alloc] initWithDictionary: self.dictionary[@"iosRestriction"]];
    }
    return _iosRestriction;
}

- (void) setIosRestriction: (MSGraphDeviceEnrollmentPlatformRestriction*) val
{
    _iosRestriction = val;
    self.dictionary[@"iosRestriction"] = val;
}

- (MSGraphDeviceEnrollmentPlatformRestriction*) windowsRestriction
{
    if(!_windowsRestriction){
        _windowsRestriction = [[MSGraphDeviceEnrollmentPlatformRestriction alloc] initWithDictionary: self.dictionary[@"windowsRestriction"]];
    }
    return _windowsRestriction;
}

- (void) setWindowsRestriction: (MSGraphDeviceEnrollmentPlatformRestriction*) val
{
    _windowsRestriction = val;
    self.dictionary[@"windowsRestriction"] = val;
}

- (MSGraphDeviceEnrollmentPlatformRestriction*) windowsMobileRestriction
{
    if(!_windowsMobileRestriction){
        _windowsMobileRestriction = [[MSGraphDeviceEnrollmentPlatformRestriction alloc] initWithDictionary: self.dictionary[@"windowsMobileRestriction"]];
    }
    return _windowsMobileRestriction;
}

- (void) setWindowsMobileRestriction: (MSGraphDeviceEnrollmentPlatformRestriction*) val
{
    _windowsMobileRestriction = val;
    self.dictionary[@"windowsMobileRestriction"] = val;
}

- (MSGraphDeviceEnrollmentPlatformRestriction*) androidRestriction
{
    if(!_androidRestriction){
        _androidRestriction = [[MSGraphDeviceEnrollmentPlatformRestriction alloc] initWithDictionary: self.dictionary[@"androidRestriction"]];
    }
    return _androidRestriction;
}

- (void) setAndroidRestriction: (MSGraphDeviceEnrollmentPlatformRestriction*) val
{
    _androidRestriction = val;
    self.dictionary[@"androidRestriction"] = val;
}

- (MSGraphDeviceEnrollmentPlatformRestriction*) macOSRestriction
{
    if(!_macOSRestriction){
        _macOSRestriction = [[MSGraphDeviceEnrollmentPlatformRestriction alloc] initWithDictionary: self.dictionary[@"macOSRestriction"]];
    }
    return _macOSRestriction;
}

- (void) setMacOSRestriction: (MSGraphDeviceEnrollmentPlatformRestriction*) val
{
    _macOSRestriction = val;
    self.dictionary[@"macOSRestriction"] = val;
}


@end
