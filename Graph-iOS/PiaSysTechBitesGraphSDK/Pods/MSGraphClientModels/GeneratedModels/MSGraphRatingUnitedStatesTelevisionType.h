// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingUnitedStatesTelevisionTypeValue){

	MSGraphRatingUnitedStatesTelevisionTypeAllAllowed = 0,
	MSGraphRatingUnitedStatesTelevisionTypeAllBlocked = 1,
	MSGraphRatingUnitedStatesTelevisionTypeChildrenAll = 2,
	MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove7 = 3,
	MSGraphRatingUnitedStatesTelevisionTypeGeneral = 4,
	MSGraphRatingUnitedStatesTelevisionTypeParentalGuidance = 5,
	MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove14 = 6,
	MSGraphRatingUnitedStatesTelevisionTypeAdults = 7,
    MSGraphRatingUnitedStatesTelevisionTypeEndOfEnum
};

@interface MSGraphRatingUnitedStatesTelevisionType : NSObject

+(MSGraphRatingUnitedStatesTelevisionType*) allAllowed;
+(MSGraphRatingUnitedStatesTelevisionType*) allBlocked;
+(MSGraphRatingUnitedStatesTelevisionType*) childrenAll;
+(MSGraphRatingUnitedStatesTelevisionType*) childrenAbove7;
+(MSGraphRatingUnitedStatesTelevisionType*) general;
+(MSGraphRatingUnitedStatesTelevisionType*) parentalGuidance;
+(MSGraphRatingUnitedStatesTelevisionType*) childrenAbove14;
+(MSGraphRatingUnitedStatesTelevisionType*) adults;

+(MSGraphRatingUnitedStatesTelevisionType*) UnknownEnumValue;

+(MSGraphRatingUnitedStatesTelevisionType*) ratingUnitedStatesTelevisionTypeWithEnumValue:(MSGraphRatingUnitedStatesTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingUnitedStatesTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingUnitedStatesTelevisionType)

- (MSGraphRatingUnitedStatesTelevisionType*) toMSGraphRatingUnitedStatesTelevisionType;

@end
