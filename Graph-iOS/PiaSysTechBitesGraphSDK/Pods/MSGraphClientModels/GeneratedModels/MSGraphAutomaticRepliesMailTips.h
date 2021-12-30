// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphLocaleInfo, MSGraphDateTimeTimeZone; 


#import "MSObject.h"

@interface MSGraphAutomaticRepliesMailTips : MSObject

@property (nullable, nonatomic, setter=setMessage:, getter=message) NSString* message;
@property (nullable, nonatomic, setter=setMessageLanguage:, getter=messageLanguage) MSGraphLocaleInfo* messageLanguage;
@property (nullable, nonatomic, setter=setScheduledStartTime:, getter=scheduledStartTime) MSGraphDateTimeTimeZone* scheduledStartTime;
@property (nullable, nonatomic, setter=setScheduledEndTime:, getter=scheduledEndTime) MSGraphDateTimeTimeZone* scheduledEndTime;

@end
