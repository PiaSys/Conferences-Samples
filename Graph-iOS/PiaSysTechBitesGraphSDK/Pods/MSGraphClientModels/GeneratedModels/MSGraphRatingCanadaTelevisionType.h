// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingCanadaTelevisionTypeValue){

	MSGraphRatingCanadaTelevisionTypeAllAllowed = 0,
	MSGraphRatingCanadaTelevisionTypeAllBlocked = 1,
	MSGraphRatingCanadaTelevisionTypeChildren = 2,
	MSGraphRatingCanadaTelevisionTypeChildrenAbove8 = 3,
	MSGraphRatingCanadaTelevisionTypeGeneral = 4,
	MSGraphRatingCanadaTelevisionTypeParentalGuidance = 5,
	MSGraphRatingCanadaTelevisionTypeAgesAbove14 = 6,
	MSGraphRatingCanadaTelevisionTypeAgesAbove18 = 7,
    MSGraphRatingCanadaTelevisionTypeEndOfEnum
};

@interface MSGraphRatingCanadaTelevisionType : NSObject

+(MSGraphRatingCanadaTelevisionType*) allAllowed;
+(MSGraphRatingCanadaTelevisionType*) allBlocked;
+(MSGraphRatingCanadaTelevisionType*) children;
+(MSGraphRatingCanadaTelevisionType*) childrenAbove8;
+(MSGraphRatingCanadaTelevisionType*) general;
+(MSGraphRatingCanadaTelevisionType*) parentalGuidance;
+(MSGraphRatingCanadaTelevisionType*) agesAbove14;
+(MSGraphRatingCanadaTelevisionType*) agesAbove18;

+(MSGraphRatingCanadaTelevisionType*) UnknownEnumValue;

+(MSGraphRatingCanadaTelevisionType*) ratingCanadaTelevisionTypeWithEnumValue:(MSGraphRatingCanadaTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingCanadaTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingCanadaTelevisionType)

- (MSGraphRatingCanadaTelevisionType*) toMSGraphRatingCanadaTelevisionType;

@end
