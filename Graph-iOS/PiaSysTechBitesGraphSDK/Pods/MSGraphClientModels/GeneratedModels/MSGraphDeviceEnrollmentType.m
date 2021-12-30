// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceEnrollmentType.h"

@interface MSGraphDeviceEnrollmentType () {
    MSGraphDeviceEnrollmentTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceEnrollmentTypeValue enumValue;
@end

@implementation MSGraphDeviceEnrollmentType

+ (MSGraphDeviceEnrollmentType*) unknown {
    static MSGraphDeviceEnrollmentType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceEnrollmentType alloc] init];
        _unknown.enumValue = MSGraphDeviceEnrollmentTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceEnrollmentType*) userEnrollment {
    static MSGraphDeviceEnrollmentType *_userEnrollment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userEnrollment = [[MSGraphDeviceEnrollmentType alloc] init];
        _userEnrollment.enumValue = MSGraphDeviceEnrollmentTypeUserEnrollment;
    });
    return _userEnrollment;
}
+ (MSGraphDeviceEnrollmentType*) deviceEnrollmentManager {
    static MSGraphDeviceEnrollmentType *_deviceEnrollmentManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceEnrollmentManager = [[MSGraphDeviceEnrollmentType alloc] init];
        _deviceEnrollmentManager.enumValue = MSGraphDeviceEnrollmentTypeDeviceEnrollmentManager;
    });
    return _deviceEnrollmentManager;
}
+ (MSGraphDeviceEnrollmentType*) appleBulkWithUser {
    static MSGraphDeviceEnrollmentType *_appleBulkWithUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _appleBulkWithUser = [[MSGraphDeviceEnrollmentType alloc] init];
        _appleBulkWithUser.enumValue = MSGraphDeviceEnrollmentTypeAppleBulkWithUser;
    });
    return _appleBulkWithUser;
}
+ (MSGraphDeviceEnrollmentType*) appleBulkWithoutUser {
    static MSGraphDeviceEnrollmentType *_appleBulkWithoutUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _appleBulkWithoutUser = [[MSGraphDeviceEnrollmentType alloc] init];
        _appleBulkWithoutUser.enumValue = MSGraphDeviceEnrollmentTypeAppleBulkWithoutUser;
    });
    return _appleBulkWithoutUser;
}
+ (MSGraphDeviceEnrollmentType*) windowsAzureADJoin {
    static MSGraphDeviceEnrollmentType *_windowsAzureADJoin;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsAzureADJoin = [[MSGraphDeviceEnrollmentType alloc] init];
        _windowsAzureADJoin.enumValue = MSGraphDeviceEnrollmentTypeWindowsAzureADJoin;
    });
    return _windowsAzureADJoin;
}
+ (MSGraphDeviceEnrollmentType*) windowsBulkUserless {
    static MSGraphDeviceEnrollmentType *_windowsBulkUserless;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsBulkUserless = [[MSGraphDeviceEnrollmentType alloc] init];
        _windowsBulkUserless.enumValue = MSGraphDeviceEnrollmentTypeWindowsBulkUserless;
    });
    return _windowsBulkUserless;
}
+ (MSGraphDeviceEnrollmentType*) windowsAutoEnrollment {
    static MSGraphDeviceEnrollmentType *_windowsAutoEnrollment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsAutoEnrollment = [[MSGraphDeviceEnrollmentType alloc] init];
        _windowsAutoEnrollment.enumValue = MSGraphDeviceEnrollmentTypeWindowsAutoEnrollment;
    });
    return _windowsAutoEnrollment;
}
+ (MSGraphDeviceEnrollmentType*) windowsBulkAzureDomainJoin {
    static MSGraphDeviceEnrollmentType *_windowsBulkAzureDomainJoin;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsBulkAzureDomainJoin = [[MSGraphDeviceEnrollmentType alloc] init];
        _windowsBulkAzureDomainJoin.enumValue = MSGraphDeviceEnrollmentTypeWindowsBulkAzureDomainJoin;
    });
    return _windowsBulkAzureDomainJoin;
}
+ (MSGraphDeviceEnrollmentType*) windowsCoManagement {
    static MSGraphDeviceEnrollmentType *_windowsCoManagement;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsCoManagement = [[MSGraphDeviceEnrollmentType alloc] init];
        _windowsCoManagement.enumValue = MSGraphDeviceEnrollmentTypeWindowsCoManagement;
    });
    return _windowsCoManagement;
}

+ (MSGraphDeviceEnrollmentType*) UnknownEnumValue {
    static MSGraphDeviceEnrollmentType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceEnrollmentType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceEnrollmentTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceEnrollmentType*) deviceEnrollmentTypeWithEnumValue:(MSGraphDeviceEnrollmentTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceEnrollmentTypeUnknown:
            return [MSGraphDeviceEnrollmentType unknown];
        case MSGraphDeviceEnrollmentTypeUserEnrollment:
            return [MSGraphDeviceEnrollmentType userEnrollment];
        case MSGraphDeviceEnrollmentTypeDeviceEnrollmentManager:
            return [MSGraphDeviceEnrollmentType deviceEnrollmentManager];
        case MSGraphDeviceEnrollmentTypeAppleBulkWithUser:
            return [MSGraphDeviceEnrollmentType appleBulkWithUser];
        case MSGraphDeviceEnrollmentTypeAppleBulkWithoutUser:
            return [MSGraphDeviceEnrollmentType appleBulkWithoutUser];
        case MSGraphDeviceEnrollmentTypeWindowsAzureADJoin:
            return [MSGraphDeviceEnrollmentType windowsAzureADJoin];
        case MSGraphDeviceEnrollmentTypeWindowsBulkUserless:
            return [MSGraphDeviceEnrollmentType windowsBulkUserless];
        case MSGraphDeviceEnrollmentTypeWindowsAutoEnrollment:
            return [MSGraphDeviceEnrollmentType windowsAutoEnrollment];
        case MSGraphDeviceEnrollmentTypeWindowsBulkAzureDomainJoin:
            return [MSGraphDeviceEnrollmentType windowsBulkAzureDomainJoin];
        case MSGraphDeviceEnrollmentTypeWindowsCoManagement:
            return [MSGraphDeviceEnrollmentType windowsCoManagement];
        case MSGraphDeviceEnrollmentTypeEndOfEnum:
        default:
            return [MSGraphDeviceEnrollmentType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceEnrollmentTypeUnknown:
            return @"unknown";
        case MSGraphDeviceEnrollmentTypeUserEnrollment:
            return @"userEnrollment";
        case MSGraphDeviceEnrollmentTypeDeviceEnrollmentManager:
            return @"deviceEnrollmentManager";
        case MSGraphDeviceEnrollmentTypeAppleBulkWithUser:
            return @"appleBulkWithUser";
        case MSGraphDeviceEnrollmentTypeAppleBulkWithoutUser:
            return @"appleBulkWithoutUser";
        case MSGraphDeviceEnrollmentTypeWindowsAzureADJoin:
            return @"windowsAzureADJoin";
        case MSGraphDeviceEnrollmentTypeWindowsBulkUserless:
            return @"windowsBulkUserless";
        case MSGraphDeviceEnrollmentTypeWindowsAutoEnrollment:
            return @"windowsAutoEnrollment";
        case MSGraphDeviceEnrollmentTypeWindowsBulkAzureDomainJoin:
            return @"windowsBulkAzureDomainJoin";
        case MSGraphDeviceEnrollmentTypeWindowsCoManagement:
            return @"windowsCoManagement";
        case MSGraphDeviceEnrollmentTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceEnrollmentTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceEnrollmentType)

- (MSGraphDeviceEnrollmentType*) toMSGraphDeviceEnrollmentType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceEnrollmentType unknown];
    }
    else if([self isEqualToString:@"userEnrollment"])
    {
          return [MSGraphDeviceEnrollmentType userEnrollment];
    }
    else if([self isEqualToString:@"deviceEnrollmentManager"])
    {
          return [MSGraphDeviceEnrollmentType deviceEnrollmentManager];
    }
    else if([self isEqualToString:@"appleBulkWithUser"])
    {
          return [MSGraphDeviceEnrollmentType appleBulkWithUser];
    }
    else if([self isEqualToString:@"appleBulkWithoutUser"])
    {
          return [MSGraphDeviceEnrollmentType appleBulkWithoutUser];
    }
    else if([self isEqualToString:@"windowsAzureADJoin"])
    {
          return [MSGraphDeviceEnrollmentType windowsAzureADJoin];
    }
    else if([self isEqualToString:@"windowsBulkUserless"])
    {
          return [MSGraphDeviceEnrollmentType windowsBulkUserless];
    }
    else if([self isEqualToString:@"windowsAutoEnrollment"])
    {
          return [MSGraphDeviceEnrollmentType windowsAutoEnrollment];
    }
    else if([self isEqualToString:@"windowsBulkAzureDomainJoin"])
    {
          return [MSGraphDeviceEnrollmentType windowsBulkAzureDomainJoin];
    }
    else if([self isEqualToString:@"windowsCoManagement"])
    {
          return [MSGraphDeviceEnrollmentType windowsCoManagement];
    }
    else {
        return [MSGraphDeviceEnrollmentType UnknownEnumValue];
    }
}

@end
