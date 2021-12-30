// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingNewZealandTelevisionTypeValue){

	MSGraphRatingNewZealandTelevisionTypeAllAllowed = 0,
	MSGraphRatingNewZealandTelevisionTypeAllBlocked = 1,
	MSGraphRatingNewZealandTelevisionTypeGeneral = 2,
	MSGraphRatingNewZealandTelevisionTypeParentalGuidance = 3,
	MSGraphRatingNewZealandTelevisionTypeAdults = 4,
    MSGraphRatingNewZealandTelevisionTypeEndOfEnum
};

@interface MSGraphRatingNewZealandTelevisionType : NSObject

+(MSGraphRatingNewZealandTelevisionType*) allAllowed;
+(MSGraphRatingNewZealandTelevisionType*) allBlocked;
+(MSGraphRatingNewZealandTelevisionType*) general;
+(MSGraphRatingNewZealandTelevisionType*) parentalGuidance;
+(MSGraphRatingNewZealandTelevisionType*) adults;

+(MSGraphRatingNewZealandTelevisionType*) UnknownEnumValue;

+(MSGraphRatingNewZealandTelevisionType*) ratingNewZealandTelevisionTypeWithEnumValue:(MSGraphRatingNewZealandTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingNewZealandTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingNewZealandTelevisionType)

- (MSGraphRatingNewZealandTelevisionType*) toMSGraphRatingNewZealandTelevisionType;

@end
