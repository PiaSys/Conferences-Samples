// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMailFolder()
{
    NSString* _displayName;
    NSString* _parentFolderId;
    int32_t _childFolderCount;
    int32_t _unreadItemCount;
    int32_t _totalItemCount;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    NSArray* _messages;
    NSArray* _messageRules;
    NSArray* _childFolders;
}
@end

@implementation MSGraphMailFolder

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mailFolder";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) parentFolderId
{
    if([[NSNull null] isEqual:self.dictionary[@"parentFolderId"]])
    {
        return nil;
    }   
    return self.dictionary[@"parentFolderId"];
}

- (void) setParentFolderId: (NSString*) val
{
    self.dictionary[@"parentFolderId"] = val;
}

- (int32_t) childFolderCount
{
    _childFolderCount = [self.dictionary[@"childFolderCount"] intValue];
    return _childFolderCount;
}

- (void) setChildFolderCount: (int32_t) val
{
    _childFolderCount = val;
    self.dictionary[@"childFolderCount"] = @(val);
}

- (int32_t) unreadItemCount
{
    _unreadItemCount = [self.dictionary[@"unreadItemCount"] intValue];
    return _unreadItemCount;
}

- (void) setUnreadItemCount: (int32_t) val
{
    _unreadItemCount = val;
    self.dictionary[@"unreadItemCount"] = @(val);
}

- (int32_t) totalItemCount
{
    _totalItemCount = [self.dictionary[@"totalItemCount"] intValue];
    return _totalItemCount;
}

- (void) setTotalItemCount: (int32_t) val
{
    _totalItemCount = val;
    self.dictionary[@"totalItemCount"] = @(val);
}

- (NSArray*) singleValueExtendedProperties
{
    if(!_singleValueExtendedProperties){
        
    NSMutableArray *singleValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *singleValueExtendedProperties = self.dictionary[@"singleValueExtendedProperties"];

    if ([singleValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempSingleValueLegacyExtendedProperty in singleValueExtendedProperties){
            [singleValueExtendedPropertiesResult addObject:tempSingleValueLegacyExtendedProperty];
        }
    }

    _singleValueExtendedProperties = singleValueExtendedPropertiesResult;
        
    }
    return _singleValueExtendedProperties;
}

- (void) setSingleValueExtendedProperties: (NSArray*) val
{
    _singleValueExtendedProperties = val;
    self.dictionary[@"singleValueExtendedProperties"] = val;
}

- (NSArray*) multiValueExtendedProperties
{
    if(!_multiValueExtendedProperties){
        
    NSMutableArray *multiValueExtendedPropertiesResult = [NSMutableArray array];
    NSArray *multiValueExtendedProperties = self.dictionary[@"multiValueExtendedProperties"];

    if ([multiValueExtendedProperties isKindOfClass:[NSArray class]]){
        for (id tempMultiValueLegacyExtendedProperty in multiValueExtendedProperties){
            [multiValueExtendedPropertiesResult addObject:tempMultiValueLegacyExtendedProperty];
        }
    }

    _multiValueExtendedProperties = multiValueExtendedPropertiesResult;
        
    }
    return _multiValueExtendedProperties;
}

- (void) setMultiValueExtendedProperties: (NSArray*) val
{
    _multiValueExtendedProperties = val;
    self.dictionary[@"multiValueExtendedProperties"] = val;
}

- (NSArray*) messages
{
    if(!_messages){
        
    NSMutableArray *messagesResult = [NSMutableArray array];
    NSArray *messages = self.dictionary[@"messages"];

    if ([messages isKindOfClass:[NSArray class]]){
        for (id tempMessage in messages){
            [messagesResult addObject:tempMessage];
        }
    }

    _messages = messagesResult;
        
    }
    return _messages;
}

- (void) setMessages: (NSArray*) val
{
    _messages = val;
    self.dictionary[@"messages"] = val;
}

- (NSArray*) messageRules
{
    if(!_messageRules){
        
    NSMutableArray *messageRulesResult = [NSMutableArray array];
    NSArray *messageRules = self.dictionary[@"messageRules"];

    if ([messageRules isKindOfClass:[NSArray class]]){
        for (id tempMessageRule in messageRules){
            [messageRulesResult addObject:tempMessageRule];
        }
    }

    _messageRules = messageRulesResult;
        
    }
    return _messageRules;
}

- (void) setMessageRules: (NSArray*) val
{
    _messageRules = val;
    self.dictionary[@"messageRules"] = val;
}

- (NSArray*) childFolders
{
    if(!_childFolders){
        
    NSMutableArray *childFoldersResult = [NSMutableArray array];
    NSArray *childFolders = self.dictionary[@"childFolders"];

    if ([childFolders isKindOfClass:[NSArray class]]){
        for (id tempMailFolder in childFolders){
            [childFoldersResult addObject:tempMailFolder];
        }
    }

    _childFolders = childFoldersResult;
        
    }
    return _childFolders;
}

- (void) setChildFolders: (NSArray*) val
{
    _childFolders = val;
    self.dictionary[@"childFolders"] = val;
}


@end
