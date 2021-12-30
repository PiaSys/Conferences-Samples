// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRemoteAssistanceOnboardingStatusValue){

	MSGraphRemoteAssistanceOnboardingStatusNotOnboarded = 0,
	MSGraphRemoteAssistanceOnboardingStatusOnboarding = 1,
	MSGraphRemoteAssistanceOnboardingStatusOnboarded = 2,
    MSGraphRemoteAssistanceOnboardingStatusEndOfEnum
};

@interface MSGraphRemoteAssistanceOnboardingStatus : NSObject

+(MSGraphRemoteAssistanceOnboardingStatus*) notOnboarded;
+(MSGraphRemoteAssistanceOnboardingStatus*) onboarding;
+(MSGraphRemoteAssistanceOnboardingStatus*) onboarded;

+(MSGraphRemoteAssistanceOnboardingStatus*) UnknownEnumValue;

+(MSGraphRemoteAssistanceOnboardingStatus*) remoteAssistanceOnboardingStatusWithEnumValue:(MSGraphRemoteAssistanceOnboardingStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRemoteAssistanceOnboardingStatusValue enumValue;

@end


@interface NSString (MSGraphRemoteAssistanceOnboardingStatus)

- (MSGraphRemoteAssistanceOnboardingStatus*) toMSGraphRemoteAssistanceOnboardingStatus;

@end
