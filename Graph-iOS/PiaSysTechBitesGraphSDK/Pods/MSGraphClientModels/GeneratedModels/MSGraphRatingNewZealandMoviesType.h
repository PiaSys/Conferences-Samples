// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingNewZealandMoviesTypeValue){

	MSGraphRatingNewZealandMoviesTypeAllAllowed = 0,
	MSGraphRatingNewZealandMoviesTypeAllBlocked = 1,
	MSGraphRatingNewZealandMoviesTypeGeneral = 2,
	MSGraphRatingNewZealandMoviesTypeParentalGuidance = 3,
	MSGraphRatingNewZealandMoviesTypeMature = 4,
	MSGraphRatingNewZealandMoviesTypeAgesAbove13 = 5,
	MSGraphRatingNewZealandMoviesTypeAgesAbove15 = 6,
	MSGraphRatingNewZealandMoviesTypeAgesAbove16 = 7,
	MSGraphRatingNewZealandMoviesTypeAgesAbove18 = 8,
	MSGraphRatingNewZealandMoviesTypeRestricted = 9,
	MSGraphRatingNewZealandMoviesTypeAgesAbove16Restricted = 10,
    MSGraphRatingNewZealandMoviesTypeEndOfEnum
};

@interface MSGraphRatingNewZealandMoviesType : NSObject

+(MSGraphRatingNewZealandMoviesType*) allAllowed;
+(MSGraphRatingNewZealandMoviesType*) allBlocked;
+(MSGraphRatingNewZealandMoviesType*) general;
+(MSGraphRatingNewZealandMoviesType*) parentalGuidance;
+(MSGraphRatingNewZealandMoviesType*) mature;
+(MSGraphRatingNewZealandMoviesType*) agesAbove13;
+(MSGraphRatingNewZealandMoviesType*) agesAbove15;
+(MSGraphRatingNewZealandMoviesType*) agesAbove16;
+(MSGraphRatingNewZealandMoviesType*) agesAbove18;
+(MSGraphRatingNewZealandMoviesType*) restricted;
+(MSGraphRatingNewZealandMoviesType*) agesAbove16Restricted;

+(MSGraphRatingNewZealandMoviesType*) UnknownEnumValue;

+(MSGraphRatingNewZealandMoviesType*) ratingNewZealandMoviesTypeWithEnumValue:(MSGraphRatingNewZealandMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingNewZealandMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingNewZealandMoviesType)

- (MSGraphRatingNewZealandMoviesType*) toMSGraphRatingNewZealandMoviesType;

@end
