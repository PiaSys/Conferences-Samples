// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphEmailAddress, MSGraphAutomaticRepliesMailTips, MSGraphRecipient, MSGraphMailTipsError; 
#import "MSGraphRecipientScopeType.h"


#import "MSObject.h"

@interface MSGraphMailTips : MSObject

@property (nullable, nonatomic, setter=setEmailAddress:, getter=emailAddress) MSGraphEmailAddress* emailAddress;
@property (nullable, nonatomic, setter=setAutomaticReplies:, getter=automaticReplies) MSGraphAutomaticRepliesMailTips* automaticReplies;
@property (nonatomic, setter=setMailboxFull:, getter=mailboxFull) BOOL mailboxFull;
@property (nullable, nonatomic, setter=setCustomMailTip:, getter=customMailTip) NSString* customMailTip;
@property (nonatomic, setter=setExternalMemberCount:, getter=externalMemberCount) int32_t externalMemberCount;
@property (nonatomic, setter=setTotalMemberCount:, getter=totalMemberCount) int32_t totalMemberCount;
@property (nonatomic, setter=setDeliveryRestricted:, getter=deliveryRestricted) BOOL deliveryRestricted;
@property (nonatomic, setter=setIsModerated:, getter=isModerated) BOOL isModerated;
@property (nullable, nonatomic, setter=setRecipientScope:, getter=recipientScope) MSGraphRecipientScopeType* recipientScope;
@property (nullable, nonatomic, setter=setRecipientSuggestions:, getter=recipientSuggestions) NSArray* recipientSuggestions;
@property (nonatomic, setter=setMaxMessageSize:, getter=maxMessageSize) int32_t maxMessageSize;
@property (nullable, nonatomic, setter=setError:, getter=error) MSGraphMailTipsError* error;

@end
