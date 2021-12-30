// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphChatInfo : MSObject

@property (nullable, nonatomic, setter=setThreadId:, getter=threadId) NSString* threadId;
@property (nullable, nonatomic, setter=setMessageId:, getter=messageId) NSString* messageId;
@property (nullable, nonatomic, setter=setReplyChainMessageId:, getter=replyChainMessageId) NSString* replyChainMessageId;

@end
