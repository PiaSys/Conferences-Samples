// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingJapanMoviesTypeValue){

	MSGraphRatingJapanMoviesTypeAllAllowed = 0,
	MSGraphRatingJapanMoviesTypeAllBlocked = 1,
	MSGraphRatingJapanMoviesTypeGeneral = 2,
	MSGraphRatingJapanMoviesTypeParentalGuidance = 3,
	MSGraphRatingJapanMoviesTypeAgesAbove15 = 4,
	MSGraphRatingJapanMoviesTypeAgesAbove18 = 5,
    MSGraphRatingJapanMoviesTypeEndOfEnum
};

@interface MSGraphRatingJapanMoviesType : NSObject

+(MSGraphRatingJapanMoviesType*) allAllowed;
+(MSGraphRatingJapanMoviesType*) allBlocked;
+(MSGraphRatingJapanMoviesType*) general;
+(MSGraphRatingJapanMoviesType*) parentalGuidance;
+(MSGraphRatingJapanMoviesType*) agesAbove15;
+(MSGraphRatingJapanMoviesType*) agesAbove18;

+(MSGraphRatingJapanMoviesType*) UnknownEnumValue;

+(MSGraphRatingJapanMoviesType*) ratingJapanMoviesTypeWithEnumValue:(MSGraphRatingJapanMoviesTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingJapanMoviesTypeValue enumValue;

@end


@interface NSString (MSGraphRatingJapanMoviesType)

- (MSGraphRatingJapanMoviesType*) toMSGraphRatingJapanMoviesType;

@end
