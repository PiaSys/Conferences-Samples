// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAlertFeedbackValue){

	MSGraphAlertFeedbackUnknown = 0,
	MSGraphAlertFeedbackTruePositive = 1,
	MSGraphAlertFeedbackFalsePositive = 2,
	MSGraphAlertFeedbackBenignPositive = 3,
	MSGraphAlertFeedbackUnknownFutureValue = 127,
    MSGraphAlertFeedbackEndOfEnum
};

@interface MSGraphAlertFeedback : NSObject

+(MSGraphAlertFeedback*) unknown;
+(MSGraphAlertFeedback*) truePositive;
+(MSGraphAlertFeedback*) falsePositive;
+(MSGraphAlertFeedback*) benignPositive;
+(MSGraphAlertFeedback*) unknownFutureValue;

+(MSGraphAlertFeedback*) UnknownEnumValue;

+(MSGraphAlertFeedback*) alertFeedbackWithEnumValue:(MSGraphAlertFeedbackValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAlertFeedbackValue enumValue;

@end


@interface NSString (MSGraphAlertFeedback)

- (MSGraphAlertFeedback*) toMSGraphAlertFeedback;

@end
