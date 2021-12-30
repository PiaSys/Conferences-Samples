// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingFranceTelevisionTypeValue){

	MSGraphRatingFranceTelevisionTypeAllAllowed = 0,
	MSGraphRatingFranceTelevisionTypeAllBlocked = 1,
	MSGraphRatingFranceTelevisionTypeAgesAbove10 = 2,
	MSGraphRatingFranceTelevisionTypeAgesAbove12 = 3,
	MSGraphRatingFranceTelevisionTypeAgesAbove16 = 4,
	MSGraphRatingFranceTelevisionTypeAgesAbove18 = 5,
    MSGraphRatingFranceTelevisionTypeEndOfEnum
};

@interface MSGraphRatingFranceTelevisionType : NSObject

+(MSGraphRatingFranceTelevisionType*) allAllowed;
+(MSGraphRatingFranceTelevisionType*) allBlocked;
+(MSGraphRatingFranceTelevisionType*) agesAbove10;
+(MSGraphRatingFranceTelevisionType*) agesAbove12;
+(MSGraphRatingFranceTelevisionType*) agesAbove16;
+(MSGraphRatingFranceTelevisionType*) agesAbove18;

+(MSGraphRatingFranceTelevisionType*) UnknownEnumValue;

+(MSGraphRatingFranceTelevisionType*) ratingFranceTelevisionTypeWithEnumValue:(MSGraphRatingFranceTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingFranceTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingFranceTelevisionType)

- (MSGraphRatingFranceTelevisionType*) toMSGraphRatingFranceTelevisionType;

@end
