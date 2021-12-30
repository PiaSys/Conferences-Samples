// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFollowupFlagStatusValue){

	MSGraphFollowupFlagStatusNotFlagged = 0,
	MSGraphFollowupFlagStatusComplete = 1,
	MSGraphFollowupFlagStatusFlagged = 2,
    MSGraphFollowupFlagStatusEndOfEnum
};

@interface MSGraphFollowupFlagStatus : NSObject

+(MSGraphFollowupFlagStatus*) notFlagged;
+(MSGraphFollowupFlagStatus*) complete;
+(MSGraphFollowupFlagStatus*) flagged;

+(MSGraphFollowupFlagStatus*) UnknownEnumValue;

+(MSGraphFollowupFlagStatus*) followupFlagStatusWithEnumValue:(MSGraphFollowupFlagStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFollowupFlagStatusValue enumValue;

@end


@interface NSString (MSGraphFollowupFlagStatus)

- (MSGraphFollowupFlagStatus*) toMSGraphFollowupFlagStatus;

@end
