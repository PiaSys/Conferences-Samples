// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExchangeAccessStateReason.h"

@interface MSGraphDeviceManagementExchangeAccessStateReason () {
    MSGraphDeviceManagementExchangeAccessStateReasonValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExchangeAccessStateReasonValue enumValue;
@end

@implementation MSGraphDeviceManagementExchangeAccessStateReason

+ (MSGraphDeviceManagementExchangeAccessStateReason*) none {
    static MSGraphDeviceManagementExchangeAccessStateReason *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _none.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonNone;
    });
    return _none;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) unknown {
    static MSGraphDeviceManagementExchangeAccessStateReason *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _unknown.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonUnknown;
    });
    return _unknown;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeGlobalRule {
    static MSGraphDeviceManagementExchangeAccessStateReason *_exchangeGlobalRule;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeGlobalRule = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _exchangeGlobalRule.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonExchangeGlobalRule;
    });
    return _exchangeGlobalRule;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeIndividualRule {
    static MSGraphDeviceManagementExchangeAccessStateReason *_exchangeIndividualRule;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeIndividualRule = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _exchangeIndividualRule.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonExchangeIndividualRule;
    });
    return _exchangeIndividualRule;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeDeviceRule {
    static MSGraphDeviceManagementExchangeAccessStateReason *_exchangeDeviceRule;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeDeviceRule = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _exchangeDeviceRule.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonExchangeDeviceRule;
    });
    return _exchangeDeviceRule;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeUpgrade {
    static MSGraphDeviceManagementExchangeAccessStateReason *_exchangeUpgrade;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeUpgrade = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _exchangeUpgrade.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonExchangeUpgrade;
    });
    return _exchangeUpgrade;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeMailboxPolicy {
    static MSGraphDeviceManagementExchangeAccessStateReason *_exchangeMailboxPolicy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeMailboxPolicy = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _exchangeMailboxPolicy.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonExchangeMailboxPolicy;
    });
    return _exchangeMailboxPolicy;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) other {
    static MSGraphDeviceManagementExchangeAccessStateReason *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _other.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonOther;
    });
    return _other;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) compliant {
    static MSGraphDeviceManagementExchangeAccessStateReason *_compliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compliant = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _compliant.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonCompliant;
    });
    return _compliant;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) notCompliant {
    static MSGraphDeviceManagementExchangeAccessStateReason *_notCompliant;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notCompliant = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _notCompliant.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonNotCompliant;
    });
    return _notCompliant;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) notEnrolled {
    static MSGraphDeviceManagementExchangeAccessStateReason *_notEnrolled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notEnrolled = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _notEnrolled.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonNotEnrolled;
    });
    return _notEnrolled;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) unknownLocation {
    static MSGraphDeviceManagementExchangeAccessStateReason *_unknownLocation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownLocation = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _unknownLocation.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonUnknownLocation;
    });
    return _unknownLocation;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) mfaRequired {
    static MSGraphDeviceManagementExchangeAccessStateReason *_mfaRequired;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mfaRequired = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _mfaRequired.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonMfaRequired;
    });
    return _mfaRequired;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) azureADBlockDueToAccessPolicy {
    static MSGraphDeviceManagementExchangeAccessStateReason *_azureADBlockDueToAccessPolicy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _azureADBlockDueToAccessPolicy = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _azureADBlockDueToAccessPolicy.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonAzureADBlockDueToAccessPolicy;
    });
    return _azureADBlockDueToAccessPolicy;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) compromisedPassword {
    static MSGraphDeviceManagementExchangeAccessStateReason *_compromisedPassword;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _compromisedPassword = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _compromisedPassword.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonCompromisedPassword;
    });
    return _compromisedPassword;
}
+ (MSGraphDeviceManagementExchangeAccessStateReason*) deviceNotKnownWithManagedApp {
    static MSGraphDeviceManagementExchangeAccessStateReason *_deviceNotKnownWithManagedApp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceNotKnownWithManagedApp = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _deviceNotKnownWithManagedApp.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonDeviceNotKnownWithManagedApp;
    });
    return _deviceNotKnownWithManagedApp;
}

+ (MSGraphDeviceManagementExchangeAccessStateReason*) UnknownEnumValue {
    static MSGraphDeviceManagementExchangeAccessStateReason *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExchangeAccessStateReason alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExchangeAccessStateReasonEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExchangeAccessStateReason*) deviceManagementExchangeAccessStateReasonWithEnumValue:(MSGraphDeviceManagementExchangeAccessStateReasonValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExchangeAccessStateReasonNone:
            return [MSGraphDeviceManagementExchangeAccessStateReason none];
        case MSGraphDeviceManagementExchangeAccessStateReasonUnknown:
            return [MSGraphDeviceManagementExchangeAccessStateReason unknown];
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeGlobalRule:
            return [MSGraphDeviceManagementExchangeAccessStateReason exchangeGlobalRule];
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeIndividualRule:
            return [MSGraphDeviceManagementExchangeAccessStateReason exchangeIndividualRule];
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeDeviceRule:
            return [MSGraphDeviceManagementExchangeAccessStateReason exchangeDeviceRule];
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeUpgrade:
            return [MSGraphDeviceManagementExchangeAccessStateReason exchangeUpgrade];
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeMailboxPolicy:
            return [MSGraphDeviceManagementExchangeAccessStateReason exchangeMailboxPolicy];
        case MSGraphDeviceManagementExchangeAccessStateReasonOther:
            return [MSGraphDeviceManagementExchangeAccessStateReason other];
        case MSGraphDeviceManagementExchangeAccessStateReasonCompliant:
            return [MSGraphDeviceManagementExchangeAccessStateReason compliant];
        case MSGraphDeviceManagementExchangeAccessStateReasonNotCompliant:
            return [MSGraphDeviceManagementExchangeAccessStateReason notCompliant];
        case MSGraphDeviceManagementExchangeAccessStateReasonNotEnrolled:
            return [MSGraphDeviceManagementExchangeAccessStateReason notEnrolled];
        case MSGraphDeviceManagementExchangeAccessStateReasonUnknownLocation:
            return [MSGraphDeviceManagementExchangeAccessStateReason unknownLocation];
        case MSGraphDeviceManagementExchangeAccessStateReasonMfaRequired:
            return [MSGraphDeviceManagementExchangeAccessStateReason mfaRequired];
        case MSGraphDeviceManagementExchangeAccessStateReasonAzureADBlockDueToAccessPolicy:
            return [MSGraphDeviceManagementExchangeAccessStateReason azureADBlockDueToAccessPolicy];
        case MSGraphDeviceManagementExchangeAccessStateReasonCompromisedPassword:
            return [MSGraphDeviceManagementExchangeAccessStateReason compromisedPassword];
        case MSGraphDeviceManagementExchangeAccessStateReasonDeviceNotKnownWithManagedApp:
            return [MSGraphDeviceManagementExchangeAccessStateReason deviceNotKnownWithManagedApp];
        case MSGraphDeviceManagementExchangeAccessStateReasonEndOfEnum:
        default:
            return [MSGraphDeviceManagementExchangeAccessStateReason UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExchangeAccessStateReasonNone:
            return @"none";
        case MSGraphDeviceManagementExchangeAccessStateReasonUnknown:
            return @"unknown";
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeGlobalRule:
            return @"exchangeGlobalRule";
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeIndividualRule:
            return @"exchangeIndividualRule";
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeDeviceRule:
            return @"exchangeDeviceRule";
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeUpgrade:
            return @"exchangeUpgrade";
        case MSGraphDeviceManagementExchangeAccessStateReasonExchangeMailboxPolicy:
            return @"exchangeMailboxPolicy";
        case MSGraphDeviceManagementExchangeAccessStateReasonOther:
            return @"other";
        case MSGraphDeviceManagementExchangeAccessStateReasonCompliant:
            return @"compliant";
        case MSGraphDeviceManagementExchangeAccessStateReasonNotCompliant:
            return @"notCompliant";
        case MSGraphDeviceManagementExchangeAccessStateReasonNotEnrolled:
            return @"notEnrolled";
        case MSGraphDeviceManagementExchangeAccessStateReasonUnknownLocation:
            return @"unknownLocation";
        case MSGraphDeviceManagementExchangeAccessStateReasonMfaRequired:
            return @"mfaRequired";
        case MSGraphDeviceManagementExchangeAccessStateReasonAzureADBlockDueToAccessPolicy:
            return @"azureADBlockDueToAccessPolicy";
        case MSGraphDeviceManagementExchangeAccessStateReasonCompromisedPassword:
            return @"compromisedPassword";
        case MSGraphDeviceManagementExchangeAccessStateReasonDeviceNotKnownWithManagedApp:
            return @"deviceNotKnownWithManagedApp";
        case MSGraphDeviceManagementExchangeAccessStateReasonEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExchangeAccessStateReasonValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExchangeAccessStateReason)

- (MSGraphDeviceManagementExchangeAccessStateReason*) toMSGraphDeviceManagementExchangeAccessStateReason{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason none];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason unknown];
    }
    else if([self isEqualToString:@"exchangeGlobalRule"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason exchangeGlobalRule];
    }
    else if([self isEqualToString:@"exchangeIndividualRule"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason exchangeIndividualRule];
    }
    else if([self isEqualToString:@"exchangeDeviceRule"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason exchangeDeviceRule];
    }
    else if([self isEqualToString:@"exchangeUpgrade"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason exchangeUpgrade];
    }
    else if([self isEqualToString:@"exchangeMailboxPolicy"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason exchangeMailboxPolicy];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason other];
    }
    else if([self isEqualToString:@"compliant"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason compliant];
    }
    else if([self isEqualToString:@"notCompliant"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason notCompliant];
    }
    else if([self isEqualToString:@"notEnrolled"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason notEnrolled];
    }
    else if([self isEqualToString:@"unknownLocation"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason unknownLocation];
    }
    else if([self isEqualToString:@"mfaRequired"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason mfaRequired];
    }
    else if([self isEqualToString:@"azureADBlockDueToAccessPolicy"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason azureADBlockDueToAccessPolicy];
    }
    else if([self isEqualToString:@"compromisedPassword"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason compromisedPassword];
    }
    else if([self isEqualToString:@"deviceNotKnownWithManagedApp"])
    {
          return [MSGraphDeviceManagementExchangeAccessStateReason deviceNotKnownWithManagedApp];
    }
    else {
        return [MSGraphDeviceManagementExchangeAccessStateReason UnknownEnumValue];
    }
}

@end
