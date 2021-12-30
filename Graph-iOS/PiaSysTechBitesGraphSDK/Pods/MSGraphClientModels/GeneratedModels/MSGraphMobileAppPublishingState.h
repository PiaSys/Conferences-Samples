// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMobileAppPublishingStateValue){

	MSGraphMobileAppPublishingStateNotPublished = 0,
	MSGraphMobileAppPublishingStateProcessing = 1,
	MSGraphMobileAppPublishingStatePublished = 2,
    MSGraphMobileAppPublishingStateEndOfEnum
};

@interface MSGraphMobileAppPublishingState : NSObject

+(MSGraphMobileAppPublishingState*) notPublished;
+(MSGraphMobileAppPublishingState*) processing;
+(MSGraphMobileAppPublishingState*) published;

+(MSGraphMobileAppPublishingState*) UnknownEnumValue;

+(MSGraphMobileAppPublishingState*) mobileAppPublishingStateWithEnumValue:(MSGraphMobileAppPublishingStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMobileAppPublishingStateValue enumValue;

@end


@interface NSString (MSGraphMobileAppPublishingState)

- (MSGraphMobileAppPublishingState*) toMSGraphMobileAppPublishingState;

@end
