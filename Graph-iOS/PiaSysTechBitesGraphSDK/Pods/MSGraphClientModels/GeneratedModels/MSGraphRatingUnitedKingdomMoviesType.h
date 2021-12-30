// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingUnitedKingdomMoviesTypeValue){

	MSGraphRatingUnitedKingdomMoviesTypeAllAllowed = 0,
	MSGraphRatingUnitedKingdomMoviesTypeAllBlocked = 1,
	MSGraphRatingUnitedKingdomMoviesTypeGeneral = 2,
	MSGraphRatingUnitedKingdomMoviesTypeUniversalChildren = 3,
	MSGraphRatingUnitedKingdomMoviesTypeParentalGuidance = 4,
	MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Video = 5,
	MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Cinema = 6,
	MSGraphRatingUnitedKingdomMoviesTypeAgesAbove15 = 7,
	MSGraphRatingUnitedKingdomMoviesTypeAdults = 8,
    MSGraphRatingUnitedKingdomMoviesTypeEndOfEnum
};

@interface MSGraphRatingUnitedKingdomMoviesType : NSObject

+(MSGraphRatingUnitedKingdomMoviesType*) allAllowed;
+(MSGraphRatingUnitedKingdomMoviesType*) allBlocked;
+(MSGraphRatingUnitedKingdomMoviesType*) general;
+(MSGraphRatingUnitedKingdomMoviesType*) universalChildren;
+(MSGraphRatingUnitedKingdomMoviesType*) parentalGuidance;
+(MSGraphRatingUnitedKingdomMoviesType*) agesAbove12Video;
+(MSGraphRatingUnitedKingdomMoviesType*) agesAbove12Cinema;
+(MSGraphRatingUnitedKingdomMoviesType*) agesAbove15;
+(MSGraphRatingUnitedKingdomMoviesType*) adults;

+(MSGraphRatingUnitedKingdomMoviesType*) UnknownEnumValue;

+(MSGraphRatingUnitedKingdomMoviesType*) ratingUnitedKingdomMoviesTypeWithEnumValue:(MSGraphRatingUnitedKingdomMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingUnitedKingdomMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingUnitedKingdomMoviesType)

- (MSGraphRatingUnitedKingdomMoviesType*) toMSGraphRatingUnitedKingdomMoviesType;

@end
