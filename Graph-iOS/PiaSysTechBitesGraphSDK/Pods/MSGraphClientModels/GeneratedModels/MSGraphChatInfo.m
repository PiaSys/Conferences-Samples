// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChatInfo()
{
    NSString* _threadId;
    NSString* _messageId;
    NSString* _replyChainMessageId;
}
@end

@implementation MSGraphChatInfo

- (NSString*) threadId
{
    if([[NSNull null] isEqual:self.dictionary[@"threadId"]])
    {
        return nil;
    }   
    return self.dictionary[@"threadId"];
}

- (void) setThreadId: (NSString*) val
{
    self.dictionary[@"threadId"] = val;
}

- (NSString*) messageId
{
    if([[NSNull null] isEqual:self.dictionary[@"messageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"messageId"];
}

- (void) setMessageId: (NSString*) val
{
    self.dictionary[@"messageId"] = val;
}

- (NSString*) replyChainMessageId
{
    if([[NSNull null] isEqual:self.dictionary[@"replyChainMessageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"replyChainMessageId"];
}

- (void) setReplyChainMessageId: (NSString*) val
{
    self.dictionary[@"replyChainMessageId"] = val;
}

@end
