// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDateTimeTimeZone; 
#import "MSGraphAutomaticRepliesStatus.h"
#import "MSGraphExternalAudienceScope.h"


#import "MSObject.h"

@interface MSGraphAutomaticRepliesSetting : MSObject

@property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphAutomaticRepliesStatus* status;
@property (nullable, nonatomic, setter=setExternalAudience:, getter=externalAudience) MSGraphExternalAudienceScope* externalAudience;
@property (nullable, nonatomic, setter=setScheduledStartDateTime:, getter=scheduledStartDateTime) MSGraphDateTimeTimeZone* scheduledStartDateTime;
@property (nullable, nonatomic, setter=setScheduledEndDateTime:, getter=scheduledEndDateTime) MSGraphDateTimeTimeZone* scheduledEndDateTime;
@property (nullable, nonatomic, setter=setInternalReplyMessage:, getter=internalReplyMessage) NSString* internalReplyMessage;
@property (nullable, nonatomic, setter=setExternalReplyMessage:, getter=externalReplyMessage) NSString* externalReplyMessage;

@end
