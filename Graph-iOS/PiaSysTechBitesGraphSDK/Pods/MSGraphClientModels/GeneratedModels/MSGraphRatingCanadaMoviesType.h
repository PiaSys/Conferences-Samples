// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingCanadaMoviesTypeValue){

	MSGraphRatingCanadaMoviesTypeAllAllowed = 0,
	MSGraphRatingCanadaMoviesTypeAllBlocked = 1,
	MSGraphRatingCanadaMoviesTypeGeneral = 2,
	MSGraphRatingCanadaMoviesTypeParentalGuidance = 3,
	MSGraphRatingCanadaMoviesTypeAgesAbove14 = 4,
	MSGraphRatingCanadaMoviesTypeAgesAbove18 = 5,
	MSGraphRatingCanadaMoviesTypeRestricted = 6,
    MSGraphRatingCanadaMoviesTypeEndOfEnum
};

@interface MSGraphRatingCanadaMoviesType : NSObject

+(MSGraphRatingCanadaMoviesType*) allAllowed;
+(MSGraphRatingCanadaMoviesType*) allBlocked;
+(MSGraphRatingCanadaMoviesType*) general;
+(MSGraphRatingCanadaMoviesType*) parentalGuidance;
+(MSGraphRatingCanadaMoviesType*) agesAbove14;
+(MSGraphRatingCanadaMoviesType*) agesAbove18;
+(MSGraphRatingCanadaMoviesType*) restricted;

+(MSGraphRatingCanadaMoviesType*) UnknownEnumValue;

+(MSGraphRatingCanadaMoviesType*) ratingCanadaMoviesTypeWithEnumValue:(MSGraphRatingCanadaMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingCanadaMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingCanadaMoviesType)

- (MSGraphRatingCanadaMoviesType*) toMSGraphRatingCanadaMoviesType;

@end
