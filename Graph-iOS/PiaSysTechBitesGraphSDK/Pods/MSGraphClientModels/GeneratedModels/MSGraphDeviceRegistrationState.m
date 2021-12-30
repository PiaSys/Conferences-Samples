// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceRegistrationState.h"

@interface MSGraphDeviceRegistrationState () {
    MSGraphDeviceRegistrationStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceRegistrationStateValue enumValue;
@end

@implementation MSGraphDeviceRegistrationState

+ (MSGraphDeviceRegistrationState*) notRegistered {
    static MSGraphDeviceRegistrationState *_notRegistered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notRegistered = [[MSGraphDeviceRegistrationState alloc] init];
        _notRegistered.enumValue = MSGraphDeviceRegistrationStateNotRegistered;
    });
    return _notRegistered;
}
+ (MSGraphDeviceRegistrationState*) registered {
    static MSGraphDeviceRegistrationState *_registered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _registered = [[MSGraphDeviceRegistrationState alloc] init];
        _registered.enumValue = MSGraphDeviceRegistrationStateRegistered;
    });
    return _registered;
}
+ (MSGraphDeviceRegistrationState*) revoked {
    static MSGraphDeviceRegistrationState *_revoked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _revoked = [[MSGraphDeviceRegistrationState alloc] init];
        _revoked.enumValue = MSGraphDeviceRegistrationStateRevoked;
    });
    return _revoked;
}
+ (MSGraphDeviceRegistrationState*) keyConflict {
    static MSGraphDeviceRegistrationState *_keyConflict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _keyConflict = [[MSGraphDeviceRegistrationState alloc] init];
        _keyConflict.enumValue = MSGraphDeviceRegistrationStateKeyConflict;
    });
    return _keyConflict;
}
+ (MSGraphDeviceRegistrationState*) approvalPending {
    static MSGraphDeviceRegistrationState *_approvalPending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _approvalPending = [[MSGraphDeviceRegistrationState alloc] init];
        _approvalPending.enumValue = MSGraphDeviceRegistrationStateApprovalPending;
    });
    return _approvalPending;
}
+ (MSGraphDeviceRegistrationState*) certificateReset {
    static MSGraphDeviceRegistrationState *_certificateReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _certificateReset = [[MSGraphDeviceRegistrationState alloc] init];
        _certificateReset.enumValue = MSGraphDeviceRegistrationStateCertificateReset;
    });
    return _certificateReset;
}
+ (MSGraphDeviceRegistrationState*) notRegisteredPendingEnrollment {
    static MSGraphDeviceRegistrationState *_notRegisteredPendingEnrollment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notRegisteredPendingEnrollment = [[MSGraphDeviceRegistrationState alloc] init];
        _notRegisteredPendingEnrollment.enumValue = MSGraphDeviceRegistrationStateNotRegisteredPendingEnrollment;
    });
    return _notRegisteredPendingEnrollment;
}
+ (MSGraphDeviceRegistrationState*) unknown {
    static MSGraphDeviceRegistrationState *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceRegistrationState alloc] init];
        _unknown.enumValue = MSGraphDeviceRegistrationStateUnknown;
    });
    return _unknown;
}

+ (MSGraphDeviceRegistrationState*) UnknownEnumValue {
    static MSGraphDeviceRegistrationState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceRegistrationState alloc] init];
        _unknownValue.enumValue = MSGraphDeviceRegistrationStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceRegistrationState*) deviceRegistrationStateWithEnumValue:(MSGraphDeviceRegistrationStateValue)val {

    switch(val)
    {
        case MSGraphDeviceRegistrationStateNotRegistered:
            return [MSGraphDeviceRegistrationState notRegistered];
        case MSGraphDeviceRegistrationStateRegistered:
            return [MSGraphDeviceRegistrationState registered];
        case MSGraphDeviceRegistrationStateRevoked:
            return [MSGraphDeviceRegistrationState revoked];
        case MSGraphDeviceRegistrationStateKeyConflict:
            return [MSGraphDeviceRegistrationState keyConflict];
        case MSGraphDeviceRegistrationStateApprovalPending:
            return [MSGraphDeviceRegistrationState approvalPending];
        case MSGraphDeviceRegistrationStateCertificateReset:
            return [MSGraphDeviceRegistrationState certificateReset];
        case MSGraphDeviceRegistrationStateNotRegisteredPendingEnrollment:
            return [MSGraphDeviceRegistrationState notRegisteredPendingEnrollment];
        case MSGraphDeviceRegistrationStateUnknown:
            return [MSGraphDeviceRegistrationState unknown];
        case MSGraphDeviceRegistrationStateEndOfEnum:
        default:
            return [MSGraphDeviceRegistrationState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceRegistrationStateNotRegistered:
            return @"notRegistered";
        case MSGraphDeviceRegistrationStateRegistered:
            return @"registered";
        case MSGraphDeviceRegistrationStateRevoked:
            return @"revoked";
        case MSGraphDeviceRegistrationStateKeyConflict:
            return @"keyConflict";
        case MSGraphDeviceRegistrationStateApprovalPending:
            return @"approvalPending";
        case MSGraphDeviceRegistrationStateCertificateReset:
            return @"certificateReset";
        case MSGraphDeviceRegistrationStateNotRegisteredPendingEnrollment:
            return @"notRegisteredPendingEnrollment";
        case MSGraphDeviceRegistrationStateUnknown:
            return @"unknown";
        case MSGraphDeviceRegistrationStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceRegistrationStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceRegistrationState)

- (MSGraphDeviceRegistrationState*) toMSGraphDeviceRegistrationState{

    if([self isEqualToString:@"notRegistered"])
    {
          return [MSGraphDeviceRegistrationState notRegistered];
    }
    else if([self isEqualToString:@"registered"])
    {
          return [MSGraphDeviceRegistrationState registered];
    }
    else if([self isEqualToString:@"revoked"])
    {
          return [MSGraphDeviceRegistrationState revoked];
    }
    else if([self isEqualToString:@"keyConflict"])
    {
          return [MSGraphDeviceRegistrationState keyConflict];
    }
    else if([self isEqualToString:@"approvalPending"])
    {
          return [MSGraphDeviceRegistrationState approvalPending];
    }
    else if([self isEqualToString:@"certificateReset"])
    {
          return [MSGraphDeviceRegistrationState certificateReset];
    }
    else if([self isEqualToString:@"notRegisteredPendingEnrollment"])
    {
          return [MSGraphDeviceRegistrationState notRegisteredPendingEnrollment];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceRegistrationState unknown];
    }
    else {
        return [MSGraphDeviceRegistrationState UnknownEnumValue];
    }
}

@end
