// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphWindowsInformationProtectionPinCharacterRequirements.h"


#import "MSGraphWindowsInformationProtection.h"

@interface MSGraphWindowsInformationProtectionPolicy : MSGraphWindowsInformationProtection

  @property (nonatomic, setter=setRevokeOnMdmHandoffDisabled:, getter=revokeOnMdmHandoffDisabled) BOOL revokeOnMdmHandoffDisabled;
    @property (nullable, nonatomic, setter=setMdmEnrollmentUrl:, getter=mdmEnrollmentUrl) NSString* mdmEnrollmentUrl;
    @property (nonatomic, setter=setWindowsHelloForBusinessBlocked:, getter=windowsHelloForBusinessBlocked) BOOL windowsHelloForBusinessBlocked;
    @property (nonatomic, setter=setPinMinimumLength:, getter=pinMinimumLength) int32_t pinMinimumLength;
    @property (nonnull, nonatomic, setter=setPinUppercaseLetters:, getter=pinUppercaseLetters) MSGraphWindowsInformationProtectionPinCharacterRequirements* pinUppercaseLetters;
    @property (nonnull, nonatomic, setter=setPinLowercaseLetters:, getter=pinLowercaseLetters) MSGraphWindowsInformationProtectionPinCharacterRequirements* pinLowercaseLetters;
    @property (nonnull, nonatomic, setter=setPinSpecialCharacters:, getter=pinSpecialCharacters) MSGraphWindowsInformationProtectionPinCharacterRequirements* pinSpecialCharacters;
    @property (nonatomic, setter=setPinExpirationDays:, getter=pinExpirationDays) int32_t pinExpirationDays;
    @property (nonatomic, setter=setNumberOfPastPinsRemembered:, getter=numberOfPastPinsRemembered) int32_t numberOfPastPinsRemembered;
    @property (nonatomic, setter=setPasswordMaximumAttemptCount:, getter=passwordMaximumAttemptCount) int32_t passwordMaximumAttemptCount;
    @property (nonatomic, setter=setMinutesOfInactivityBeforeDeviceLock:, getter=minutesOfInactivityBeforeDeviceLock) int32_t minutesOfInactivityBeforeDeviceLock;
    @property (nonatomic, setter=setDaysWithoutContactBeforeUnenroll:, getter=daysWithoutContactBeforeUnenroll) int32_t daysWithoutContactBeforeUnenroll;
  
@end
