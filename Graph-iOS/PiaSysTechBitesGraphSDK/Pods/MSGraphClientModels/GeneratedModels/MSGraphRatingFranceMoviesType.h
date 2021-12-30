// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingFranceMoviesTypeValue){

	MSGraphRatingFranceMoviesTypeAllAllowed = 0,
	MSGraphRatingFranceMoviesTypeAllBlocked = 1,
	MSGraphRatingFranceMoviesTypeAgesAbove10 = 2,
	MSGraphRatingFranceMoviesTypeAgesAbove12 = 3,
	MSGraphRatingFranceMoviesTypeAgesAbove16 = 4,
	MSGraphRatingFranceMoviesTypeAgesAbove18 = 5,
    MSGraphRatingFranceMoviesTypeEndOfEnum
};

@interface MSGraphRatingFranceMoviesType : NSObject

+(MSGraphRatingFranceMoviesType*) allAllowed;
+(MSGraphRatingFranceMoviesType*) allBlocked;
+(MSGraphRatingFranceMoviesType*) agesAbove10;
+(MSGraphRatingFranceMoviesType*) agesAbove12;
+(MSGraphRatingFranceMoviesType*) agesAbove16;
+(MSGraphRatingFranceMoviesType*) agesAbove18;

+(MSGraphRatingFranceMoviesType*) UnknownEnumValue;

+(MSGraphRatingFranceMoviesType*) ratingFranceMoviesTypeWithEnumValue:(MSGraphRatingFranceMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingFranceMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingFranceMoviesType)

- (MSGraphRatingFranceMoviesType*) toMSGraphRatingFranceMoviesType;

@end
