// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMessageRulePredicates()
{
    NSArray* _categories;
    NSArray* _subjectContains;
    NSArray* _bodyContains;
    NSArray* _bodyOrSubjectContains;
    NSArray* _senderContains;
    NSArray* _recipientContains;
    NSArray* _headerContains;
    MSGraphMessageActionFlag* _messageActionFlag;
    MSGraphImportance* _importance;
    MSGraphSensitivity* _sensitivity;
    NSArray* _fromAddresses;
    NSArray* _sentToAddresses;
    BOOL _sentToMe;
    BOOL _sentOnlyToMe;
    BOOL _sentCcMe;
    BOOL _sentToOrCcMe;
    BOOL _notSentToMe;
    BOOL _hasAttachments;
    BOOL _isApprovalRequest;
    BOOL _isAutomaticForward;
    BOOL _isAutomaticReply;
    BOOL _isEncrypted;
    BOOL _isMeetingRequest;
    BOOL _isMeetingResponse;
    BOOL _isNonDeliveryReport;
    BOOL _isPermissionControlled;
    BOOL _isReadReceipt;
    BOOL _isSigned;
    BOOL _isVoicemail;
    MSGraphSizeRange* _withinSizeRange;
}
@end

@implementation MSGraphMessageRulePredicates

- (NSArray*) categories
{
    if([[NSNull null] isEqual:self.dictionary[@"categories"]])
    {
        return nil;
    }   
    return self.dictionary[@"categories"];
}

- (void) setCategories: (NSArray*) val
{
    self.dictionary[@"categories"] = val;
}

- (NSArray*) subjectContains
{
    if([[NSNull null] isEqual:self.dictionary[@"subjectContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"subjectContains"];
}

- (void) setSubjectContains: (NSArray*) val
{
    self.dictionary[@"subjectContains"] = val;
}

- (NSArray*) bodyContains
{
    if([[NSNull null] isEqual:self.dictionary[@"bodyContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"bodyContains"];
}

- (void) setBodyContains: (NSArray*) val
{
    self.dictionary[@"bodyContains"] = val;
}

- (NSArray*) bodyOrSubjectContains
{
    if([[NSNull null] isEqual:self.dictionary[@"bodyOrSubjectContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"bodyOrSubjectContains"];
}

- (void) setBodyOrSubjectContains: (NSArray*) val
{
    self.dictionary[@"bodyOrSubjectContains"] = val;
}

- (NSArray*) senderContains
{
    if([[NSNull null] isEqual:self.dictionary[@"senderContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"senderContains"];
}

- (void) setSenderContains: (NSArray*) val
{
    self.dictionary[@"senderContains"] = val;
}

- (NSArray*) recipientContains
{
    if([[NSNull null] isEqual:self.dictionary[@"recipientContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipientContains"];
}

- (void) setRecipientContains: (NSArray*) val
{
    self.dictionary[@"recipientContains"] = val;
}

- (NSArray*) headerContains
{
    if([[NSNull null] isEqual:self.dictionary[@"headerContains"]])
    {
        return nil;
    }   
    return self.dictionary[@"headerContains"];
}

- (void) setHeaderContains: (NSArray*) val
{
    self.dictionary[@"headerContains"] = val;
}

- (MSGraphMessageActionFlag*) messageActionFlag
{
    if(!_messageActionFlag){
        _messageActionFlag = [self.dictionary[@"messageActionFlag"] toMSGraphMessageActionFlag];
    }
    return _messageActionFlag;
}

- (void) setMessageActionFlag: (MSGraphMessageActionFlag*) val
{
    _messageActionFlag = val;
    self.dictionary[@"messageActionFlag"] = val;
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

- (MSGraphSensitivity*) sensitivity
{
    if(!_sensitivity){
        _sensitivity = [self.dictionary[@"sensitivity"] toMSGraphSensitivity];
    }
    return _sensitivity;
}

- (void) setSensitivity: (MSGraphSensitivity*) val
{
    _sensitivity = val;
    self.dictionary[@"sensitivity"] = val;
}

- (NSArray*) fromAddresses
{
    if(!_fromAddresses){
        
    NSMutableArray *fromAddressesResult = [NSMutableArray array];
    NSArray *fromAddresses = self.dictionary[@"fromAddresses"];

    if ([fromAddresses isKindOfClass:[NSArray class]]){
        for (id tempRecipient in fromAddresses){
            [fromAddressesResult addObject:tempRecipient];
        }
    }

    _fromAddresses = fromAddressesResult;
        
    }
    return _fromAddresses;
}

- (void) setFromAddresses: (NSArray*) val
{
    _fromAddresses = val;
    self.dictionary[@"fromAddresses"] = val;
}

- (NSArray*) sentToAddresses
{
    if(!_sentToAddresses){
        
    NSMutableArray *sentToAddressesResult = [NSMutableArray array];
    NSArray *sentToAddresses = self.dictionary[@"sentToAddresses"];

    if ([sentToAddresses isKindOfClass:[NSArray class]]){
        for (id tempRecipient in sentToAddresses){
            [sentToAddressesResult addObject:tempRecipient];
        }
    }

    _sentToAddresses = sentToAddressesResult;
        
    }
    return _sentToAddresses;
}

- (void) setSentToAddresses: (NSArray*) val
{
    _sentToAddresses = val;
    self.dictionary[@"sentToAddresses"] = val;
}

- (BOOL) sentToMe
{
    _sentToMe = [self.dictionary[@"sentToMe"] boolValue];
    return _sentToMe;
}

- (void) setSentToMe: (BOOL) val
{
    _sentToMe = val;
    self.dictionary[@"sentToMe"] = @(val);
}

- (BOOL) sentOnlyToMe
{
    _sentOnlyToMe = [self.dictionary[@"sentOnlyToMe"] boolValue];
    return _sentOnlyToMe;
}

- (void) setSentOnlyToMe: (BOOL) val
{
    _sentOnlyToMe = val;
    self.dictionary[@"sentOnlyToMe"] = @(val);
}

- (BOOL) sentCcMe
{
    _sentCcMe = [self.dictionary[@"sentCcMe"] boolValue];
    return _sentCcMe;
}

- (void) setSentCcMe: (BOOL) val
{
    _sentCcMe = val;
    self.dictionary[@"sentCcMe"] = @(val);
}

- (BOOL) sentToOrCcMe
{
    _sentToOrCcMe = [self.dictionary[@"sentToOrCcMe"] boolValue];
    return _sentToOrCcMe;
}

- (void) setSentToOrCcMe: (BOOL) val
{
    _sentToOrCcMe = val;
    self.dictionary[@"sentToOrCcMe"] = @(val);
}

- (BOOL) notSentToMe
{
    _notSentToMe = [self.dictionary[@"notSentToMe"] boolValue];
    return _notSentToMe;
}

- (void) setNotSentToMe: (BOOL) val
{
    _notSentToMe = val;
    self.dictionary[@"notSentToMe"] = @(val);
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

- (BOOL) isApprovalRequest
{
    _isApprovalRequest = [self.dictionary[@"isApprovalRequest"] boolValue];
    return _isApprovalRequest;
}

- (void) setIsApprovalRequest: (BOOL) val
{
    _isApprovalRequest = val;
    self.dictionary[@"isApprovalRequest"] = @(val);
}

- (BOOL) isAutomaticForward
{
    _isAutomaticForward = [self.dictionary[@"isAutomaticForward"] boolValue];
    return _isAutomaticForward;
}

- (void) setIsAutomaticForward: (BOOL) val
{
    _isAutomaticForward = val;
    self.dictionary[@"isAutomaticForward"] = @(val);
}

- (BOOL) isAutomaticReply
{
    _isAutomaticReply = [self.dictionary[@"isAutomaticReply"] boolValue];
    return _isAutomaticReply;
}

- (void) setIsAutomaticReply: (BOOL) val
{
    _isAutomaticReply = val;
    self.dictionary[@"isAutomaticReply"] = @(val);
}

- (BOOL) isEncrypted
{
    _isEncrypted = [self.dictionary[@"isEncrypted"] boolValue];
    return _isEncrypted;
}

- (void) setIsEncrypted: (BOOL) val
{
    _isEncrypted = val;
    self.dictionary[@"isEncrypted"] = @(val);
}

- (BOOL) isMeetingRequest
{
    _isMeetingRequest = [self.dictionary[@"isMeetingRequest"] boolValue];
    return _isMeetingRequest;
}

- (void) setIsMeetingRequest: (BOOL) val
{
    _isMeetingRequest = val;
    self.dictionary[@"isMeetingRequest"] = @(val);
}

- (BOOL) isMeetingResponse
{
    _isMeetingResponse = [self.dictionary[@"isMeetingResponse"] boolValue];
    return _isMeetingResponse;
}

- (void) setIsMeetingResponse: (BOOL) val
{
    _isMeetingResponse = val;
    self.dictionary[@"isMeetingResponse"] = @(val);
}

- (BOOL) isNonDeliveryReport
{
    _isNonDeliveryReport = [self.dictionary[@"isNonDeliveryReport"] boolValue];
    return _isNonDeliveryReport;
}

- (void) setIsNonDeliveryReport: (BOOL) val
{
    _isNonDeliveryReport = val;
    self.dictionary[@"isNonDeliveryReport"] = @(val);
}

- (BOOL) isPermissionControlled
{
    _isPermissionControlled = [self.dictionary[@"isPermissionControlled"] boolValue];
    return _isPermissionControlled;
}

- (void) setIsPermissionControlled: (BOOL) val
{
    _isPermissionControlled = val;
    self.dictionary[@"isPermissionControlled"] = @(val);
}

- (BOOL) isReadReceipt
{
    _isReadReceipt = [self.dictionary[@"isReadReceipt"] boolValue];
    return _isReadReceipt;
}

- (void) setIsReadReceipt: (BOOL) val
{
    _isReadReceipt = val;
    self.dictionary[@"isReadReceipt"] = @(val);
}

- (BOOL) isSigned
{
    _isSigned = [self.dictionary[@"isSigned"] boolValue];
    return _isSigned;
}

- (void) setIsSigned: (BOOL) val
{
    _isSigned = val;
    self.dictionary[@"isSigned"] = @(val);
}

- (BOOL) isVoicemail
{
    _isVoicemail = [self.dictionary[@"isVoicemail"] boolValue];
    return _isVoicemail;
}

- (void) setIsVoicemail: (BOOL) val
{
    _isVoicemail = val;
    self.dictionary[@"isVoicemail"] = @(val);
}

- (MSGraphSizeRange*) withinSizeRange
{
    if(!_withinSizeRange){
        _withinSizeRange = [[MSGraphSizeRange alloc] initWithDictionary: self.dictionary[@"withinSizeRange"]];
    }
    return _withinSizeRange;
}

- (void) setWithinSizeRange: (MSGraphSizeRange*) val
{
    _withinSizeRange = val;
    self.dictionary[@"withinSizeRange"] = val;
}

@end
