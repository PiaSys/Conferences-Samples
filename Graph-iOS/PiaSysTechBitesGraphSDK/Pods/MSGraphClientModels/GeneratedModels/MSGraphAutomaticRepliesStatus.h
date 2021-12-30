// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAutomaticRepliesStatusValue){

	MSGraphAutomaticRepliesStatusDisabled = 0,
	MSGraphAutomaticRepliesStatusAlwaysEnabled = 1,
	MSGraphAutomaticRepliesStatusScheduled = 2,
    MSGraphAutomaticRepliesStatusEndOfEnum
};

@interface MSGraphAutomaticRepliesStatus : NSObject

+(MSGraphAutomaticRepliesStatus*) disabled;
+(MSGraphAutomaticRepliesStatus*) alwaysEnabled;
+(MSGraphAutomaticRepliesStatus*) scheduled;

+(MSGraphAutomaticRepliesStatus*) UnknownEnumValue;

+(MSGraphAutomaticRepliesStatus*) automaticRepliesStatusWithEnumValue:(MSGraphAutomaticRepliesStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAutomaticRepliesStatusValue enumValue;

@end


@interface NSString (MSGraphAutomaticRepliesStatus)

- (MSGraphAutomaticRepliesStatus*) toMSGraphAutomaticRepliesStatus;

@end
