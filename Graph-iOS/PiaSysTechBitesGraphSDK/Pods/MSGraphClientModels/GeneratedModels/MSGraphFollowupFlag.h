// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDateTimeTimeZone; 
#import "MSGraphFollowupFlagStatus.h"


#import "MSObject.h"

@interface MSGraphFollowupFlag : MSObject

@property (nullable, nonatomic, setter=setCompletedDateTime:, getter=completedDateTime) MSGraphDateTimeTimeZone* completedDateTime;
@property (nullable, nonatomic, setter=setDueDateTime:, getter=dueDateTime) MSGraphDateTimeTimeZone* dueDateTime;
@property (nullable, nonatomic, setter=setStartDateTime:, getter=startDateTime) MSGraphDateTimeTimeZone* startDateTime;
@property (nullable, nonatomic, setter=setFlagStatus:, getter=flagStatus) MSGraphFollowupFlagStatus* flagStatus;

@end
