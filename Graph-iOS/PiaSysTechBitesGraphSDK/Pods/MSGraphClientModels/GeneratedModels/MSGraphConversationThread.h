// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphRecipient, MSGraphPost; 


#import "MSGraphEntity.h"

@interface MSGraphConversationThread : MSGraphEntity

  @property (nonnull, nonatomic, setter=setToRecipients:, getter=toRecipients) NSArray* toRecipients;
    @property (nonnull, nonatomic, setter=setTopic:, getter=topic) NSString* topic;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nonnull, nonatomic, setter=setLastDeliveredDateTime:, getter=lastDeliveredDateTime) NSDate* lastDeliveredDateTime;
    @property (nonnull, nonatomic, setter=setUniqueSenders:, getter=uniqueSenders) NSArray* uniqueSenders;
    @property (nonnull, nonatomic, setter=setCcRecipients:, getter=ccRecipients) NSArray* ccRecipients;
    @property (nonnull, nonatomic, setter=setPreview:, getter=preview) NSString* preview;
    @property (nonatomic, setter=setIsLocked:, getter=isLocked) BOOL isLocked;
    @property (nullable, nonatomic, setter=setPosts:, getter=posts) NSArray* posts;
  
@end
