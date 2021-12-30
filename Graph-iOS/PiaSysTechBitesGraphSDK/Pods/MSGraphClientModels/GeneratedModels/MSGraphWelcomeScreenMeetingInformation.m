// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWelcomeScreenMeetingInformation.h"

@interface MSGraphWelcomeScreenMeetingInformation () {
    MSGraphWelcomeScreenMeetingInformationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWelcomeScreenMeetingInformationValue enumValue;
@end

@implementation MSGraphWelcomeScreenMeetingInformation

+ (MSGraphWelcomeScreenMeetingInformation*) userDefined {
    static MSGraphWelcomeScreenMeetingInformation *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWelcomeScreenMeetingInformation alloc] init];
        _userDefined.enumValue = MSGraphWelcomeScreenMeetingInformationUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWelcomeScreenMeetingInformation*) showOrganizerAndTimeOnly {
    static MSGraphWelcomeScreenMeetingInformation *_showOrganizerAndTimeOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _showOrganizerAndTimeOnly = [[MSGraphWelcomeScreenMeetingInformation alloc] init];
        _showOrganizerAndTimeOnly.enumValue = MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeOnly;
    });
    return _showOrganizerAndTimeOnly;
}
+ (MSGraphWelcomeScreenMeetingInformation*) showOrganizerAndTimeAndSubject {
    static MSGraphWelcomeScreenMeetingInformation *_showOrganizerAndTimeAndSubject;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _showOrganizerAndTimeAndSubject = [[MSGraphWelcomeScreenMeetingInformation alloc] init];
        _showOrganizerAndTimeAndSubject.enumValue = MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeAndSubject;
    });
    return _showOrganizerAndTimeAndSubject;
}

+ (MSGraphWelcomeScreenMeetingInformation*) UnknownEnumValue {
    static MSGraphWelcomeScreenMeetingInformation *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWelcomeScreenMeetingInformation alloc] init];
        _unknownValue.enumValue = MSGraphWelcomeScreenMeetingInformationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWelcomeScreenMeetingInformation*) welcomeScreenMeetingInformationWithEnumValue:(MSGraphWelcomeScreenMeetingInformationValue)val {

    switch(val)
    {
        case MSGraphWelcomeScreenMeetingInformationUserDefined:
            return [MSGraphWelcomeScreenMeetingInformation userDefined];
        case MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeOnly:
            return [MSGraphWelcomeScreenMeetingInformation showOrganizerAndTimeOnly];
        case MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeAndSubject:
            return [MSGraphWelcomeScreenMeetingInformation showOrganizerAndTimeAndSubject];
        case MSGraphWelcomeScreenMeetingInformationEndOfEnum:
        default:
            return [MSGraphWelcomeScreenMeetingInformation UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWelcomeScreenMeetingInformationUserDefined:
            return @"userDefined";
        case MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeOnly:
            return @"showOrganizerAndTimeOnly";
        case MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeAndSubject:
            return @"showOrganizerAndTimeAndSubject";
        case MSGraphWelcomeScreenMeetingInformationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWelcomeScreenMeetingInformationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWelcomeScreenMeetingInformation)

- (MSGraphWelcomeScreenMeetingInformation*) toMSGraphWelcomeScreenMeetingInformation{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWelcomeScreenMeetingInformation userDefined];
    }
    else if([self isEqualToString:@"showOrganizerAndTimeOnly"])
    {
          return [MSGraphWelcomeScreenMeetingInformation showOrganizerAndTimeOnly];
    }
    else if([self isEqualToString:@"showOrganizerAndTimeAndSubject"])
    {
          return [MSGraphWelcomeScreenMeetingInformation showOrganizerAndTimeAndSubject];
    }
    else {
        return [MSGraphWelcomeScreenMeetingInformation UnknownEnumValue];
    }
}

@end
