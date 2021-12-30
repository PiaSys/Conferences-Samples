// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingAustraliaTelevisionTypeValue){

	MSGraphRatingAustraliaTelevisionTypeAllAllowed = 0,
	MSGraphRatingAustraliaTelevisionTypeAllBlocked = 1,
	MSGraphRatingAustraliaTelevisionTypePreschoolers = 2,
	MSGraphRatingAustraliaTelevisionTypeChildren = 3,
	MSGraphRatingAustraliaTelevisionTypeGeneral = 4,
	MSGraphRatingAustraliaTelevisionTypeParentalGuidance = 5,
	MSGraphRatingAustraliaTelevisionTypeMature = 6,
	MSGraphRatingAustraliaTelevisionTypeAgesAbove15 = 7,
	MSGraphRatingAustraliaTelevisionTypeAgesAbove15AdultViolence = 8,
    MSGraphRatingAustraliaTelevisionTypeEndOfEnum
};

@interface MSGraphRatingAustraliaTelevisionType : NSObject

+(MSGraphRatingAustraliaTelevisionType*) allAllowed;
+(MSGraphRatingAustraliaTelevisionType*) allBlocked;
+(MSGraphRatingAustraliaTelevisionType*) preschoolers;
+(MSGraphRatingAustraliaTelevisionType*) children;
+(MSGraphRatingAustraliaTelevisionType*) general;
+(MSGraphRatingAustraliaTelevisionType*) parentalGuidance;
+(MSGraphRatingAustraliaTelevisionType*) mature;
+(MSGraphRatingAustraliaTelevisionType*) agesAbove15;
+(MSGraphRatingAustraliaTelevisionType*) agesAbove15AdultViolence;

+(MSGraphRatingAustraliaTelevisionType*) UnknownEnumValue;

+(MSGraphRatingAustraliaTelevisionType*) ratingAustraliaTelevisionTypeWithEnumValue:(MSGraphRatingAustraliaTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingAustraliaTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingAustraliaTelevisionType)

- (MSGraphRatingAustraliaTelevisionType*) toMSGraphRatingAustraliaTelevisionType;

@end
