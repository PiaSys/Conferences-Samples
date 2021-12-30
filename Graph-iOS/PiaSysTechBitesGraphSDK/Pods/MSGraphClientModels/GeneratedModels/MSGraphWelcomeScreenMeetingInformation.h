// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWelcomeScreenMeetingInformationValue){

	MSGraphWelcomeScreenMeetingInformationUserDefined = 0,
	MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeOnly = 1,
	MSGraphWelcomeScreenMeetingInformationShowOrganizerAndTimeAndSubject = 2,
    MSGraphWelcomeScreenMeetingInformationEndOfEnum
};

@interface MSGraphWelcomeScreenMeetingInformation : NSObject

+(MSGraphWelcomeScreenMeetingInformation*) userDefined;
+(MSGraphWelcomeScreenMeetingInformation*) showOrganizerAndTimeOnly;
+(MSGraphWelcomeScreenMeetingInformation*) showOrganizerAndTimeAndSubject;

+(MSGraphWelcomeScreenMeetingInformation*) UnknownEnumValue;

+(MSGraphWelcomeScreenMeetingInformation*) welcomeScreenMeetingInformationWithEnumValue:(MSGraphWelcomeScreenMeetingInformationValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWelcomeScreenMeetingInformationValue enumValue;

@end


@interface NSString (MSGraphWelcomeScreenMeetingInformation)

- (MSGraphWelcomeScreenMeetingInformation*) toMSGraphWelcomeScreenMeetingInformation;

@end
