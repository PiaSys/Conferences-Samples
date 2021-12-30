// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMessage()
{
    NSDate* _receivedDateTime;
    NSDate* _sentDateTime;
    BOOL _hasAttachments;
    NSString* _internetMessageId;
    NSArray* _internetMessageHeaders;
    NSString* _subject;
    MSGraphItemBody* _body;
    NSString* _bodyPreview;
    MSGraphImportance* _importance;
    NSString* _parentFolderId;
    MSGraphRecipient* _sender;
    MSGraphRecipient* _from;
    NSArray* _toRecipients;
    NSArray* _ccRecipients;
    NSArray* _bccRecipients;
    NSArray* _replyTo;
    NSString* _conversationId;
    MSGraphItemBody* _uniqueBody;
    BOOL _isDeliveryReceiptRequested;
    BOOL _isReadReceiptRequested;
    BOOL _isRead;
    BOOL _isDraft;
    NSString* _webLink;
    MSGraphInferenceClassificationType* _inferenceClassification;
    MSGraphFollowupFlag* _flag;
    NSArray* _singleValueExtendedProperties;
    NSArray* _multiValueExtendedProperties;
    NSArray* _attachments;
    NSArray* _extensions;
}
@end

@implementation MSGraphMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.message";
    }
    return self;
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

- (NSDate*) sentDateTime
{
    if(!_sentDateTime){
        _sentDateTime = [NSDate ms_dateFromString: self.dictionary[@"sentDateTime"]];
    }
    return _sentDateTime;
}

- (void) setSentDateTime: (NSDate*) val
{
    _sentDateTime = val;
    self.dictionary[@"sentDateTime"] = [val ms_toString];
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

- (NSString*) internetMessageId
{
    if([[NSNull null] isEqual:self.dictionary[@"internetMessageId"]])
    {
        return nil;
    }   
    return self.dictionary[@"internetMessageId"];
}

- (void) setInternetMessageId: (NSString*) val
{
    self.dictionary[@"internetMessageId"] = val;
}

- (NSArray*) internetMessageHeaders
{
    if(!_internetMessageHeaders){
        
    NSMutableArray *internetMessageHeadersResult = [NSMutableArray array];
    NSArray *internetMessageHeaders = self.dictionary[@"internetMessageHeaders"];

    if ([internetMessageHeaders isKindOfClass:[NSArray class]]){
        for (id tempInternetMessageHeader in internetMessageHeaders){
            [internetMessageHeadersResult addObject:tempInternetMessageHeader];
        }
    }

    _internetMessageHeaders = internetMessageHeadersResult;
        
    }
    return _internetMessageHeaders;
}

- (void) setInternetMessageHeaders: (NSArray*) val
{
    _internetMessageHeaders = val;
    self.dictionary[@"internetMessageHeaders"] = val;
}

- (NSString*) subject
{
    if([[NSNull null] isEqual:self.dictionary[@"subject"]])
    {
        return nil;
    }   
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
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

- (NSString*) bodyPreview
{
    if([[NSNull null] isEqual:self.dictionary[@"bodyPreview"]])
    {
        return nil;
    }   
    return self.dictionary[@"bodyPreview"];
}

- (void) setBodyPreview: (NSString*) val
{
    self.dictionary[@"bodyPreview"] = val;
}

- (MSGraphImportance*) importance
{
    if(!_importance){
        _importance = [self.dictionary[@"importance"] toMSGraphImportance];
    }
    return _importance;
}

- (void) setImportance: (MSGraphImportance*) val
{
    _importance = val;
    self.dictionary[@"importance"] = val;
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

- (NSArray*) bccRecipients
{
    if(!_bccRecipients){
        
    NSMutableArray *bccRecipientsResult = [NSMutableArray array];
    NSArray *bccRecipients = self.dictionary[@"bccRecipients"];

    if ([bccRecipients isKindOfClass:[NSArray class]]){
        for (id tempRecipient in bccRecipients){
            [bccRecipientsResult addObject:tempRecipient];
        }
    }

    _bccRecipients = bccRecipientsResult;
        
    }
    return _bccRecipients;
}

- (void) setBccRecipients: (NSArray*) val
{
    _bccRecipients = val;
    self.dictionary[@"bccRecipients"] = val;
}

- (NSArray*) replyTo
{
    if(!_replyTo){
        
    NSMutableArray *replyToResult = [NSMutableArray array];
    NSArray *replyTo = self.dictionary[@"replyTo"];

    if ([replyTo isKindOfClass:[NSArray class]]){
        for (id tempRecipient in replyTo){
            [replyToResult addObject:tempRecipient];
        }
    }

    _replyTo = replyToResult;
        
    }
    return _replyTo;
}

- (void) setReplyTo: (NSArray*) val
{
    _replyTo = val;
    self.dictionary[@"replyTo"] = val;
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

- (MSGraphItemBody*) uniqueBody
{
    if(!_uniqueBody){
        _uniqueBody = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"uniqueBody"]];
    }
    return _uniqueBody;
}

- (void) setUniqueBody: (MSGraphItemBody*) val
{
    _uniqueBody = val;
    self.dictionary[@"uniqueBody"] = val;
}

- (BOOL) isDeliveryReceiptRequested
{
    _isDeliveryReceiptRequested = [self.dictionary[@"isDeliveryReceiptRequested"] boolValue];
    return _isDeliveryReceiptRequested;
}

- (void) setIsDeliveryReceiptRequested: (BOOL) val
{
    _isDeliveryReceiptRequested = val;
    self.dictionary[@"isDeliveryReceiptRequested"] = @(val);
}

- (BOOL) isReadReceiptRequested
{
    _isReadReceiptRequested = [self.dictionary[@"isReadReceiptRequested"] boolValue];
    return _isReadReceiptRequested;
}

- (void) setIsReadReceiptRequested: (BOOL) val
{
    _isReadReceiptRequested = val;
    self.dictionary[@"isReadReceiptRequested"] = @(val);
}

- (BOOL) isRead
{
    _isRead = [self.dictionary[@"isRead"] boolValue];
    return _isRead;
}

- (void) setIsRead: (BOOL) val
{
    _isRead = val;
    self.dictionary[@"isRead"] = @(val);
}

- (BOOL) isDraft
{
    _isDraft = [self.dictionary[@"isDraft"] boolValue];
    return _isDraft;
}

- (void) setIsDraft: (BOOL) val
{
    _isDraft = val;
    self.dictionary[@"isDraft"] = @(val);
}

- (NSString*) webLink
{
    if([[NSNull null] isEqual:self.dictionary[@"webLink"]])
    {
        return nil;
    }   
    return self.dictionary[@"webLink"];
}

- (void) setWebLink: (NSString*) val
{
    self.dictionary[@"webLink"] = val;
}

- (MSGraphInferenceClassificationType*) inferenceClassification
{
    if(!_inferenceClassification){
        _inferenceClassification = [self.dictionary[@"inferenceClassification"] toMSGraphInferenceClassificationType];
    }
    return _inferenceClassification;
}

- (void) setInferenceClassification: (MSGraphInferenceClassificationType*) val
{
    _inferenceClassification = val;
    self.dictionary[@"inferenceClassification"] = val;
}

- (MSGraphFollowupFlag*) flag
{
    if(!_flag){
        _flag = [[MSGraphFollowupFlag alloc] initWithDictionary: self.dictionary[@"flag"]];
    }
    return _flag;
}

- (void) setFlag: (MSGraphFollowupFlag*) val
{
    _flag = val;
    self.dictionary[@"flag"] = val;
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


@end
