// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementPartnerTenantState.h"

@interface MSGraphDeviceManagementPartnerTenantState () {
    MSGraphDeviceManagementPartnerTenantStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementPartnerTenantStateValue enumValue;
@end

@implementation MSGraphDeviceManagementPartnerTenantState

+ (MSGraphDeviceManagementPartnerTenantState*) unknown {
    static MSGraphDeviceManagementPartnerTenantState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _unknown.enumValue = MSGraphDeviceManagementPartnerTenantStateUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceManagementPartnerTenantState*) unavailable {
    static MSGraphDeviceManagementPartnerTenantState *_unavailable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unavailable = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _unavailable.enumValue = MSGraphDeviceManagementPartnerTenantStateUnavailable;
    });
    return _unavailable;
}
+ (MSGraphDeviceManagementPartnerTenantState*) enabled {
    static MSGraphDeviceManagementPartnerTenantState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _enabled.enumValue = MSGraphDeviceManagementPartnerTenantStateEnabled;
    });
    return _enabled;
}
+ (MSGraphDeviceManagementPartnerTenantState*) terminated {
    static MSGraphDeviceManagementPartnerTenantState *_terminated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _terminated = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _terminated.enumValue = MSGraphDeviceManagementPartnerTenantStateTerminated;
    });
    return _terminated;
}
+ (MSGraphDeviceManagementPartnerTenantState*) rejected {
    static MSGraphDeviceManagementPartnerTenantState *_rejected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rejected = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _rejected.enumValue = MSGraphDeviceManagementPartnerTenantStateRejected;
    });
    return _rejected;
}
+ (MSGraphDeviceManagementPartnerTenantState*) unresponsive {
    static MSGraphDeviceManagementPartnerTenantState *_unresponsive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unresponsive = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _unresponsive.enumValue = MSGraphDeviceManagementPartnerTenantStateUnresponsive;
    });
    return _unresponsive;
}

+ (MSGraphDeviceManagementPartnerTenantState*) UnknownEnumValue {
    static MSGraphDeviceManagementPartnerTenantState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementPartnerTenantState alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementPartnerTenantStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementPartnerTenantState*) deviceManagementPartnerTenantStateWithEnumValue:(MSGraphDeviceManagementPartnerTenantStateValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementPartnerTenantStateUnknown:
            return [MSGraphDeviceManagementPartnerTenantState unknown];
        case MSGraphDeviceManagementPartnerTenantStateUnavailable:
            return [MSGraphDeviceManagementPartnerTenantState unavailable];
        case MSGraphDeviceManagementPartnerTenantStateEnabled:
            return [MSGraphDeviceManagementPartnerTenantState enabled];
        case MSGraphDeviceManagementPartnerTenantStateTerminated:
            return [MSGraphDeviceManagementPartnerTenantState terminated];
        case MSGraphDeviceManagementPartnerTenantStateRejected:
            return [MSGraphDeviceManagementPartnerTenantState rejected];
        case MSGraphDeviceManagementPartnerTenantStateUnresponsive:
            return [MSGraphDeviceManagementPartnerTenantState unresponsive];
        case MSGraphDeviceManagementPartnerTenantStateEndOfEnum:
        default:
            return [MSGraphDeviceManagementPartnerTenantState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementPartnerTenantStateUnknown:
            return @"unknown";
        case MSGraphDeviceManagementPartnerTenantStateUnavailable:
            return @"unavailable";
        case MSGraphDeviceManagementPartnerTenantStateEnabled:
            return @"enabled";
        case MSGraphDeviceManagementPartnerTenantStateTerminated:
            return @"terminated";
        case MSGraphDeviceManagementPartnerTenantStateRejected:
            return @"rejected";
        case MSGraphDeviceManagementPartnerTenantStateUnresponsive:
            return @"unresponsive";
        case MSGraphDeviceManagementPartnerTenantStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementPartnerTenantStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementPartnerTenantState)

- (MSGraphDeviceManagementPartnerTenantState*) toMSGraphDeviceManagementPartnerTenantState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceManagementPartnerTenantState unknown];
    }
    else if([self isEqualToString:@"unavailable"])
    {
          return [MSGraphDeviceManagementPartnerTenantState unavailable];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphDeviceManagementPartnerTenantState enabled];
    }
    else if([self isEqualToString:@"terminated"])
    {
          return [MSGraphDeviceManagementPartnerTenantState terminated];
    }
    else if([self isEqualToString:@"rejected"])
    {
          return [MSGraphDeviceManagementPartnerTenantState rejected];
    }
    else if([self isEqualToString:@"unresponsive"])
    {
          return [MSGraphDeviceManagementPartnerTenantState unresponsive];
    }
    else {
        return [MSGraphDeviceManagementPartnerTenantState UnknownEnumValue];
    }
}

@end
