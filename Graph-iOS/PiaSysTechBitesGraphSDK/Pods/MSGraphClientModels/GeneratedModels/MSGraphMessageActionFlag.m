// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMessageActionFlag.h"

@interface MSGraphMessageActionFlag () {
    MSGraphMessageActionFlagValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMessageActionFlagValue enumValue;
@end

@implementation MSGraphMessageActionFlag

+ (MSGraphMessageActionFlag*) any {
    static MSGraphMessageActionFlag *_any;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _any = [[MSGraphMessageActionFlag alloc] init];
        _any.enumValue = MSGraphMessageActionFlagAny;
    });
    return _any;
}
+ (MSGraphMessageActionFlag*) call {
    static MSGraphMessageActionFlag *_call;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _call = [[MSGraphMessageActionFlag alloc] init];
        _call.enumValue = MSGraphMessageActionFlagCall;
    });
    return _call;
}
+ (MSGraphMessageActionFlag*) doNotForward {
    static MSGraphMessageActionFlag *_doNotForward;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _doNotForward = [[MSGraphMessageActionFlag alloc] init];
        _doNotForward.enumValue = MSGraphMessageActionFlagDoNotForward;
    });
    return _doNotForward;
}
+ (MSGraphMessageActionFlag*) followUp {
    static MSGraphMessageActionFlag *_followUp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _followUp = [[MSGraphMessageActionFlag alloc] init];
        _followUp.enumValue = MSGraphMessageActionFlagFollowUp;
    });
    return _followUp;
}
+ (MSGraphMessageActionFlag*) fyi {
    static MSGraphMessageActionFlag *_fyi;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fyi = [[MSGraphMessageActionFlag alloc] init];
        _fyi.enumValue = MSGraphMessageActionFlagFyi;
    });
    return _fyi;
}
+ (MSGraphMessageActionFlag*) forward {
    static MSGraphMessageActionFlag *_forward;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _forward = [[MSGraphMessageActionFlag alloc] init];
        _forward.enumValue = MSGraphMessageActionFlagForward;
    });
    return _forward;
}
+ (MSGraphMessageActionFlag*) noResponseNecessary {
    static MSGraphMessageActionFlag *_noResponseNecessary;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noResponseNecessary = [[MSGraphMessageActionFlag alloc] init];
        _noResponseNecessary.enumValue = MSGraphMessageActionFlagNoResponseNecessary;
    });
    return _noResponseNecessary;
}
+ (MSGraphMessageActionFlag*) read {
    static MSGraphMessageActionFlag *_read;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _read = [[MSGraphMessageActionFlag alloc] init];
        _read.enumValue = MSGraphMessageActionFlagRead;
    });
    return _read;
}
+ (MSGraphMessageActionFlag*) reply {
    static MSGraphMessageActionFlag *_reply;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reply = [[MSGraphMessageActionFlag alloc] init];
        _reply.enumValue = MSGraphMessageActionFlagReply;
    });
    return _reply;
}
+ (MSGraphMessageActionFlag*) replyToAll {
    static MSGraphMessageActionFlag *_replyToAll;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _replyToAll = [[MSGraphMessageActionFlag alloc] init];
        _replyToAll.enumValue = MSGraphMessageActionFlagReplyToAll;
    });
    return _replyToAll;
}
+ (MSGraphMessageActionFlag*) review {
    static MSGraphMessageActionFlag *_review;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _review = [[MSGraphMessageActionFlag alloc] init];
        _review.enumValue = MSGraphMessageActionFlagReview;
    });
    return _review;
}

+ (MSGraphMessageActionFlag*) UnknownEnumValue {
    static MSGraphMessageActionFlag *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMessageActionFlag alloc] init];
        _unknownValue.enumValue = MSGraphMessageActionFlagEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMessageActionFlag*) messageActionFlagWithEnumValue:(MSGraphMessageActionFlagValue)val {

    switch(val)
    {
        case MSGraphMessageActionFlagAny:
            return [MSGraphMessageActionFlag any];
        case MSGraphMessageActionFlagCall:
            return [MSGraphMessageActionFlag call];
        case MSGraphMessageActionFlagDoNotForward:
            return [MSGraphMessageActionFlag doNotForward];
        case MSGraphMessageActionFlagFollowUp:
            return [MSGraphMessageActionFlag followUp];
        case MSGraphMessageActionFlagFyi:
            return [MSGraphMessageActionFlag fyi];
        case MSGraphMessageActionFlagForward:
            return [MSGraphMessageActionFlag forward];
        case MSGraphMessageActionFlagNoResponseNecessary:
            return [MSGraphMessageActionFlag noResponseNecessary];
        case MSGraphMessageActionFlagRead:
            return [MSGraphMessageActionFlag read];
        case MSGraphMessageActionFlagReply:
            return [MSGraphMessageActionFlag reply];
        case MSGraphMessageActionFlagReplyToAll:
            return [MSGraphMessageActionFlag replyToAll];
        case MSGraphMessageActionFlagReview:
            return [MSGraphMessageActionFlag review];
        case MSGraphMessageActionFlagEndOfEnum:
        default:
            return [MSGraphMessageActionFlag UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMessageActionFlagAny:
            return @"any";
        case MSGraphMessageActionFlagCall:
            return @"call";
        case MSGraphMessageActionFlagDoNotForward:
            return @"doNotForward";
        case MSGraphMessageActionFlagFollowUp:
            return @"followUp";
        case MSGraphMessageActionFlagFyi:
            return @"fyi";
        case MSGraphMessageActionFlagForward:
            return @"forward";
        case MSGraphMessageActionFlagNoResponseNecessary:
            return @"noResponseNecessary";
        case MSGraphMessageActionFlagRead:
            return @"read";
        case MSGraphMessageActionFlagReply:
            return @"reply";
        case MSGraphMessageActionFlagReplyToAll:
            return @"replyToAll";
        case MSGraphMessageActionFlagReview:
            return @"review";
        case MSGraphMessageActionFlagEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMessageActionFlagValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMessageActionFlag)

- (MSGraphMessageActionFlag*) toMSGraphMessageActionFlag{

    if([self isEqualToString:@"any"])
    {
          return [MSGraphMessageActionFlag any];
    }
    else if([self isEqualToString:@"call"])
    {
          return [MSGraphMessageActionFlag call];
    }
    else if([self isEqualToString:@"doNotForward"])
    {
          return [MSGraphMessageActionFlag doNotForward];
    }
    else if([self isEqualToString:@"followUp"])
    {
          return [MSGraphMessageActionFlag followUp];
    }
    else if([self isEqualToString:@"fyi"])
    {
          return [MSGraphMessageActionFlag fyi];
    }
    else if([self isEqualToString:@"forward"])
    {
          return [MSGraphMessageActionFlag forward];
    }
    else if([self isEqualToString:@"noResponseNecessary"])
    {
          return [MSGraphMessageActionFlag noResponseNecessary];
    }
    else if([self isEqualToString:@"read"])
    {
          return [MSGraphMessageActionFlag read];
    }
    else if([self isEqualToString:@"reply"])
    {
          return [MSGraphMessageActionFlag reply];
    }
    else if([self isEqualToString:@"replyToAll"])
    {
          return [MSGraphMessageActionFlag replyToAll];
    }
    else if([self isEqualToString:@"review"])
    {
          return [MSGraphMessageActionFlag review];
    }
    else {
        return [MSGraphMessageActionFlag UnknownEnumValue];
    }
}

@end
