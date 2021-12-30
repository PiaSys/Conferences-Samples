// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConversationThread()
{
    NSArray* _toRecipients;
    NSString* _topic;
    BOOL _hasAttachments;
    NSDate* _lastDeliveredDateTime;
    NSArray* _uniqueSenders;
    NSArray* _ccRecipients;
    NSString* _preview;
    BOOL _isLocked;
    NSArray* _posts;
}
@end

@implementation MSGraphConversationThread

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.conversationThread";
    }
    return self;
}
- (NSArray*) toRecipients
{
    if(!_toRecipients){
        
    NSMutableArray *toRecipientsResult = [NSMutableArray array];
    NSArray *toRecipients = self.dictionary[@"toRecipients"];

    if ([toRecipients isKindOfClass:[NSArray class]]){
        for (id tempRecipient in toRecipients){
            [toRecipientsResult addObject:tempRecipient];
        }
    }

    _toRecipients = toRecipientsResult;
        
    }
    return _toRecipients;
}

- (void) setToRecipients: (NSArray*) val
{
    _toRecipients = val;
    self.dictionary[@"toRecipients"] = val;
}

- (NSString*) topic
{
    return self.dictionary[@"topic"];
}

- (void) setTopic: (NSString*) val
{
    self.dictionary[@"topic"] = val;
}

- (BOOL) hasAttachments
{
    _hasAttachments = [self.dictionary[@"hasAttachments"] boolValue];
    return _hasAttachments;
}

- (void) setHasAttachments: (BOOL) val
{
    _hasAttachments = val;
    self.dictionary[@"hasAttachments"] = @(val);
}

- (NSDate*) lastDeliveredDateTime
{
    if(!_lastDeliveredDateTime){
        _lastDeliveredDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastDeliveredDateTime"]];
    }
    return _lastDeliveredDateTime;
}

- (void) setLastDeliveredDateTime: (NSDate*) val
{
    _lastDeliveredDateTime = val;
    self.dictionary[@"lastDeliveredDateTime"] = [val ms_toString];
}

- (NSArray*) uniqueSenders
{
    return self.dictionary[@"uniqueSenders"];
}

- (void) setUniqueSenders: (NSArray*) val
{
    self.dictionary[@"uniqueSenders"] = val;
}

- (NSArray*) ccRecipients
{
    if(!_ccRecipients){
        
    NSMutableArray *ccRecipientsResult = [NSMutableArray array];
    NSArray *ccRecipients = self.dictionary[@"ccRecipients"];

    if ([ccRecipients isKindOfClass:[NSArray class]]){
        for (id tempRecipient in ccRecipients){
            [ccRecipientsResult addObject:tempRecipient];
        }
    }

    _ccRecipients = ccRecipientsResult;
        
    }
    return _ccRecipients;
}

- (void) setCcRecipients: (NSArray*) val
{
    _ccRecipients = val;
    self.dictionary[@"ccRecipients"] = val;
}

- (NSString*) preview
{
    return self.dictionary[@"preview"];
}

- (void) setPreview: (NSString*) val
{
    self.dictionary[@"preview"] = val;
}

- (BOOL) isLocked
{
    _isLocked = [self.dictionary[@"isLocked"] boolValue];
    return _isLocked;
}

- (void) setIsLocked: (BOOL) val
{
    _isLocked = val;
    self.dictionary[@"isLocked"] = @(val);
}

- (NSArray*) posts
{
    if(!_posts){
        
    NSMutableArray *postsResult = [NSMutableArray array];
    NSArray *posts = self.dictionary[@"posts"];

    if ([posts isKindOfClass:[NSArray class]]){
        for (id tempPost in posts){
            [postsResult addObject:tempPost];
        }
    }

    _posts = postsResult;
        
    }
    return _posts;
}

- (void) setPosts: (NSArray*) val
{
    _posts = val;
    self.dictionary[@"posts"] = val;
}


@end
