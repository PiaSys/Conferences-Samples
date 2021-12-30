// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMailTipsTypeValue){

	MSGraphMailTipsTypeAutomaticReplies = 1,
	MSGraphMailTipsTypeMailboxFullStatus = 2,
	MSGraphMailTipsTypeCustomMailTip = 4,
	MSGraphMailTipsTypeExternalMemberCount = 8,
	MSGraphMailTipsTypeTotalMemberCount = 16,
	MSGraphMailTipsTypeMaxMessageSize = 32,
	MSGraphMailTipsTypeDeliveryRestriction = 64,
	MSGraphMailTipsTypeModerationStatus = 128,
	MSGraphMailTipsTypeRecipientScope = 256,
	MSGraphMailTipsTypeRecipientSuggestions = 512,
    MSGraphMailTipsTypeEndOfEnum
};

@interface MSGraphMailTipsType : NSObject

+(MSGraphMailTipsType*) automaticReplies;
+(MSGraphMailTipsType*) mailboxFullStatus;
+(MSGraphMailTipsType*) customMailTip;
+(MSGraphMailTipsType*) externalMemberCount;
+(MSGraphMailTipsType*) totalMemberCount;
+(MSGraphMailTipsType*) maxMessageSize;
+(MSGraphMailTipsType*) deliveryRestriction;
+(MSGraphMailTipsType*) moderationStatus;
+(MSGraphMailTipsType*) recipientScope;
+(MSGraphMailTipsType*) recipientSuggestions;

+(MSGraphMailTipsType*) UnknownEnumValue;

+(MSGraphMailTipsType*) mailTipsTypeWithEnumValue:(MSGraphMailTipsTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMailTipsTypeValue enumValue;

@end


@interface NSString (MSGraphMailTipsType)

- (MSGraphMailTipsType*) toMSGraphMailTipsType;

@end
