// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingUnitedKingdomTelevisionTypeValue){

	MSGraphRatingUnitedKingdomTelevisionTypeAllAllowed = 0,
	MSGraphRatingUnitedKingdomTelevisionTypeAllBlocked = 1,
	MSGraphRatingUnitedKingdomTelevisionTypeCaution = 2,
    MSGraphRatingUnitedKingdomTelevisionTypeEndOfEnum
};

@interface MSGraphRatingUnitedKingdomTelevisionType : NSObject

+(MSGraphRatingUnitedKingdomTelevisionType*) allAllowed;
+(MSGraphRatingUnitedKingdomTelevisionType*) allBlocked;
+(MSGraphRatingUnitedKingdomTelevisionType*) caution;

+(MSGraphRatingUnitedKingdomTelevisionType*) UnknownEnumValue;

+(MSGraphRatingUnitedKingdomTelevisionType*) ratingUnitedKingdomTelevisionTypeWithEnumValue:(MSGraphRatingUnitedKingdomTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingUnitedKingdomTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingUnitedKingdomTelevisionType)

- (MSGraphRatingUnitedKingdomTelevisionType*) toMSGraphRatingUnitedKingdomTelevisionType;

@end
