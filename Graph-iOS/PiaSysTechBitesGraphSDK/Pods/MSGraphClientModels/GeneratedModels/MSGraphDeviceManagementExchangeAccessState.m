// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExchangeAccessState.h"

@interface MSGraphDeviceManagementExchangeAccessState () {
    MSGraphDeviceManagementExchangeAccessStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExchangeAccessStateValue enumValue;
@end

@implementation MSGraphDeviceManagementExchangeAccessState

+ (MSGraphDeviceManagementExchangeAccessState*) none {
    static MSGraphDeviceManagementExchangeAccessState *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _none.enumValue = MSGraphDeviceManagementExchangeAccessStateNone;
    });
    return _none;
}
+ (MSGraphDeviceManagementExchangeAccessState*) unknown {
    static MSGraphDeviceManagementExchangeAccessState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _unknown.enumValue = MSGraphDeviceManagementExchangeAccessStateUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceManagementExchangeAccessState*) allowed {
    static MSGraphDeviceManagementExchangeAccessState *_allowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowed = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _allowed.enumValue = MSGraphDeviceManagementExchangeAccessStateAllowed;
    });
    return _allowed;
}
+ (MSGraphDeviceManagementExchangeAccessState*) blocked {
    static MSGraphDeviceManagementExchangeAccessState *_blocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blocked = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _blocked.enumValue = MSGraphDeviceManagementExchangeAccessStateBlocked;
    });
    return _blocked;
}
+ (MSGraphDeviceManagementExchangeAccessState*) quarantined {
    static MSGraphDeviceManagementExchangeAccessState *_quarantined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _quarantined = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _quarantined.enumValue = MSGraphDeviceManagementExchangeAccessStateQuarantined;
    });
    return _quarantined;
}

+ (MSGraphDeviceManagementExchangeAccessState*) UnknownEnumValue {
    static MSGraphDeviceManagementExchangeAccessState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExchangeAccessState alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExchangeAccessStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExchangeAccessState*) deviceManagementExchangeAccessStateWithEnumValue:(MSGraphDeviceManagementExchangeAccessStateValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExchangeAccessStateNone:
            return [MSGraphDeviceManagementExchangeAccessState none];
        case MSGraphDeviceManagementExchangeAccessStateUnknown:
            return [MSGraphDeviceManagementExchangeAccessState unknown];
        case MSGraphDeviceManagementExchangeAccessStateAllowed:
            return [MSGraphDeviceManagementExchangeAccessState allowed];
        case MSGraphDeviceManagementExchangeAccessStateBlocked:
            return [MSGraphDeviceManagementExchangeAccessState blocked];
        case MSGraphDeviceManagementExchangeAccessStateQuarantined:
            return [MSGraphDeviceManagementExchangeAccessState quarantined];
        case MSGraphDeviceManagementExchangeAccessStateEndOfEnum:
        default:
            return [MSGraphDeviceManagementExchangeAccessState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExchangeAccessStateNone:
            return @"none";
        case MSGraphDeviceManagementExchangeAccessStateUnknown:
            return @"unknown";
        case MSGraphDeviceManagementExchangeAccessStateAllowed:
            return @"allowed";
        case MSGraphDeviceManagementExchangeAccessStateBlocked:
            return @"blocked";
        case MSGraphDeviceManagementExchangeAccessStateQuarantined:
            return @"quarantined";
        case MSGraphDeviceManagementExchangeAccessStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExchangeAccessStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExchangeAccessState)

- (MSGraphDeviceManagementExchangeAccessState*) toMSGraphDeviceManagementExchangeAccessState{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphDeviceManagementExchangeAccessState none];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceManagementExchangeAccessState unknown];
    }
    else if([self isEqualToString:@"allowed"])
    {
          return [MSGraphDeviceManagementExchangeAccessState allowed];
    }
    else if([self isEqualToString:@"blocked"])
    {
          return [MSGraphDeviceManagementExchangeAccessState blocked];
    }
    else if([self isEqualToString:@"quarantined"])
    {
          return [MSGraphDeviceManagementExchangeAccessState quarantined];
    }
    else {
        return [MSGraphDeviceManagementExchangeAccessState UnknownEnumValue];
    }
}

@end
