// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemBody, MSGraphRecipient, MSGraphSingleValueLegacyExtendedProperty, MSGraphMultiValueLegacyExtendedProperty, MSGraphExtension, MSGraphAttachment; 


#import "MSGraphOutlookItem.h"

@interface MSGraphPost : MSGraphOutlookItem

  @property (nullable, nonatomic, setter=setBody:, getter=body) MSGraphItemBody* body;
    @property (nonnull, nonatomic, setter=setReceivedDateTime:, getter=receivedDateTime) NSDate* receivedDateTime;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nonnull, nonatomic, setter=setFrom:, getter=from) MSGraphRecipient* from;
    @property (nullable, nonatomic, setter=setSender:, getter=sender) MSGraphRecipient* sender;
    @property (nullable, nonatomic, setter=setConversationThreadId:, getter=conversationThreadId) NSString* conversationThreadId;
    @property (nonnull, nonatomic, setter=setNewParticipants:, getter=getNewParticipants) NSArray* newParticipants;
    @property (nullable, nonatomic, setter=setConversationId:, getter=conversationId) NSString* conversationId;
    @property (nullable, nonatomic, setter=setInReplyTo:, getter=inReplyTo) MSGraphPost* inReplyTo;
    @property (nullable, nonatomic, setter=setSingleValueExtendedProperties:, getter=singleValueExtendedProperties) NSArray* singleValueExtendedProperties;
    @property (nullable, nonatomic, setter=setMultiValueExtendedProperties:, getter=multiValueExtendedProperties) NSArray* multiValueExtendedProperties;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
    @property (nullable, nonatomic, setter=setAttachments:, getter=attachments) NSArray* attachments;
  
@end
