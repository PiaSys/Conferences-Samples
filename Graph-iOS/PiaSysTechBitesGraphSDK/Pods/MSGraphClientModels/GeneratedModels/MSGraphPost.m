// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPost()
{
    MSGraphItemBody* _body;
    NSDate* _receivedDateTime;
    BOOL _hasAttachments;
    MSGraphRecipient* _from;
    MSGraphRecipient* _sender;
    NSString* _conversationThreadId;
    NSArray* _newParticipants;
    NSString* _conversationId;
    MSGraphPost* _inReplyTo;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    NSArray* _extensions;
    NSArray* _attachments;
}
@end

@implementation MSGraphPost

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.post";
    }
    return self;
}
- (MSGraphItemBody*) body
{
    if(!_body){
        _body = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"body"]];
    }
    return _body;
}

- (void) setBody: (MSGraphItemBody*) val
{
    _body = val;
    self.dictionary[@"body"] = val;
}

- (NSDate*) receivedDateTime
{
    if(!_receivedDateTime){
        _receivedDateTime = [NSDate ms_dateFromString: self.dictionary[@"receivedDateTime"]];
    }
    return _receivedDateTime;
}

- (void) setReceivedDateTime: (NSDate*) val
{
    _receivedDateTime = val;
    self.dictionary[@"receivedDateTime"] = [val ms_toString];
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

- (MSGraphRecipient*) from
{
    if(!_from){
        _from = [[MSGraphRecipient alloc] initWithDictionary: self.dictionary[@"from"]];
    }
    return _from;
}

- (void) setFrom: (MSGraphRecipient*) val
{
    _from = val;
    self.dictionary[@"from"] = val;
}

- (MSGraphRecipient*) sender
{
    if(!_sender){
        _sender = [[MSGraphRecipient alloc] initWithDictionary: self.dictionary[@"sender"]];
    }
    return _sender;
}

- (void) setSender: (MSGraphRecipient*) val
{
    _sender = val;
    self.dictionary[@"sender"] = val;
}

- (NSString*) conversationThreadId
{
    if([[NSNull null] isEqual:self.dictionary[@"conversationThreadId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conversationThreadId"];
}

- (void) setConversationThreadId: (NSString*) val
{
    self.dictionary[@"conversationThreadId"] = val;
}

- (NSArray*) getNewParticipants
{
    if(!_newParticipants){
        
    NSMutableArray *newParticipantsResult = [NSMutableArray array];
    NSArray *newParticipants = self.dictionary[@"newParticipants"];

    if ([newParticipants isKindOfClass:[NSArray class]]){
        for (id tempRecipient in newParticipants){
            [newParticipantsResult addObject:tempRecipient];
        }
    }

    _newParticipants = newParticipantsResult;
        
    }
    return _newParticipants;
}

- (void) setNewParticipants: (NSArray*) val
{
    _newParticipants = val;
    self.dictionary[@"newParticipants"] = val;
}

- (NSString*) conversationId
{
    if([[NSNull null] isEqual:self.dictionary[@"conversationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"conversationId"];
}

- (void) setConversationId: (NSString*) val
{
    self.dictionary[@"conversationId"] = val;
}

- (MSGraphPost*) inReplyTo
{
    if(!_inReplyTo){
        _inReplyTo = [[MSGraphPost alloc] initWithDictionary: self.dictionary[@"inReplyTo"]];
    }
    return _inReplyTo;
}

- (void) setInReplyTo: (MSGraphPost*) val
{
    _inReplyTo = val;
    self.dictionary[@"inReplyTo"] = val;
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

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}

- (NSArray*) attachments
{
    if(!_attachments){
        
    NSMutableArray *attachmentsResult = [NSMutableArray array];
    NSArray *attachments = self.dictionary[@"attachments"];

    if ([attachments isKindOfClass:[NSArray class]]){
        for (id tempAttachment in attachments){
            [attachmentsResult addObject:tempAttachment];
        }
    }

    _attachments = attachmentsResult;
        
    }
    return _attachments;
}

- (void) setAttachments: (NSArray*) val
{
    _attachments = val;
    self.dictionary[@"attachments"] = val;
}


@end
