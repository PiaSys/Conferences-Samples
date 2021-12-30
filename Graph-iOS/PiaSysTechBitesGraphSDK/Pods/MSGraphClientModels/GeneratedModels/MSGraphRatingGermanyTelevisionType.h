// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingGermanyTelevisionTypeValue){

	MSGraphRatingGermanyTelevisionTypeAllAllowed = 0,
	MSGraphRatingGermanyTelevisionTypeAllBlocked = 1,
	MSGraphRatingGermanyTelevisionTypeGeneral = 2,
	MSGraphRatingGermanyTelevisionTypeAgesAbove6 = 3,
	MSGraphRatingGermanyTelevisionTypeAgesAbove12 = 4,
	MSGraphRatingGermanyTelevisionTypeAgesAbove16 = 5,
	MSGraphRatingGermanyTelevisionTypeAdults = 6,
    MSGraphRatingGermanyTelevisionTypeEndOfEnum
};

@interface MSGraphRatingGermanyTelevisionType : NSObject

+(MSGraphRatingGermanyTelevisionType*) allAllowed;
+(MSGraphRatingGermanyTelevisionType*) allBlocked;
+(MSGraphRatingGermanyTelevisionType*) general;
+(MSGraphRatingGermanyTelevisionType*) agesAbove6;
+(MSGraphRatingGermanyTelevisionType*) agesAbove12;
+(MSGraphRatingGermanyTelevisionType*) agesAbove16;
+(MSGraphRatingGermanyTelevisionType*) adults;

+(MSGraphRatingGermanyTelevisionType*) UnknownEnumValue;

+(MSGraphRatingGermanyTelevisionType*) ratingGermanyTelevisionTypeWithEnumValue:(MSGraphRatingGermanyTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingGermanyTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingGermanyTelevisionType)

- (MSGraphRatingGermanyTelevisionType*) toMSGraphRatingGermanyTelevisionType;

@end
