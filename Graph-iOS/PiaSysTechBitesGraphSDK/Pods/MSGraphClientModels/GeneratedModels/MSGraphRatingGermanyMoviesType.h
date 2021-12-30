// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingGermanyMoviesTypeValue){

	MSGraphRatingGermanyMoviesTypeAllAllowed = 0,
	MSGraphRatingGermanyMoviesTypeAllBlocked = 1,
	MSGraphRatingGermanyMoviesTypeGeneral = 2,
	MSGraphRatingGermanyMoviesTypeAgesAbove6 = 3,
	MSGraphRatingGermanyMoviesTypeAgesAbove12 = 4,
	MSGraphRatingGermanyMoviesTypeAgesAbove16 = 5,
	MSGraphRatingGermanyMoviesTypeAdults = 6,
    MSGraphRatingGermanyMoviesTypeEndOfEnum
};

@interface MSGraphRatingGermanyMoviesType : NSObject

+(MSGraphRatingGermanyMoviesType*) allAllowed;
+(MSGraphRatingGermanyMoviesType*) allBlocked;
+(MSGraphRatingGermanyMoviesType*) general;
+(MSGraphRatingGermanyMoviesType*) agesAbove6;
+(MSGraphRatingGermanyMoviesType*) agesAbove12;
+(MSGraphRatingGermanyMoviesType*) agesAbove16;
+(MSGraphRatingGermanyMoviesType*) adults;

+(MSGraphRatingGermanyMoviesType*) UnknownEnumValue;

+(MSGraphRatingGermanyMoviesType*) ratingGermanyMoviesTypeWithEnumValue:(MSGraphRatingGermanyMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingGermanyMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingGermanyMoviesType)

- (MSGraphRatingGermanyMoviesType*) toMSGraphRatingGermanyMoviesType;

@end
