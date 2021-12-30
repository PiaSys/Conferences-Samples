// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRiskLevelValue){

	MSGraphRiskLevelLow = 0,
	MSGraphRiskLevelMedium = 1,
	MSGraphRiskLevelHigh = 2,
	MSGraphRiskLevelHidden = 3,
	MSGraphRiskLevelNone = 4,
	MSGraphRiskLevelUnknownFutureValue = 5,
    MSGraphRiskLevelEndOfEnum
};

@interface MSGraphRiskLevel : NSObject

+(MSGraphRiskLevel*) low;
+(MSGraphRiskLevel*) medium;
+(MSGraphRiskLevel*) high;
+(MSGraphRiskLevel*) hidden;
+(MSGraphRiskLevel*) none;
+(MSGraphRiskLevel*) unknownFutureValue;

+(MSGraphRiskLevel*) UnknownEnumValue;

+(MSGraphRiskLevel*) riskLevelWithEnumValue:(MSGraphRiskLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRiskLevelValue enumValue;

@end


@interface NSString (MSGraphRiskLevel)

- (MSGraphRiskLevel*) toMSGraphRiskLevel;

@end
