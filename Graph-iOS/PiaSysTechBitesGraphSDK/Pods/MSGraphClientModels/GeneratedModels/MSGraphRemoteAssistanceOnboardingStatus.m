// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRemoteAssistanceOnboardingStatus.h"

@interface MSGraphRemoteAssistanceOnboardingStatus () {
    MSGraphRemoteAssistanceOnboardingStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRemoteAssistanceOnboardingStatusValue enumValue;
@end

@implementation MSGraphRemoteAssistanceOnboardingStatus

+ (MSGraphRemoteAssistanceOnboardingStatus*) notOnboarded {
    static MSGraphRemoteAssistanceOnboardingStatus *_notOnboarded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notOnboarded = [[MSGraphRemoteAssistanceOnboardingStatus alloc] init];
        _notOnboarded.enumValue = MSGraphRemoteAssistanceOnboardingStatusNotOnboarded;
    });
    return _notOnboarded;
}
+ (MSGraphRemoteAssistanceOnboardingStatus*) onboarding {
    static MSGraphRemoteAssistanceOnboardingStatus *_onboarding;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onboarding = [[MSGraphRemoteAssistanceOnboardingStatus alloc] init];
        _onboarding.enumValue = MSGraphRemoteAssistanceOnboardingStatusOnboarding;
    });
    return _onboarding;
}
+ (MSGraphRemoteAssistanceOnboardingStatus*) onboarded {
    static MSGraphRemoteAssistanceOnboardingStatus *_onboarded;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _onboarded = [[MSGraphRemoteAssistanceOnboardingStatus alloc] init];
        _onboarded.enumValue = MSGraphRemoteAssistanceOnboardingStatusOnboarded;
    });
    return _onboarded;
}

+ (MSGraphRemoteAssistanceOnboardingStatus*) UnknownEnumValue {
    static MSGraphRemoteAssistanceOnboardingStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRemoteAssistanceOnboardingStatus alloc] init];
        _unknownValue.enumValue = MSGraphRemoteAssistanceOnboardingStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRemoteAssistanceOnboardingStatus*) remoteAssistanceOnboardingStatusWithEnumValue:(MSGraphRemoteAssistanceOnboardingStatusValue)val {

    switch(val)
    {
        case MSGraphRemoteAssistanceOnboardingStatusNotOnboarded:
            return [MSGraphRemoteAssistanceOnboardingStatus notOnboarded];
        case MSGraphRemoteAssistanceOnboardingStatusOnboarding:
            return [MSGraphRemoteAssistanceOnboardingStatus onboarding];
        case MSGraphRemoteAssistanceOnboardingStatusOnboarded:
            return [MSGraphRemoteAssistanceOnboardingStatus onboarded];
        case MSGraphRemoteAssistanceOnboardingStatusEndOfEnum:
        default:
            return [MSGraphRemoteAssistanceOnboardingStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRemoteAssistanceOnboardingStatusNotOnboarded:
            return @"notOnboarded";
        case MSGraphRemoteAssistanceOnboardingStatusOnboarding:
            return @"onboarding";
        case MSGraphRemoteAssistanceOnboardingStatusOnboarded:
            return @"onboarded";
        case MSGraphRemoteAssistanceOnboardingStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRemoteAssistanceOnboardingStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRemoteAssistanceOnboardingStatus)

- (MSGraphRemoteAssistanceOnboardingStatus*) toMSGraphRemoteAssistanceOnboardingStatus{

    if([self isEqualToString:@"notOnboarded"])
    {
          return [MSGraphRemoteAssistanceOnboardingStatus notOnboarded];
    }
    else if([self isEqualToString:@"onboarding"])
    {
          return [MSGraphRemoteAssistanceOnboardingStatus onboarding];
    }
    else if([self isEqualToString:@"onboarded"])
    {
          return [MSGraphRemoteAssistanceOnboardingStatus onboarded];
    }
    else {
        return [MSGraphRemoteAssistanceOnboardingStatus UnknownEnumValue];
    }
}

@end
