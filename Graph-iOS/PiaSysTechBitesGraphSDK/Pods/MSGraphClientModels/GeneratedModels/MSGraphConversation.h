// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphConversationThread; 


#import "MSGraphEntity.h"

@interface MSGraphConversation : MSGraphEntity

  @property (nonnull, nonatomic, setter=setTopic:, getter=topic) NSString* topic;
    @property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
    @property (nonnull, nonatomic, setter=setLastDeliveredDateTime:, getter=lastDeliveredDateTime) NSDate* lastDeliveredDateTime;
    @property (nonnull, nonatomic, setter=setUniqueSenders:, getter=uniqueSenders) NSArray* uniqueSenders;
    @property (nonnull, nonatomic, setter=setPreview:, getter=preview) NSString* preview;
    @property (nullable, nonatomic, setter=setThreads:, getter=threads) NSArray* threads;
  
@end
