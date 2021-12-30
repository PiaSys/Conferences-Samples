// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingIrelandTelevisionTypeValue){

	MSGraphRatingIrelandTelevisionTypeAllAllowed = 0,
	MSGraphRatingIrelandTelevisionTypeAllBlocked = 1,
	MSGraphRatingIrelandTelevisionTypeGeneral = 2,
	MSGraphRatingIrelandTelevisionTypeChildren = 3,
	MSGraphRatingIrelandTelevisionTypeYoungAdults = 4,
	MSGraphRatingIrelandTelevisionTypeParentalSupervision = 5,
	MSGraphRatingIrelandTelevisionTypeMature = 6,
    MSGraphRatingIrelandTelevisionTypeEndOfEnum
};

@interface MSGraphRatingIrelandTelevisionType : NSObject

+(MSGraphRatingIrelandTelevisionType*) allAllowed;
+(MSGraphRatingIrelandTelevisionType*) allBlocked;
+(MSGraphRatingIrelandTelevisionType*) general;
+(MSGraphRatingIrelandTelevisionType*) children;
+(MSGraphRatingIrelandTelevisionType*) youngAdults;
+(MSGraphRatingIrelandTelevisionType*) parentalSupervision;
+(MSGraphRatingIrelandTelevisionType*) mature;

+(MSGraphRatingIrelandTelevisionType*) UnknownEnumValue;

+(MSGraphRatingIrelandTelevisionType*) ratingIrelandTelevisionTypeWithEnumValue:(MSGraphRatingIrelandTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingIrelandTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingIrelandTelevisionType)

- (MSGraphRatingIrelandTelevisionType*) toMSGraphRatingIrelandTelevisionType;

@end
