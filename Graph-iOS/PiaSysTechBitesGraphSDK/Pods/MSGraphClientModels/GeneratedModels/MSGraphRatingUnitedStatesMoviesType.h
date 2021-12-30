// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingUnitedStatesMoviesTypeValue){

	MSGraphRatingUnitedStatesMoviesTypeAllAllowed = 0,
	MSGraphRatingUnitedStatesMoviesTypeAllBlocked = 1,
	MSGraphRatingUnitedStatesMoviesTypeGeneral = 2,
	MSGraphRatingUnitedStatesMoviesTypeParentalGuidance = 3,
	MSGraphRatingUnitedStatesMoviesTypeParentalGuidance13 = 4,
	MSGraphRatingUnitedStatesMoviesTypeRestricted = 5,
	MSGraphRatingUnitedStatesMoviesTypeAdults = 6,
    MSGraphRatingUnitedStatesMoviesTypeEndOfEnum
};

@interface MSGraphRatingUnitedStatesMoviesType : NSObject

+(MSGraphRatingUnitedStatesMoviesType*) allAllowed;
+(MSGraphRatingUnitedStatesMoviesType*) allBlocked;
+(MSGraphRatingUnitedStatesMoviesType*) general;
+(MSGraphRatingUnitedStatesMoviesType*) parentalGuidance;
+(MSGraphRatingUnitedStatesMoviesType*) parentalGuidance13;
+(MSGraphRatingUnitedStatesMoviesType*) restricted;
+(MSGraphRatingUnitedStatesMoviesType*) adults;

+(MSGraphRatingUnitedStatesMoviesType*) UnknownEnumValue;

+(MSGraphRatingUnitedStatesMoviesType*) ratingUnitedStatesMoviesTypeWithEnumValue:(MSGraphRatingUnitedStatesMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingUnitedStatesMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingUnitedStatesMoviesType)

- (MSGraphRatingUnitedStatesMoviesType*) toMSGraphRatingUnitedStatesMoviesType;

@end
