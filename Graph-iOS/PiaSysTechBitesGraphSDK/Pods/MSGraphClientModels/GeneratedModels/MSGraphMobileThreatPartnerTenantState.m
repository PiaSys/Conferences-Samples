// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMobileThreatPartnerTenantState.h"

@interface MSGraphMobileThreatPartnerTenantState () {
    MSGraphMobileThreatPartnerTenantStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMobileThreatPartnerTenantStateValue enumValue;
@end

@implementation MSGraphMobileThreatPartnerTenantState

+ (MSGraphMobileThreatPartnerTenantState*) unavailable {
    static MSGraphMobileThreatPartnerTenantState *_unavailable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unavailable = [[MSGraphMobileThreatPartnerTenantState alloc] init];
        _unavailable.enumValue = MSGraphMobileThreatPartnerTenantStateUnavailable;
    });
    return _unavailable;
}
+ (MSGraphMobileThreatPartnerTenantState*) available {
    static MSGraphMobileThreatPartnerTenantState *_available;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _available = [[MSGraphMobileThreatPartnerTenantState alloc] init];
        _available.enumValue = MSGraphMobileThreatPartnerTenantStateAvailable;
    });
    return _available;
}
+ (MSGraphMobileThreatPartnerTenantState*) enabled {
    static MSGraphMobileThreatPartnerTenantState *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphMobileThreatPartnerTenantState alloc] init];
        _enabled.enumValue = MSGraphMobileThreatPartnerTenantStateEnabled;
    });
    return _enabled;
}
+ (MSGraphMobileThreatPartnerTenantState*) unresponsive {
    static MSGraphMobileThreatPartnerTenantState *_unresponsive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unresponsive = [[MSGraphMobileThreatPartnerTenantState alloc] init];
        _unresponsive.enumValue = MSGraphMobileThreatPartnerTenantStateUnresponsive;
    });
    return _unresponsive;
}

+ (MSGraphMobileThreatPartnerTenantState*) UnknownEnumValue {
    static MSGraphMobileThreatPartnerTenantState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMobileThreatPartnerTenantState alloc] init];
        _unknownValue.enumValue = MSGraphMobileThreatPartnerTenantStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMobileThreatPartnerTenantState*) mobileThreatPartnerTenantStateWithEnumValue:(MSGraphMobileThreatPartnerTenantStateValue)val {

    switch(val)
    {
        case MSGraphMobileThreatPartnerTenantStateUnavailable:
            return [MSGraphMobileThreatPartnerTenantState unavailable];
        case MSGraphMobileThreatPartnerTenantStateAvailable:
            return [MSGraphMobileThreatPartnerTenantState available];
        case MSGraphMobileThreatPartnerTenantStateEnabled:
            return [MSGraphMobileThreatPartnerTenantState enabled];
        case MSGraphMobileThreatPartnerTenantStateUnresponsive:
            return [MSGraphMobileThreatPartnerTenantState unresponsive];
        case MSGraphMobileThreatPartnerTenantStateEndOfEnum:
        default:
            return [MSGraphMobileThreatPartnerTenantState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMobileThreatPartnerTenantStateUnavailable:
            return @"unavailable";
        case MSGraphMobileThreatPartnerTenantStateAvailable:
            return @"available";
        case MSGraphMobileThreatPartnerTenantStateEnabled:
            return @"enabled";
        case MSGraphMobileThreatPartnerTenantStateUnresponsive:
            return @"unresponsive";
        case MSGraphMobileThreatPartnerTenantStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMobileThreatPartnerTenantStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMobileThreatPartnerTenantState)

- (MSGraphMobileThreatPartnerTenantState*) toMSGraphMobileThreatPartnerTenantState{

    if([self isEqualToString:@"unavailable"])
    {
          return [MSGraphMobileThreatPartnerTenantState unavailable];
    }
    else if([self isEqualToString:@"available"])
    {
          return [MSGraphMobileThreatPartnerTenantState available];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphMobileThreatPartnerTenantState enabled];
    }
    else if([self isEqualToString:@"unresponsive"])
    {
          return [MSGraphMobileThreatPartnerTenantState unresponsive];
    }
    else {
        return [MSGraphMobileThreatPartnerTenantState UnknownEnumValue];
    }
}

@end
