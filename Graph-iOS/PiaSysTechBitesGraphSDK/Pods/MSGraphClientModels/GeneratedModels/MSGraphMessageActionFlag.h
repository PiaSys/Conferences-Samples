// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMessageActionFlagValue){

	MSGraphMessageActionFlagAny = 0,
	MSGraphMessageActionFlagCall = 1,
	MSGraphMessageActionFlagDoNotForward = 2,
	MSGraphMessageActionFlagFollowUp = 3,
	MSGraphMessageActionFlagFyi = 4,
	MSGraphMessageActionFlagForward = 5,
	MSGraphMessageActionFlagNoResponseNecessary = 6,
	MSGraphMessageActionFlagRead = 7,
	MSGraphMessageActionFlagReply = 8,
	MSGraphMessageActionFlagReplyToAll = 9,
	MSGraphMessageActionFlagReview = 10,
    MSGraphMessageActionFlagEndOfEnum
};

@interface MSGraphMessageActionFlag : NSObject

+(MSGraphMessageActionFlag*) any;
+(MSGraphMessageActionFlag*) call;
+(MSGraphMessageActionFlag*) doNotForward;
+(MSGraphMessageActionFlag*) followUp;
+(MSGraphMessageActionFlag*) fyi;
+(MSGraphMessageActionFlag*) forward;
+(MSGraphMessageActionFlag*) noResponseNecessary;
+(MSGraphMessageActionFlag*) read;
+(MSGraphMessageActionFlag*) reply;
+(MSGraphMessageActionFlag*) replyToAll;
+(MSGraphMessageActionFlag*) review;

+(MSGraphMessageActionFlag*) UnknownEnumValue;

+(MSGraphMessageActionFlag*) messageActionFlagWithEnumValue:(MSGraphMessageActionFlagValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMessageActionFlagValue enumValue;

@end


@interface NSString (MSGraphMessageActionFlag)

- (MSGraphMessageActionFlag*) toMSGraphMessageActionFlag;

@end
