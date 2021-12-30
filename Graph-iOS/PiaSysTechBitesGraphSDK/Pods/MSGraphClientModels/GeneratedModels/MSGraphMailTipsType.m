// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMailTipsType.h"

@interface MSGraphMailTipsType () {
    MSGraphMailTipsTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMailTipsTypeValue enumValue;
@end

@implementation MSGraphMailTipsType

+ (MSGraphMailTipsType*) automaticReplies {
    static MSGraphMailTipsType *_automaticReplies;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _automaticReplies = [[MSGraphMailTipsType alloc] init];
        _automaticReplies.enumValue = MSGraphMailTipsTypeAutomaticReplies;
    });
    return _automaticReplies;
}
+ (MSGraphMailTipsType*) mailboxFullStatus {
    static MSGraphMailTipsType *_mailboxFullStatus;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mailboxFullStatus = [[MSGraphMailTipsType alloc] init];
        _mailboxFullStatus.enumValue = MSGraphMailTipsTypeMailboxFullStatus;
    });
    return _mailboxFullStatus;
}
+ (MSGraphMailTipsType*) customMailTip {
    static MSGraphMailTipsType *_customMailTip;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _customMailTip = [[MSGraphMailTipsType alloc] init];
        _customMailTip.enumValue = MSGraphMailTipsTypeCustomMailTip;
    });
    return _customMailTip;
}
+ (MSGraphMailTipsType*) externalMemberCount {
    static MSGraphMailTipsType *_externalMemberCount;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _externalMemberCount = [[MSGraphMailTipsType alloc] init];
        _externalMemberCount.enumValue = MSGraphMailTipsTypeExternalMemberCount;
    });
    return _externalMemberCount;
}
+ (MSGraphMailTipsType*) totalMemberCount {
    static MSGraphMailTipsType *_totalMemberCount;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _totalMemberCount = [[MSGraphMailTipsType alloc] init];
        _totalMemberCount.enumValue = MSGraphMailTipsTypeTotalMemberCount;
    });
    return _totalMemberCount;
}
+ (MSGraphMailTipsType*) maxMessageSize {
    static MSGraphMailTipsType *_maxMessageSize;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _maxMessageSize = [[MSGraphMailTipsType alloc] init];
        _maxMessageSize.enumValue = MSGraphMailTipsTypeMaxMessageSize;
    });
    return _maxMessageSize;
}
+ (MSGraphMailTipsType*) deliveryRestriction {
    static MSGraphMailTipsType *_deliveryRestriction;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deliveryRestriction = [[MSGraphMailTipsType alloc] init];
        _deliveryRestriction.enumValue = MSGraphMailTipsTypeDeliveryRestriction;
    });
    return _deliveryRestriction;
}
+ (MSGraphMailTipsType*) moderationStatus {
    static MSGraphMailTipsType *_moderationStatus;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _moderationStatus = [[MSGraphMailTipsType alloc] init];
        _moderationStatus.enumValue = MSGraphMailTipsTypeModerationStatus;
    });
    return _moderationStatus;
}
+ (MSGraphMailTipsType*) recipientScope {
    static MSGraphMailTipsType *_recipientScope;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _recipientScope = [[MSGraphMailTipsType alloc] init];
        _recipientScope.enumValue = MSGraphMailTipsTypeRecipientScope;
    });
    return _recipientScope;
}
+ (MSGraphMailTipsType*) recipientSuggestions {
    static MSGraphMailTipsType *_recipientSuggestions;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _recipientSuggestions = [[MSGraphMailTipsType alloc] init];
        _recipientSuggestions.enumValue = MSGraphMailTipsTypeRecipientSuggestions;
    });
    return _recipientSuggestions;
}

+ (MSGraphMailTipsType*) UnknownEnumValue {
    static MSGraphMailTipsType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMailTipsType alloc] init];
        _unknownValue.enumValue = MSGraphMailTipsTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMailTipsType*) mailTipsTypeWithEnumValue:(MSGraphMailTipsTypeValue)val {

    switch(val)
    {
        case MSGraphMailTipsTypeAutomaticReplies:
            return [MSGraphMailTipsType automaticReplies];
        case MSGraphMailTipsTypeMailboxFullStatus:
            return [MSGraphMailTipsType mailboxFullStatus];
        case MSGraphMailTipsTypeCustomMailTip:
            return [MSGraphMailTipsType customMailTip];
        case MSGraphMailTipsTypeExternalMemberCount:
            return [MSGraphMailTipsType externalMemberCount];
        case MSGraphMailTipsTypeTotalMemberCount:
            return [MSGraphMailTipsType totalMemberCount];
        case MSGraphMailTipsTypeMaxMessageSize:
            return [MSGraphMailTipsType maxMessageSize];
        case MSGraphMailTipsTypeDeliveryRestriction:
            return [MSGraphMailTipsType deliveryRestriction];
        case MSGraphMailTipsTypeModerationStatus:
            return [MSGraphMailTipsType moderationStatus];
        case MSGraphMailTipsTypeRecipientScope:
            return [MSGraphMailTipsType recipientScope];
        case MSGraphMailTipsTypeRecipientSuggestions:
            return [MSGraphMailTipsType recipientSuggestions];
        case MSGraphMailTipsTypeEndOfEnum:
        default:
            return [MSGraphMailTipsType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMailTipsTypeAutomaticReplies:
            return @"automaticReplies";
        case MSGraphMailTipsTypeMailboxFullStatus:
            return @"mailboxFullStatus";
        case MSGraphMailTipsTypeCustomMailTip:
            return @"customMailTip";
        case MSGraphMailTipsTypeExternalMemberCount:
            return @"externalMemberCount";
        case MSGraphMailTipsTypeTotalMemberCount:
            return @"totalMemberCount";
        case MSGraphMailTipsTypeMaxMessageSize:
            return @"maxMessageSize";
        case MSGraphMailTipsTypeDeliveryRestriction:
            return @"deliveryRestriction";
        case MSGraphMailTipsTypeModerationStatus:
            return @"moderationStatus";
        case MSGraphMailTipsTypeRecipientScope:
            return @"recipientScope";
        case MSGraphMailTipsTypeRecipientSuggestions:
            return @"recipientSuggestions";
        case MSGraphMailTipsTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMailTipsTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMailTipsType)

- (MSGraphMailTipsType*) toMSGraphMailTipsType{

    if([self isEqualToString:@"automaticReplies"])
    {
          return [MSGraphMailTipsType automaticReplies];
    }
    else if([self isEqualToString:@"mailboxFullStatus"])
    {
          return [MSGraphMailTipsType mailboxFullStatus];
    }
    else if([self isEqualToString:@"customMailTip"])
    {
          return [MSGraphMailTipsType customMailTip];
    }
    else if([self isEqualToString:@"externalMemberCount"])
    {
          return [MSGraphMailTipsType externalMemberCount];
    }
    else if([self isEqualToString:@"totalMemberCount"])
    {
          return [MSGraphMailTipsType totalMemberCount];
    }
    else if([self isEqualToString:@"maxMessageSize"])
    {
          return [MSGraphMailTipsType maxMessageSize];
    }
    else if([self isEqualToString:@"deliveryRestriction"])
    {
          return [MSGraphMailTipsType deliveryRestriction];
    }
    else if([self isEqualToString:@"moderationStatus"])
    {
          return [MSGraphMailTipsType moderationStatus];
    }
    else if([self isEqualToString:@"recipientScope"])
    {
          return [MSGraphMailTipsType recipientScope];
    }
    else if([self isEqualToString:@"recipientSuggestions"])
    {
          return [MSGraphMailTipsType recipientSuggestions];
    }
    else {
        return [MSGraphMailTipsType UnknownEnumValue];
    }
}

@end
