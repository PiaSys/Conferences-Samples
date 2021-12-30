// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedDevicePartnerReportedHealthState.h"

@interface MSGraphManagedDevicePartnerReportedHealthState () {
    MSGraphManagedDevicePartnerReportedHealthStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedDevicePartnerReportedHealthStateValue enumValue;
@end

@implementation MSGraphManagedDevicePartnerReportedHealthState

+ (MSGraphManagedDevicePartnerReportedHealthState*) unknown {
    static MSGraphManagedDevicePartnerReportedHealthState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _unknown.enumValue = MSGraphManagedDevicePartnerReportedHealthStateUnknown;
    });
    return _unknown;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) activated {
    static MSGraphManagedDevicePartnerReportedHealthState *_activated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _activated = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _activated.enumValue = MSGraphManagedDevicePartnerReportedHealthStateActivated;
    });
    return _activated;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) deactivated {
    static MSGraphManagedDevicePartnerReportedHealthState *_deactivated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deactivated = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _deactivated.enumValue = MSGraphManagedDevicePartnerReportedHealthStateDeactivated;
    });
    return _deactivated;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) secured {
    static MSGraphManagedDevicePartnerReportedHealthState *_secured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _secured = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _secured.enumValue = MSGraphManagedDevicePartnerReportedHealthStateSecured;
    });
    return _secured;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) lowSeverity {
    static MSGraphManagedDevicePartnerReportedHealthState *_lowSeverity;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lowSeverity = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _lowSeverity.enumValue = MSGraphManagedDevicePartnerReportedHealthStateLowSeverity;
    });
    return _lowSeverity;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) mediumSeverity {
    static MSGraphManagedDevicePartnerReportedHealthState *_mediumSeverity;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediumSeverity = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _mediumSeverity.enumValue = MSGraphManagedDevicePartnerReportedHealthStateMediumSeverity;
    });
    return _mediumSeverity;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) highSeverity {
    static MSGraphManagedDevicePartnerReportedHealthState *_highSeverity;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _highSeverity = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _highSeverity.enumValue = MSGraphManagedDevicePartnerReportedHealthStateHighSeverity;
    });
    return _highSeverity;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) unresponsive {
    static MSGraphManagedDevicePartnerReportedHealthState *_unresponsive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unresponsive = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _unresponsive.enumValue = MSGraphManagedDevicePartnerReportedHealthStateUnresponsive;
    });
    return _unresponsive;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) compromised {
    static MSGraphManagedDevicePartnerReportedHealthState *_compromised;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compromised = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _compromised.enumValue = MSGraphManagedDevicePartnerReportedHealthStateCompromised;
    });
    return _compromised;
}
+ (MSGraphManagedDevicePartnerReportedHealthState*) misconfigured {
    static MSGraphManagedDevicePartnerReportedHealthState *_misconfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _misconfigured = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _misconfigured.enumValue = MSGraphManagedDevicePartnerReportedHealthStateMisconfigured;
    });
    return _misconfigured;
}

+ (MSGraphManagedDevicePartnerReportedHealthState*) UnknownEnumValue {
    static MSGraphManagedDevicePartnerReportedHealthState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedDevicePartnerReportedHealthState alloc] init];
        _unknownValue.enumValue = MSGraphManagedDevicePartnerReportedHealthStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedDevicePartnerReportedHealthState*) managedDevicePartnerReportedHealthStateWithEnumValue:(MSGraphManagedDevicePartnerReportedHealthStateValue)val {

    switch(val)
    {
        case MSGraphManagedDevicePartnerReportedHealthStateUnknown:
            return [MSGraphManagedDevicePartnerReportedHealthState unknown];
        case MSGraphManagedDevicePartnerReportedHealthStateActivated:
            return [MSGraphManagedDevicePartnerReportedHealthState activated];
        case MSGraphManagedDevicePartnerReportedHealthStateDeactivated:
            return [MSGraphManagedDevicePartnerReportedHealthState deactivated];
        case MSGraphManagedDevicePartnerReportedHealthStateSecured:
            return [MSGraphManagedDevicePartnerReportedHealthState secured];
        case MSGraphManagedDevicePartnerReportedHealthStateLowSeverity:
            return [MSGraphManagedDevicePartnerReportedHealthState lowSeverity];
        case MSGraphManagedDevicePartnerReportedHealthStateMediumSeverity:
            return [MSGraphManagedDevicePartnerReportedHealthState mediumSeverity];
        case MSGraphManagedDevicePartnerReportedHealthStateHighSeverity:
            return [MSGraphManagedDevicePartnerReportedHealthState highSeverity];
        case MSGraphManagedDevicePartnerReportedHealthStateUnresponsive:
            return [MSGraphManagedDevicePartnerReportedHealthState unresponsive];
        case MSGraphManagedDevicePartnerReportedHealthStateCompromised:
            return [MSGraphManagedDevicePartnerReportedHealthState compromised];
        case MSGraphManagedDevicePartnerReportedHealthStateMisconfigured:
            return [MSGraphManagedDevicePartnerReportedHealthState misconfigured];
        case MSGraphManagedDevicePartnerReportedHealthStateEndOfEnum:
        default:
            return [MSGraphManagedDevicePartnerReportedHealthState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedDevicePartnerReportedHealthStateUnknown:
            return @"unknown";
        case MSGraphManagedDevicePartnerReportedHealthStateActivated:
            return @"activated";
        case MSGraphManagedDevicePartnerReportedHealthStateDeactivated:
            return @"deactivated";
        case MSGraphManagedDevicePartnerReportedHealthStateSecured:
            return @"secured";
        case MSGraphManagedDevicePartnerReportedHealthStateLowSeverity:
            return @"lowSeverity";
        case MSGraphManagedDevicePartnerReportedHealthStateMediumSeverity:
            return @"mediumSeverity";
        case MSGraphManagedDevicePartnerReportedHealthStateHighSeverity:
            return @"highSeverity";
        case MSGraphManagedDevicePartnerReportedHealthStateUnresponsive:
            return @"unresponsive";
        case MSGraphManagedDevicePartnerReportedHealthStateCompromised:
            return @"compromised";
        case MSGraphManagedDevicePartnerReportedHealthStateMisconfigured:
            return @"misconfigured";
        case MSGraphManagedDevicePartnerReportedHealthStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedDevicePartnerReportedHealthStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedDevicePartnerReportedHealthState)

- (MSGraphManagedDevicePartnerReportedHealthState*) toMSGraphManagedDevicePartnerReportedHealthState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState unknown];
    }
    else if([self isEqualToString:@"activated"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState activated];
    }
    else if([self isEqualToString:@"deactivated"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState deactivated];
    }
    else if([self isEqualToString:@"secured"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState secured];
    }
    else if([self isEqualToString:@"lowSeverity"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState lowSeverity];
    }
    else if([self isEqualToString:@"mediumSeverity"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState mediumSeverity];
    }
    else if([self isEqualToString:@"highSeverity"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState highSeverity];
    }
    else if([self isEqualToString:@"unresponsive"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState unresponsive];
    }
    else if([self isEqualToString:@"compromised"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState compromised];
    }
    else if([self isEqualToString:@"misconfigured"])
    {
          return [MSGraphManagedDevicePartnerReportedHealthState misconfigured];
    }
    else {
        return [MSGraphManagedDevicePartnerReportedHealthState UnknownEnumValue];
    }
}

@end
