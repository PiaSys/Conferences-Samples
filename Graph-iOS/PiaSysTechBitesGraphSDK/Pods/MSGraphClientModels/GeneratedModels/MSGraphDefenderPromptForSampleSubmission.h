// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDefenderPromptForSampleSubmissionValue){

	MSGraphDefenderPromptForSampleSubmissionUserDefined = 0,
	MSGraphDefenderPromptForSampleSubmissionAlwaysPrompt = 1,
	MSGraphDefenderPromptForSampleSubmissionPromptBeforeSendingPersonalData = 2,
	MSGraphDefenderPromptForSampleSubmissionNeverSendData = 3,
	MSGraphDefenderPromptForSampleSubmissionSendAllDataWithoutPrompting = 4,
    MSGraphDefenderPromptForSampleSubmissionEndOfEnum
};

@interface MSGraphDefenderPromptForSampleSubmission : NSObject

+(MSGraphDefenderPromptForSampleSubmission*) userDefined;
+(MSGraphDefenderPromptForSampleSubmission*) alwaysPrompt;
+(MSGraphDefenderPromptForSampleSubmission*) promptBeforeSendingPersonalData;
+(MSGraphDefenderPromptForSampleSubmission*) neverSendData;
+(MSGraphDefenderPromptForSampleSubmission*) sendAllDataWithoutPrompting;

+(MSGraphDefenderPromptForSampleSubmission*) UnknownEnumValue;

+(MSGraphDefenderPromptForSampleSubmission*) defenderPromptForSampleSubmissionWithEnumValue:(MSGraphDefenderPromptForSampleSubmissionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDefenderPromptForSampleSubmissionValue enumValue;

@end


@interface NSString (MSGraphDefenderPromptForSampleSubmission)

- (MSGraphDefenderPromptForSampleSubmission*) toMSGraphDefenderPromptForSampleSubmission;

@end
