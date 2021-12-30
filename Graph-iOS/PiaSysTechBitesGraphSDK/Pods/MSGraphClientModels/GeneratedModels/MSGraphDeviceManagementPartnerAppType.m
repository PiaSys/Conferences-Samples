// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementPartnerAppType.h"

@interface MSGraphDeviceManagementPartnerAppType () {
    MSGraphDeviceManagementPartnerAppTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementPartnerAppTypeValue enumValue;
@end

@implementation MSGraphDeviceManagementPartnerAppType

+ (MSGraphDeviceManagementPartnerAppType*) unknown {
    static MSGraphDeviceManagementPartnerAppType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceManagementPartnerAppType alloc] init];
        _unknown.enumValue = MSGraphDeviceManagementPartnerAppTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceManagementPartnerAppType*) singleTenantApp {
    static MSGraphDeviceManagementPartnerAppType *_singleTenantApp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singleTenantApp = [[MSGraphDeviceManagementPartnerAppType alloc] init];
        _singleTenantApp.enumValue = MSGraphDeviceManagementPartnerAppTypeSingleTenantApp;
    });
    return _singleTenantApp;
}
+ (MSGraphDeviceManagementPartnerAppType*) multiTenantApp {
    static MSGraphDeviceManagementPartnerAppType *_multiTenantApp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _multiTenantApp = [[MSGraphDeviceManagementPartnerAppType alloc] init];
        _multiTenantApp.enumValue = MSGraphDeviceManagementPartnerAppTypeMultiTenantApp;
    });
    return _multiTenantApp;
}

+ (MSGraphDeviceManagementPartnerAppType*) UnknownEnumValue {
    static MSGraphDeviceManagementPartnerAppType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementPartnerAppType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementPartnerAppTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementPartnerAppType*) deviceManagementPartnerAppTypeWithEnumValue:(MSGraphDeviceManagementPartnerAppTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementPartnerAppTypeUnknown:
            return [MSGraphDeviceManagementPartnerAppType unknown];
        case MSGraphDeviceManagementPartnerAppTypeSingleTenantApp:
            return [MSGraphDeviceManagementPartnerAppType singleTenantApp];
        case MSGraphDeviceManagementPartnerAppTypeMultiTenantApp:
            return [MSGraphDeviceManagementPartnerAppType multiTenantApp];
        case MSGraphDeviceManagementPartnerAppTypeEndOfEnum:
        default:
            return [MSGraphDeviceManagementPartnerAppType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementPartnerAppTypeUnknown:
            return @"unknown";
        case MSGraphDeviceManagementPartnerAppTypeSingleTenantApp:
            return @"singleTenantApp";
        case MSGraphDeviceManagementPartnerAppTypeMultiTenantApp:
            return @"multiTenantApp";
        case MSGraphDeviceManagementPartnerAppTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementPartnerAppTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementPartnerAppType)

- (MSGraphDeviceManagementPartnerAppType*) toMSGraphDeviceManagementPartnerAppType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceManagementPartnerAppType unknown];
    }
    else if([self isEqualToString:@"singleTenantApp"])
    {
          return [MSGraphDeviceManagementPartnerAppType singleTenantApp];
    }
    else if([self isEqualToString:@"multiTenantApp"])
    {
          return [MSGraphDeviceManagementPartnerAppType multiTenantApp];
    }
    else {
        return [MSGraphDeviceManagementPartnerAppType UnknownEnumValue];
    }
}

@end
