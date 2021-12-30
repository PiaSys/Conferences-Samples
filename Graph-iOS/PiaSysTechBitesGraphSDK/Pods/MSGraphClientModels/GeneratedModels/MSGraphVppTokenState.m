// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphVppTokenState.h"

@interface MSGraphVppTokenState () {
    MSGraphVppTokenStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphVppTokenStateValue enumValue;
@end

@implementation MSGraphVppTokenState

+ (MSGraphVppTokenState*) unknown {
    static MSGraphVppTokenState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphVppTokenState alloc] init];
        _unknown.enumValue = MSGraphVppTokenStateUnknown;
    });
    return _unknown;
}
+ (MSGraphVppTokenState*) valid {
    static MSGraphVppTokenState *_valid;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _valid = [[MSGraphVppTokenState alloc] init];
        _valid.enumValue = MSGraphVppTokenStateValid;
    });
    return _valid;
}
+ (MSGraphVppTokenState*) expired {
    static MSGraphVppTokenState *_expired;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _expired = [[MSGraphVppTokenState alloc] init];
        _expired.enumValue = MSGraphVppTokenStateExpired;
    });
    return _expired;
}
+ (MSGraphVppTokenState*) invalid {
    static MSGraphVppTokenState *_invalid;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _invalid = [[MSGraphVppTokenState alloc] init];
        _invalid.enumValue = MSGraphVppTokenStateInvalid;
    });
    return _invalid;
}
+ (MSGraphVppTokenState*) assignedToExternalMDM {
    static MSGraphVppTokenState *_assignedToExternalMDM;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _assignedToExternalMDM = [[MSGraphVppTokenState alloc] init];
        _assignedToExternalMDM.enumValue = MSGraphVppTokenStateAssignedToExternalMDM;
    });
    return _assignedToExternalMDM;
}

+ (MSGraphVppTokenState*) UnknownEnumValue {
    static MSGraphVppTokenState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphVppTokenState alloc] init];
        _unknownValue.enumValue = MSGraphVppTokenStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphVppTokenState*) vppTokenStateWithEnumValue:(MSGraphVppTokenStateValue)val {

    switch(val)
    {
        case MSGraphVppTokenStateUnknown:
            return [MSGraphVppTokenState unknown];
        case MSGraphVppTokenStateValid:
            return [MSGraphVppTokenState valid];
        case MSGraphVppTokenStateExpired:
            return [MSGraphVppTokenState expired];
        case MSGraphVppTokenStateInvalid:
            return [MSGraphVppTokenState invalid];
        case MSGraphVppTokenStateAssignedToExternalMDM:
            return [MSGraphVppTokenState assignedToExternalMDM];
        case MSGraphVppTokenStateEndOfEnum:
        default:
            return [MSGraphVppTokenState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphVppTokenStateUnknown:
            return @"unknown";
        case MSGraphVppTokenStateValid:
            return @"valid";
        case MSGraphVppTokenStateExpired:
            return @"expired";
        case MSGraphVppTokenStateInvalid:
            return @"invalid";
        case MSGraphVppTokenStateAssignedToExternalMDM:
            return @"assignedToExternalMDM";
        case MSGraphVppTokenStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphVppTokenStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphVppTokenState)

- (MSGraphVppTokenState*) toMSGraphVppTokenState{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphVppTokenState unknown];
    }
    else if([self isEqualToString:@"valid"])
    {
          return [MSGraphVppTokenState valid];
    }
    else if([self isEqualToString:@"expired"])
    {
          return [MSGraphVppTokenState expired];
    }
    else if([self isEqualToString:@"invalid"])
    {
          return [MSGraphVppTokenState invalid];
    }
    else if([self isEqualToString:@"assignedToExternalMDM"])
    {
          return [MSGraphVppTokenState assignedToExternalMDM];
    }
    else {
        return [MSGraphVppTokenState UnknownEnumValue];
    }
}

@end
