// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRiskDetail.h"

@interface MSGraphRiskDetail () {
    MSGraphRiskDetailValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRiskDetailValue enumValue;
@end

@implementation MSGraphRiskDetail

+ (MSGraphRiskDetail*) none {
    static MSGraphRiskDetail *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphRiskDetail alloc] init];
        _none.enumValue = MSGraphRiskDetailNone;
    });
    return _none;
}
+ (MSGraphRiskDetail*) adminGeneratedTemporaryPassword {
    static MSGraphRiskDetail *_adminGeneratedTemporaryPassword;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminGeneratedTemporaryPassword = [[MSGraphRiskDetail alloc] init];
        _adminGeneratedTemporaryPassword.enumValue = MSGraphRiskDetailAdminGeneratedTemporaryPassword;
    });
    return _adminGeneratedTemporaryPassword;
}
+ (MSGraphRiskDetail*) userPerformedSecuredPasswordChange {
    static MSGraphRiskDetail *_userPerformedSecuredPasswordChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userPerformedSecuredPasswordChange = [[MSGraphRiskDetail alloc] init];
        _userPerformedSecuredPasswordChange.enumValue = MSGraphRiskDetailUserPerformedSecuredPasswordChange;
    });
    return _userPerformedSecuredPasswordChange;
}
+ (MSGraphRiskDetail*) userPerformedSecuredPasswordReset {
    static MSGraphRiskDetail *_userPerformedSecuredPasswordReset;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userPerformedSecuredPasswordReset = [[MSGraphRiskDetail alloc] init];
        _userPerformedSecuredPasswordReset.enumValue = MSGraphRiskDetailUserPerformedSecuredPasswordReset;
    });
    return _userPerformedSecuredPasswordReset;
}
+ (MSGraphRiskDetail*) adminConfirmedSigninSafe {
    static MSGraphRiskDetail *_adminConfirmedSigninSafe;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminConfirmedSigninSafe = [[MSGraphRiskDetail alloc] init];
        _adminConfirmedSigninSafe.enumValue = MSGraphRiskDetailAdminConfirmedSigninSafe;
    });
    return _adminConfirmedSigninSafe;
}
+ (MSGraphRiskDetail*) aiConfirmedSigninSafe {
    static MSGraphRiskDetail *_aiConfirmedSigninSafe;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _aiConfirmedSigninSafe = [[MSGraphRiskDetail alloc] init];
        _aiConfirmedSigninSafe.enumValue = MSGraphRiskDetailAiConfirmedSigninSafe;
    });
    return _aiConfirmedSigninSafe;
}
+ (MSGraphRiskDetail*) userPassedMFADrivenByRiskBasedPolicy {
    static MSGraphRiskDetail *_userPassedMFADrivenByRiskBasedPolicy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userPassedMFADrivenByRiskBasedPolicy = [[MSGraphRiskDetail alloc] init];
        _userPassedMFADrivenByRiskBasedPolicy.enumValue = MSGraphRiskDetailUserPassedMFADrivenByRiskBasedPolicy;
    });
    return _userPassedMFADrivenByRiskBasedPolicy;
}
+ (MSGraphRiskDetail*) adminDismissedAllRiskForUser {
    static MSGraphRiskDetail *_adminDismissedAllRiskForUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminDismissedAllRiskForUser = [[MSGraphRiskDetail alloc] init];
        _adminDismissedAllRiskForUser.enumValue = MSGraphRiskDetailAdminDismissedAllRiskForUser;
    });
    return _adminDismissedAllRiskForUser;
}
+ (MSGraphRiskDetail*) adminConfirmedSigninCompromised {
    static MSGraphRiskDetail *_adminConfirmedSigninCompromised;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminConfirmedSigninCompromised = [[MSGraphRiskDetail alloc] init];
        _adminConfirmedSigninCompromised.enumValue = MSGraphRiskDetailAdminConfirmedSigninCompromised;
    });
    return _adminConfirmedSigninCompromised;
}
+ (MSGraphRiskDetail*) hidden {
    static MSGraphRiskDetail *_hidden;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hidden = [[MSGraphRiskDetail alloc] init];
        _hidden.enumValue = MSGraphRiskDetailHidden;
    });
    return _hidden;
}
+ (MSGraphRiskDetail*) adminConfirmedUserCompromised {
    static MSGraphRiskDetail *_adminConfirmedUserCompromised;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adminConfirmedUserCompromised = [[MSGraphRiskDetail alloc] init];
        _adminConfirmedUserCompromised.enumValue = MSGraphRiskDetailAdminConfirmedUserCompromised;
    });
    return _adminConfirmedUserCompromised;
}
+ (MSGraphRiskDetail*) unknownFutureValue {
    static MSGraphRiskDetail *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRiskDetail alloc] init];
        _unknownFutureValue.enumValue = MSGraphRiskDetailUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRiskDetail*) UnknownEnumValue {
    static MSGraphRiskDetail *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRiskDetail alloc] init];
        _unknownValue.enumValue = MSGraphRiskDetailEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRiskDetail*) riskDetailWithEnumValue:(MSGraphRiskDetailValue)val {

    switch(val)
    {
        case MSGraphRiskDetailNone:
            return [MSGraphRiskDetail none];
        case MSGraphRiskDetailAdminGeneratedTemporaryPassword:
            return [MSGraphRiskDetail adminGeneratedTemporaryPassword];
        case MSGraphRiskDetailUserPerformedSecuredPasswordChange:
            return [MSGraphRiskDetail userPerformedSecuredPasswordChange];
        case MSGraphRiskDetailUserPerformedSecuredPasswordReset:
            return [MSGraphRiskDetail userPerformedSecuredPasswordReset];
        case MSGraphRiskDetailAdminConfirmedSigninSafe:
            return [MSGraphRiskDetail adminConfirmedSigninSafe];
        case MSGraphRiskDetailAiConfirmedSigninSafe:
            return [MSGraphRiskDetail aiConfirmedSigninSafe];
        case MSGraphRiskDetailUserPassedMFADrivenByRiskBasedPolicy:
            return [MSGraphRiskDetail userPassedMFADrivenByRiskBasedPolicy];
        case MSGraphRiskDetailAdminDismissedAllRiskForUser:
            return [MSGraphRiskDetail adminDismissedAllRiskForUser];
        case MSGraphRiskDetailAdminConfirmedSigninCompromised:
            return [MSGraphRiskDetail adminConfirmedSigninCompromised];
        case MSGraphRiskDetailHidden:
            return [MSGraphRiskDetail hidden];
        case MSGraphRiskDetailAdminConfirmedUserCompromised:
            return [MSGraphRiskDetail adminConfirmedUserCompromised];
        case MSGraphRiskDetailUnknownFutureValue:
            return [MSGraphRiskDetail unknownFutureValue];
        case MSGraphRiskDetailEndOfEnum:
        default:
            return [MSGraphRiskDetail UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRiskDetailNone:
            return @"none";
        case MSGraphRiskDetailAdminGeneratedTemporaryPassword:
            return @"adminGeneratedTemporaryPassword";
        case MSGraphRiskDetailUserPerformedSecuredPasswordChange:
            return @"userPerformedSecuredPasswordChange";
        case MSGraphRiskDetailUserPerformedSecuredPasswordReset:
            return @"userPerformedSecuredPasswordReset";
        case MSGraphRiskDetailAdminConfirmedSigninSafe:
            return @"adminConfirmedSigninSafe";
        case MSGraphRiskDetailAiConfirmedSigninSafe:
            return @"aiConfirmedSigninSafe";
        case MSGraphRiskDetailUserPassedMFADrivenByRiskBasedPolicy:
            return @"userPassedMFADrivenByRiskBasedPolicy";
        case MSGraphRiskDetailAdminDismissedAllRiskForUser:
            return @"adminDismissedAllRiskForUser";
        case MSGraphRiskDetailAdminConfirmedSigninCompromised:
            return @"adminConfirmedSigninCompromised";
        case MSGraphRiskDetailHidden:
            return @"hidden";
        case MSGraphRiskDetailAdminConfirmedUserCompromised:
            return @"adminConfirmedUserCompromised";
        case MSGraphRiskDetailUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRiskDetailEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRiskDetailValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRiskDetail)

- (MSGraphRiskDetail*) toMSGraphRiskDetail{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphRiskDetail none];
    }
    else if([self isEqualToString:@"adminGeneratedTemporaryPassword"])
    {
          return [MSGraphRiskDetail adminGeneratedTemporaryPassword];
    }
    else if([self isEqualToString:@"userPerformedSecuredPasswordChange"])
    {
          return [MSGraphRiskDetail userPerformedSecuredPasswordChange];
    }
    else if([self isEqualToString:@"userPerformedSecuredPasswordReset"])
    {
          return [MSGraphRiskDetail userPerformedSecuredPasswordReset];
    }
    else if([self isEqualToString:@"adminConfirmedSigninSafe"])
    {
          return [MSGraphRiskDetail adminConfirmedSigninSafe];
    }
    else if([self isEqualToString:@"aiConfirmedSigninSafe"])
    {
          return [MSGraphRiskDetail aiConfirmedSigninSafe];
    }
    else if([self isEqualToString:@"userPassedMFADrivenByRiskBasedPolicy"])
    {
          return [MSGraphRiskDetail userPassedMFADrivenByRiskBasedPolicy];
    }
    else if([self isEqualToString:@"adminDismissedAllRiskForUser"])
    {
          return [MSGraphRiskDetail adminDismissedAllRiskForUser];
    }
    else if([self isEqualToString:@"adminConfirmedSigninCompromised"])
    {
          return [MSGraphRiskDetail adminConfirmedSigninCompromised];
    }
    else if([self isEqualToString:@"hidden"])
    {
          return [MSGraphRiskDetail hidden];
    }
    else if([self isEqualToString:@"adminConfirmedUserCompromised"])
    {
          return [MSGraphRiskDetail adminConfirmedUserCompromised];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRiskDetail unknownFutureValue];
    }
    else {
        return [MSGraphRiskDetail UnknownEnumValue];
    }
}

@end
