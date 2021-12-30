// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsInformationProtectionPolicy()
{
    BOOL _revokeOnMdmHandoffDisabled;
    NSString* _mdmEnrollmentUrl;
    BOOL _windowsHelloForBusinessBlocked;
    int32_t _pinMinimumLength;
    MSGraphWindowsInformationProtectionPinCharacterRequirements* _pinUppercaseLetters;
    MSGraphWindowsInformationProtectionPinCharacterRequirements* _pinLowercaseLetters;
    MSGraphWindowsInformationProtectionPinCharacterRequirements* _pinSpecialCharacters;
    int32_t _pinExpirationDays;
    int32_t _numberOfPastPinsRemembered;
    int32_t _passwordMaximumAttemptCount;
    int32_t _minutesOfInactivityBeforeDeviceLock;
    int32_t _daysWithoutContactBeforeUnenroll;
}
@end

@implementation MSGraphWindowsInformationProtectionPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsInformationProtectionPolicy";
    }
    return self;
}
- (BOOL) revokeOnMdmHandoffDisabled
{
    _revokeOnMdmHandoffDisabled = [self.dictionary[@"revokeOnMdmHandoffDisabled"] boolValue];
    return _revokeOnMdmHandoffDisabled;
}

- (void) setRevokeOnMdmHandoffDisabled: (BOOL) val
{
    _revokeOnMdmHandoffDisabled = val;
    self.dictionary[@"revokeOnMdmHandoffDisabled"] = @(val);
}

- (NSString*) mdmEnrollmentUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"mdmEnrollmentUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"mdmEnrollmentUrl"];
}

- (void) setMdmEnrollmentUrl: (NSString*) val
{
    self.dictionary[@"mdmEnrollmentUrl"] = val;
}

- (BOOL) windowsHelloForBusinessBlocked
{
    _windowsHelloForBusinessBlocked = [self.dictionary[@"windowsHelloForBusinessBlocked"] boolValue];
    return _windowsHelloForBusinessBlocked;
}

- (void) setWindowsHelloForBusinessBlocked: (BOOL) val
{
    _windowsHelloForBusinessBlocked = val;
    self.dictionary[@"windowsHelloForBusinessBlocked"] = @(val);
}

- (int32_t) pinMinimumLength
{
    _pinMinimumLength = [self.dictionary[@"pinMinimumLength"] intValue];
    return _pinMinimumLength;
}

- (void) setPinMinimumLength: (int32_t) val
{
    _pinMinimumLength = val;
    self.dictionary[@"pinMinimumLength"] = @(val);
}

- (MSGraphWindowsInformationProtectionPinCharacterRequirements*) pinUppercaseLetters
{
    if(!_pinUppercaseLetters){
        _pinUppercaseLetters = [self.dictionary[@"pinUppercaseLetters"] toMSGraphWindowsInformationProtectionPinCharacterRequirements];
    }
    return _pinUppercaseLetters;
}

- (void) setPinUppercaseLetters: (MSGraphWindowsInformationProtectionPinCharacterRequirements*) val
{
    _pinUppercaseLetters = val;
    self.dictionary[@"pinUppercaseLetters"] = val;
}

- (MSGraphWindowsInformationProtectionPinCharacterRequirements*) pinLowercaseLetters
{
    if(!_pinLowercaseLetters){
        _pinLowercaseLetters = [self.dictionary[@"pinLowercaseLetters"] toMSGraphWindowsInformationProtectionPinCharacterRequirements];
    }
    return _pinLowercaseLetters;
}

- (void) setPinLowercaseLetters: (MSGraphWindowsInformationProtectionPinCharacterRequirements*) val
{
    _pinLowercaseLetters = val;
    self.dictionary[@"pinLowercaseLetters"] = val;
}

- (MSGraphWindowsInformationProtectionPinCharacterRequirements*) pinSpecialCharacters
{
    if(!_pinSpecialCharacters){
        _pinSpecialCharacters = [self.dictionary[@"pinSpecialCharacters"] toMSGraphWindowsInformationProtectionPinCharacterRequirements];
    }
    return _pinSpecialCharacters;
}

- (void) setPinSpecialCharacters: (MSGraphWindowsInformationProtectionPinCharacterRequirements*) val
{
    _pinSpecialCharacters = val;
    self.dictionary[@"pinSpecialCharacters"] = val;
}

- (int32_t) pinExpirationDays
{
    _pinExpirationDays = [self.dictionary[@"pinExpirationDays"] intValue];
    return _pinExpirationDays;
}

- (void) setPinExpirationDays: (int32_t) val
{
    _pinExpirationDays = val;
    self.dictionary[@"pinExpirationDays"] = @(val);
}

- (int32_t) numberOfPastPinsRemembered
{
    _numberOfPastPinsRemembered = [self.dictionary[@"numberOfPastPinsRemembered"] intValue];
    return _numberOfPastPinsRemembered;
}

- (void) setNumberOfPastPinsRemembered: (int32_t) val
{
    _numberOfPastPinsRemembered = val;
    self.dictionary[@"numberOfPastPinsRemembered"] = @(val);
}

- (int32_t) passwordMaximumAttemptCount
{
    _passwordMaximumAttemptCount = [self.dictionary[@"passwordMaximumAttemptCount"] intValue];
    return _passwordMaximumAttemptCount;
}

- (void) setPasswordMaximumAttemptCount: (int32_t) val
{
    _passwordMaximumAttemptCount = val;
    self.dictionary[@"passwordMaximumAttemptCount"] = @(val);
}

- (int32_t) minutesOfInactivityBeforeDeviceLock
{
    _minutesOfInactivityBeforeDeviceLock = [self.dictionary[@"minutesOfInactivityBeforeDeviceLock"] intValue];
    return _minutesOfInactivityBeforeDeviceLock;
}

- (void) setMinutesOfInactivityBeforeDeviceLock: (int32_t) val
{
    _minutesOfInactivityBeforeDeviceLock = val;
    self.dictionary[@"minutesOfInactivityBeforeDeviceLock"] = @(val);
}

- (int32_t) daysWithoutContactBeforeUnenroll
{
    _daysWithoutContactBeforeUnenroll = [self.dictionary[@"daysWithoutContactBeforeUnenroll"] intValue];
    return _daysWithoutContactBeforeUnenroll;
}

- (void) setDaysWithoutContactBeforeUnenroll: (int32_t) val
{
    _daysWithoutContactBeforeUnenroll = val;
    self.dictionary[@"daysWithoutContactBeforeUnenroll"] = @(val);
}


@end
