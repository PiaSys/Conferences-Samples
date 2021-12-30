// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMiracastChannelValue){

	MSGraphMiracastChannelUserDefined = 0,
	MSGraphMiracastChannelOne = 1,
	MSGraphMiracastChannelTwo = 2,
	MSGraphMiracastChannelThree = 3,
	MSGraphMiracastChannelFour = 4,
	MSGraphMiracastChannelFive = 5,
	MSGraphMiracastChannelSix = 6,
	MSGraphMiracastChannelSeven = 7,
	MSGraphMiracastChannelEight = 8,
	MSGraphMiracastChannelNine = 9,
	MSGraphMiracastChannelTen = 10,
	MSGraphMiracastChannelEleven = 11,
	MSGraphMiracastChannelThirtySix = 36,
	MSGraphMiracastChannelForty = 40,
	MSGraphMiracastChannelFortyFour = 44,
	MSGraphMiracastChannelFortyEight = 48,
	MSGraphMiracastChannelOneHundredFortyNine = 149,
	MSGraphMiracastChannelOneHundredFiftyThree = 153,
	MSGraphMiracastChannelOneHundredFiftySeven = 157,
	MSGraphMiracastChannelOneHundredSixtyOne = 161,
	MSGraphMiracastChannelOneHundredSixtyFive = 165,
    MSGraphMiracastChannelEndOfEnum
};

@interface MSGraphMiracastChannel : NSObject

+(MSGraphMiracastChannel*) userDefined;
+(MSGraphMiracastChannel*) one;
+(MSGraphMiracastChannel*) two;
+(MSGraphMiracastChannel*) three;
+(MSGraphMiracastChannel*) four;
+(MSGraphMiracastChannel*) five;
+(MSGraphMiracastChannel*) six;
+(MSGraphMiracastChannel*) seven;
+(MSGraphMiracastChannel*) eight;
+(MSGraphMiracastChannel*) nine;
+(MSGraphMiracastChannel*) ten;
+(MSGraphMiracastChannel*) eleven;
+(MSGraphMiracastChannel*) thirtySix;
+(MSGraphMiracastChannel*) forty;
+(MSGraphMiracastChannel*) fortyFour;
+(MSGraphMiracastChannel*) fortyEight;
+(MSGraphMiracastChannel*) oneHundredFortyNine;
+(MSGraphMiracastChannel*) oneHundredFiftyThree;
+(MSGraphMiracastChannel*) oneHundredFiftySeven;
+(MSGraphMiracastChannel*) oneHundredSixtyOne;
+(MSGraphMiracastChannel*) oneHundredSixtyFive;

+(MSGraphMiracastChannel*) UnknownEnumValue;

+(MSGraphMiracastChannel*) miracastChannelWithEnumValue:(MSGraphMiracastChannelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMiracastChannelValue enumValue;

@end


@interface NSString (MSGraphMiracastChannel)

- (MSGraphMiracastChannel*) toMSGraphMiracastChannel;

@end
