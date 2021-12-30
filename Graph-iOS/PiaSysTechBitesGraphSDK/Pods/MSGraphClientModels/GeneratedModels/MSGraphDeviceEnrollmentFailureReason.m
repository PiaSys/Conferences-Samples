// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceEnrollmentFailureReason.h"

@interface MSGraphDeviceEnrollmentFailureReason () {
    MSGraphDeviceEnrollmentFailureReasonValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceEnrollmentFailureReasonValue enumValue;
@end

@implementation MSGraphDeviceEnrollmentFailureReason

+ (MSGraphDeviceEnrollmentFailureReason*) unknown {
    static MSGraphDeviceEnrollmentFailureReason *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _unknown.enumValue = MSGraphDeviceEnrollmentFailureReasonUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceEnrollmentFailureReason*) authentication {
    static MSGraphDeviceEnrollmentFailureReason *_authentication;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _authentication = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _authentication.enumValue = MSGraphDeviceEnrollmentFailureReasonAuthentication;
    });
    return _authentication;
}
+ (MSGraphDeviceEnrollmentFailureReason*) authorization {
    static MSGraphDeviceEnrollmentFailureReason *_authorization;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _authorization = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _authorization.enumValue = MSGraphDeviceEnrollmentFailureReasonAuthorization;
    });
    return _authorization;
}
+ (MSGraphDeviceEnrollmentFailureReason*) accountValidation {
    static MSGraphDeviceEnrollmentFailureReason *_accountValidation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _accountValidation = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _accountValidation.enumValue = MSGraphDeviceEnrollmentFailureReasonAccountValidation;
    });
    return _accountValidation;
}
+ (MSGraphDeviceEnrollmentFailureReason*) userValidation {
    static MSGraphDeviceEnrollmentFailureReason *_userValidation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userValidation = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _userValidation.enumValue = MSGraphDeviceEnrollmentFailureReasonUserValidation;
    });
    return _userValidation;
}
+ (MSGraphDeviceEnrollmentFailureReason*) deviceNotSupported {
    static MSGraphDeviceEnrollmentFailureReason *_deviceNotSupported;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceNotSupported = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _deviceNotSupported.enumValue = MSGraphDeviceEnrollmentFailureReasonDeviceNotSupported;
    });
    return _deviceNotSupported;
}
+ (MSGraphDeviceEnrollmentFailureReason*) inMaintenance {
    static MSGraphDeviceEnrollmentFailureReason *_inMaintenance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inMaintenance = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _inMaintenance.enumValue = MSGraphDeviceEnrollmentFailureReasonInMaintenance;
    });
    return _inMaintenance;
}
+ (MSGraphDeviceEnrollmentFailureReason*) badRequest {
    static MSGraphDeviceEnrollmentFailureReason *_badRequest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _badRequest = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _badRequest.enumValue = MSGraphDeviceEnrollmentFailureReasonBadRequest;
    });
    return _badRequest;
}
+ (MSGraphDeviceEnrollmentFailureReason*) featureNotSupported {
    static MSGraphDeviceEnrollmentFailureReason *_featureNotSupported;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _featureNotSupported = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _featureNotSupported.enumValue = MSGraphDeviceEnrollmentFailureReasonFeatureNotSupported;
    });
    return _featureNotSupported;
}
+ (MSGraphDeviceEnrollmentFailureReason*) enrollmentRestrictionsEnforced {
    static MSGraphDeviceEnrollmentFailureReason *_enrollmentRestrictionsEnforced;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enrollmentRestrictionsEnforced = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _enrollmentRestrictionsEnforced.enumValue = MSGraphDeviceEnrollmentFailureReasonEnrollmentRestrictionsEnforced;
    });
    return _enrollmentRestrictionsEnforced;
}
+ (MSGraphDeviceEnrollmentFailureReason*) clientDisconnected {
    static MSGraphDeviceEnrollmentFailureReason *_clientDisconnected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _clientDisconnected = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _clientDisconnected.enumValue = MSGraphDeviceEnrollmentFailureReasonClientDisconnected;
    });
    return _clientDisconnected;
}
+ (MSGraphDeviceEnrollmentFailureReason*) userAbandonment {
    static MSGraphDeviceEnrollmentFailureReason *_userAbandonment;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userAbandonment = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _userAbandonment.enumValue = MSGraphDeviceEnrollmentFailureReasonUserAbandonment;
    });
    return _userAbandonment;
}

+ (MSGraphDeviceEnrollmentFailureReason*) UnknownEnumValue {
    static MSGraphDeviceEnrollmentFailureReason *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceEnrollmentFailureReason alloc] init];
        _unknownValue.enumValue = MSGraphDeviceEnrollmentFailureReasonEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceEnrollmentFailureReason*) deviceEnrollmentFailureReasonWithEnumValue:(MSGraphDeviceEnrollmentFailureReasonValue)val {

    switch(val)
    {
        case MSGraphDeviceEnrollmentFailureReasonUnknown:
            return [MSGraphDeviceEnrollmentFailureReason unknown];
        case MSGraphDeviceEnrollmentFailureReasonAuthentication:
            return [MSGraphDeviceEnrollmentFailureReason authentication];
        case MSGraphDeviceEnrollmentFailureReasonAuthorization:
            return [MSGraphDeviceEnrollmentFailureReason authorization];
        case MSGraphDeviceEnrollmentFailureReasonAccountValidation:
            return [MSGraphDeviceEnrollmentFailureReason accountValidation];
        case MSGraphDeviceEnrollmentFailureReasonUserValidation:
            return [MSGraphDeviceEnrollmentFailureReason userValidation];
        case MSGraphDeviceEnrollmentFailureReasonDeviceNotSupported:
            return [MSGraphDeviceEnrollmentFailureReason deviceNotSupported];
        case MSGraphDeviceEnrollmentFailureReasonInMaintenance:
            return [MSGraphDeviceEnrollmentFailureReason inMaintenance];
        case MSGraphDeviceEnrollmentFailureReasonBadRequest:
            return [MSGraphDeviceEnrollmentFailureReason badRequest];
        case MSGraphDeviceEnrollmentFailureReasonFeatureNotSupported:
            return [MSGraphDeviceEnrollmentFailureReason featureNotSupported];
        case MSGraphDeviceEnrollmentFailureReasonEnrollmentRestrictionsEnforced:
            return [MSGraphDeviceEnrollmentFailureReason enrollmentRestrictionsEnforced];
        case MSGraphDeviceEnrollmentFailureReasonClientDisconnected:
            return [MSGraphDeviceEnrollmentFailureReason clientDisconnected];
        case MSGraphDeviceEnrollmentFailureReasonUserAbandonment:
            return [MSGraphDeviceEnrollmentFailureReason userAbandonment];
        case MSGraphDeviceEnrollmentFailureReasonEndOfEnum:
        default:
            return [MSGraphDeviceEnrollmentFailureReason UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceEnrollmentFailureReasonUnknown:
            return @"unknown";
        case MSGraphDeviceEnrollmentFailureReasonAuthentication:
            return @"authentication";
        case MSGraphDeviceEnrollmentFailureReasonAuthorization:
            return @"authorization";
        case MSGraphDeviceEnrollmentFailureReasonAccountValidation:
            return @"accountValidation";
        case MSGraphDeviceEnrollmentFailureReasonUserValidation:
            return @"userValidation";
        case MSGraphDeviceEnrollmentFailureReasonDeviceNotSupported:
            return @"deviceNotSupported";
        case MSGraphDeviceEnrollmentFailureReasonInMaintenance:
            return @"inMaintenance";
        case MSGraphDeviceEnrollmentFailureReasonBadRequest:
            return @"badRequest";
        case MSGraphDeviceEnrollmentFailureReasonFeatureNotSupported:
            return @"featureNotSupported";
        case MSGraphDeviceEnrollmentFailureReasonEnrollmentRestrictionsEnforced:
            return @"enrollmentRestrictionsEnforced";
        case MSGraphDeviceEnrollmentFailureReasonClientDisconnected:
            return @"clientDisconnected";
        case MSGraphDeviceEnrollmentFailureReasonUserAbandonment:
            return @"userAbandonment";
        case MSGraphDeviceEnrollmentFailureReasonEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceEnrollmentFailureReasonValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceEnrollmentFailureReason)

- (MSGraphDeviceEnrollmentFailureReason*) toMSGraphDeviceEnrollmentFailureReason{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceEnrollmentFailureReason unknown];
    }
    else if([self isEqualToString:@"authentication"])
    {
          return [MSGraphDeviceEnrollmentFailureReason authentication];
    }
    else if([self isEqualToString:@"authorization"])
    {
          return [MSGraphDeviceEnrollmentFailureReason authorization];
    }
    else if([self isEqualToString:@"accountValidation"])
    {
          return [MSGraphDeviceEnrollmentFailureReason accountValidation];
    }
    else if([self isEqualToString:@"userValidation"])
    {
          return [MSGraphDeviceEnrollmentFailureReason userValidation];
    }
    else if([self isEqualToString:@"deviceNotSupported"])
    {
          return [MSGraphDeviceEnrollmentFailureReason deviceNotSupported];
    }
    else if([self isEqualToString:@"inMaintenance"])
    {
          return [MSGraphDeviceEnrollmentFailureReason inMaintenance];
    }
    else if([self isEqualToString:@"badRequest"])
    {
          return [MSGraphDeviceEnrollmentFailureReason badRequest];
    }
    else if([self isEqualToString:@"featureNotSupported"])
    {
          return [MSGraphDeviceEnrollmentFailureReason featureNotSupported];
    }
    else if([self isEqualToString:@"enrollmentRestrictionsEnforced"])
    {
          return [MSGraphDeviceEnrollmentFailureReason enrollmentRestrictionsEnforced];
    }
    else if([self isEqualToString:@"clientDisconnected"])
    {
          return [MSGraphDeviceEnrollmentFailureReason clientDisconnected];
    }
    else if([self isEqualToString:@"userAbandonment"])
    {
          return [MSGraphDeviceEnrollmentFailureReason userAbandonment];
    }
    else {
        return [MSGraphDeviceEnrollmentFailureReason UnknownEnumValue];
    }
}

@end
