// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingIrelandMoviesTypeValue){

	MSGraphRatingIrelandMoviesTypeAllAllowed = 0,
	MSGraphRatingIrelandMoviesTypeAllBlocked = 1,
	MSGraphRatingIrelandMoviesTypeGeneral = 2,
	MSGraphRatingIrelandMoviesTypeParentalGuidance = 3,
	MSGraphRatingIrelandMoviesTypeAgesAbove12 = 4,
	MSGraphRatingIrelandMoviesTypeAgesAbove15 = 5,
	MSGraphRatingIrelandMoviesTypeAgesAbove16 = 6,
	MSGraphRatingIrelandMoviesTypeAdults = 7,
    MSGraphRatingIrelandMoviesTypeEndOfEnum
};

@interface MSGraphRatingIrelandMoviesType : NSObject

+(MSGraphRatingIrelandMoviesType*) allAllowed;
+(MSGraphRatingIrelandMoviesType*) allBlocked;
+(MSGraphRatingIrelandMoviesType*) general;
+(MSGraphRatingIrelandMoviesType*) parentalGuidance;
+(MSGraphRatingIrelandMoviesType*) agesAbove12;
+(MSGraphRatingIrelandMoviesType*) agesAbove15;
+(MSGraphRatingIrelandMoviesType*) agesAbove16;
+(MSGraphRatingIrelandMoviesType*) adults;

+(MSGraphRatingIrelandMoviesType*) UnknownEnumValue;

+(MSGraphRatingIrelandMoviesType*) ratingIrelandMoviesTypeWithEnumValue:(MSGraphRatingIrelandMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingIrelandMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingIrelandMoviesType)

- (MSGraphRatingIrelandMoviesType*) toMSGraphRatingIrelandMoviesType;

@end
