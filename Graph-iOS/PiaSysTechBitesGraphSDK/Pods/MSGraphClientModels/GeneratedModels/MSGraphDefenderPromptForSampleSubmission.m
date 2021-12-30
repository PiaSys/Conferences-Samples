// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDefenderPromptForSampleSubmission.h"

@interface MSGraphDefenderPromptForSampleSubmission () {
    MSGraphDefenderPromptForSampleSubmissionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDefenderPromptForSampleSubmissionValue enumValue;
@end

@implementation MSGraphDefenderPromptForSampleSubmission

+ (MSGraphDefenderPromptForSampleSubmission*) userDefined {
    static MSGraphDefenderPromptForSampleSubmission *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _userDefined.enumValue = MSGraphDefenderPromptForSampleSubmissionUserDefined;
    });
    return _userDefined;
}
+ (MSGraphDefenderPromptForSampleSubmission*) alwaysPrompt {
    static MSGraphDefenderPromptForSampleSubmission *_alwaysPrompt;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alwaysPrompt = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _alwaysPrompt.enumValue = MSGraphDefenderPromptForSampleSubmissionAlwaysPrompt;
    });
    return _alwaysPrompt;
}
+ (MSGraphDefenderPromptForSampleSubmission*) promptBeforeSendingPersonalData {
    static MSGraphDefenderPromptForSampleSubmission *_promptBeforeSendingPersonalData;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _promptBeforeSendingPersonalData = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _promptBeforeSendingPersonalData.enumValue = MSGraphDefenderPromptForSampleSubmissionPromptBeforeSendingPersonalData;
    });
    return _promptBeforeSendingPersonalData;
}
+ (MSGraphDefenderPromptForSampleSubmission*) neverSendData {
    static MSGraphDefenderPromptForSampleSubmission *_neverSendData;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _neverSendData = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _neverSendData.enumValue = MSGraphDefenderPromptForSampleSubmissionNeverSendData;
    });
    return _neverSendData;
}
+ (MSGraphDefenderPromptForSampleSubmission*) sendAllDataWithoutPrompting {
    static MSGraphDefenderPromptForSampleSubmission *_sendAllDataWithoutPrompting;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendAllDataWithoutPrompting = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _sendAllDataWithoutPrompting.enumValue = MSGraphDefenderPromptForSampleSubmissionSendAllDataWithoutPrompting;
    });
    return _sendAllDataWithoutPrompting;
}

+ (MSGraphDefenderPromptForSampleSubmission*) UnknownEnumValue {
    static MSGraphDefenderPromptForSampleSubmission *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDefenderPromptForSampleSubmission alloc] init];
        _unknownValue.enumValue = MSGraphDefenderPromptForSampleSubmissionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDefenderPromptForSampleSubmission*) defenderPromptForSampleSubmissionWithEnumValue:(MSGraphDefenderPromptForSampleSubmissionValue)val {

    switch(val)
    {
        case MSGraphDefenderPromptForSampleSubmissionUserDefined:
            return [MSGraphDefenderPromptForSampleSubmission userDefined];
        case MSGraphDefenderPromptForSampleSubmissionAlwaysPrompt:
            return [MSGraphDefenderPromptForSampleSubmission alwaysPrompt];
        case MSGraphDefenderPromptForSampleSubmissionPromptBeforeSendingPersonalData:
            return [MSGraphDefenderPromptForSampleSubmission promptBeforeSendingPersonalData];
        case MSGraphDefenderPromptForSampleSubmissionNeverSendData:
            return [MSGraphDefenderPromptForSampleSubmission neverSendData];
        case MSGraphDefenderPromptForSampleSubmissionSendAllDataWithoutPrompting:
            return [MSGraphDefenderPromptForSampleSubmission sendAllDataWithoutPrompting];
        case MSGraphDefenderPromptForSampleSubmissionEndOfEnum:
        default:
            return [MSGraphDefenderPromptForSampleSubmission UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDefenderPromptForSampleSubmissionUserDefined:
            return @"userDefined";
        case MSGraphDefenderPromptForSampleSubmissionAlwaysPrompt:
            return @"alwaysPrompt";
        case MSGraphDefenderPromptForSampleSubmissionPromptBeforeSendingPersonalData:
            return @"promptBeforeSendingPersonalData";
        case MSGraphDefenderPromptForSampleSubmissionNeverSendData:
            return @"neverSendData";
        case MSGraphDefenderPromptForSampleSubmissionSendAllDataWithoutPrompting:
            return @"sendAllDataWithoutPrompting";
        case MSGraphDefenderPromptForSampleSubmissionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDefenderPromptForSampleSubmissionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDefenderPromptForSampleSubmission)

- (MSGraphDefenderPromptForSampleSubmission*) toMSGraphDefenderPromptForSampleSubmission{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphDefenderPromptForSampleSubmission userDefined];
    }
    else if([self isEqualToString:@"alwaysPrompt"])
    {
          return [MSGraphDefenderPromptForSampleSubmission alwaysPrompt];
    }
    else if([self isEqualToString:@"promptBeforeSendingPersonalData"])
    {
          return [MSGraphDefenderPromptForSampleSubmission promptBeforeSendingPersonalData];
    }
    else if([self isEqualToString:@"neverSendData"])
    {
          return [MSGraphDefenderPromptForSampleSubmission neverSendData];
    }
    else if([self isEqualToString:@"sendAllDataWithoutPrompting"])
    {
          return [MSGraphDefenderPromptForSampleSubmission sendAllDataWithoutPrompting];
    }
    else {
        return [MSGraphDefenderPromptForSampleSubmission UnknownEnumValue];
    }
}

@end
