// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingAustraliaMoviesTypeValue){

	MSGraphRatingAustraliaMoviesTypeAllAllowed = 0,
	MSGraphRatingAustraliaMoviesTypeAllBlocked = 1,
	MSGraphRatingAustraliaMoviesTypeGeneral = 2,
	MSGraphRatingAustraliaMoviesTypeParentalGuidance = 3,
	MSGraphRatingAustraliaMoviesTypeMature = 4,
	MSGraphRatingAustraliaMoviesTypeAgesAbove15 = 5,
	MSGraphRatingAustraliaMoviesTypeAgesAbove18 = 6,
    MSGraphRatingAustraliaMoviesTypeEndOfEnum
};

@interface MSGraphRatingAustraliaMoviesType : NSObject

+(MSGraphRatingAustraliaMoviesType*) allAllowed;
+(MSGraphRatingAustraliaMoviesType*) allBlocked;
+(MSGraphRatingAustraliaMoviesType*) general;
+(MSGraphRatingAustraliaMoviesType*) parentalGuidance;
+(MSGraphRatingAustraliaMoviesType*) mature;
+(MSGraphRatingAustraliaMoviesType*) agesAbove15;
+(MSGraphRatingAustraliaMoviesType*) agesAbove18;

+(MSGraphRatingAustraliaMoviesType*) UnknownEnumValue;

+(MSGraphRatingAustraliaMoviesType*) ratingAustraliaMoviesTypeWithEnumValue:(MSGraphRatingAustraliaMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingAustraliaMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingAustraliaMoviesType)

- (MSGraphRatingAustraliaMoviesType*) toMSGraphRatingAustraliaMoviesType;

@end
