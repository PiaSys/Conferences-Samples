// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphRecipient, MSGraphSizeRange; 
#import "MSGraphMessageActionFlag.h"
#import "MSGraphImportance.h"
#import "MSGraphSensitivity.h"


#import "MSObject.h"

@interface MSGraphMessageRulePredicates : MSObject

@property (nullable, nonatomic, setter=setCategories:, getter=categories) NSArray* categories;
@property (nullable, nonatomic, setter=setSubjectContains:, getter=subjectContains) NSArray* subjectContains;
@property (nullable, nonatomic, setter=setBodyContains:, getter=bodyContains) NSArray* bodyContains;
@property (nullable, nonatomic, setter=setBodyOrSubjectContains:, getter=bodyOrSubjectContains) NSArray* bodyOrSubjectContains;
@property (nullable, nonatomic, setter=setSenderContains:, getter=senderContains) NSArray* senderContains;
@property (nullable, nonatomic, setter=setRecipientContains:, getter=recipientContains) NSArray* recipientContains;
@property (nullable, nonatomic, setter=setHeaderContains:, getter=headerContains) NSArray* headerContains;
@property (nullable, nonatomic, setter=setMessageActionFlag:, getter=messageActionFlag) MSGraphMessageActionFlag* messageActionFlag;
@property (nullable, nonatomic, setter=setImportance:, getter=importance) MSGraphImportance* importance;
@property (nullable, nonatomic, setter=setSensitivity:, getter=sensitivity) MSGraphSensitivity* sensitivity;
@property (nullable, nonatomic, setter=setFromAddresses:, getter=fromAddresses) NSArray* fromAddresses;
@property (nullable, nonatomic, setter=setSentToAddresses:, getter=sentToAddresses) NSArray* sentToAddresses;
@property (nonatomic, setter=setSentToMe:, getter=sentToMe) BOOL sentToMe;
@property (nonatomic, setter=setSentOnlyToMe:, getter=sentOnlyToMe) BOOL sentOnlyToMe;
@property (nonatomic, setter=setSentCcMe:, getter=sentCcMe) BOOL sentCcMe;
@property (nonatomic, setter=setSentToOrCcMe:, getter=sentToOrCcMe) BOOL sentToOrCcMe;
@property (nonatomic, setter=setNotSentToMe:, getter=notSentToMe) BOOL notSentToMe;
@property (nonatomic, setter=setHasAttachments:, getter=hasAttachments) BOOL hasAttachments;
@property (nonatomic, setter=setIsApprovalRequest:, getter=isApprovalRequest) BOOL isApprovalRequest;
@property (nonatomic, setter=setIsAutomaticForward:, getter=isAutomaticForward) BOOL isAutomaticForward;
@property (nonatomic, setter=setIsAutomaticReply:, getter=isAutomaticReply) BOOL isAutomaticReply;
@property (nonatomic, setter=setIsEncrypted:, getter=isEncrypted) BOOL isEncrypted;
@property (nonatomic, setter=setIsMeetingRequest:, getter=isMeetingRequest) BOOL isMeetingRequest;
@property (nonatomic, setter=setIsMeetingResponse:, getter=isMeetingResponse) BOOL isMeetingResponse;
@property (nonatomic, setter=setIsNonDeliveryReport:, getter=isNonDeliveryReport) BOOL isNonDeliveryReport;
@property (nonatomic, setter=setIsPermissionControlled:, getter=isPermissionControlled) BOOL isPermissionControlled;
@property (nonatomic, setter=setIsReadReceipt:, getter=isReadReceipt) BOOL isReadReceipt;
@property (nonatomic, setter=setIsSigned:, getter=isSigned) BOOL isSigned;
@property (nonatomic, setter=setIsVoicemail:, getter=isVoicemail) BOOL isVoicemail;
@property (nullable, nonatomic, setter=setWithinSizeRange:, getter=withinSizeRange) MSGraphSizeRange* withinSizeRange;

@end
