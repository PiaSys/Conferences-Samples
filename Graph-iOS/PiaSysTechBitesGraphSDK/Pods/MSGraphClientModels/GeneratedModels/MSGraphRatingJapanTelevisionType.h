// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingJapanTelevisionTypeValue){

	MSGraphRatingJapanTelevisionTypeAllAllowed = 0,
	MSGraphRatingJapanTelevisionTypeAllBlocked = 1,
	MSGraphRatingJapanTelevisionTypeExplicitAllowed = 2,
    MSGraphRatingJapanTelevisionTypeEndOfEnum
};

@interface MSGraphRatingJapanTelevisionType : NSObject

+(MSGraphRatingJapanTelevisionType*) allAllowed;
+(MSGraphRatingJapanTelevisionType*) allBlocked;
+(MSGraphRatingJapanTelevisionType*) explicitAllowed;

+(MSGraphRatingJapanTelevisionType*) UnknownEnumValue;

+(MSGraphRatingJapanTelevisionType*) ratingJapanTelevisionTypeWithEnumValue:(MSGraphRatingJapanTelevisionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingJapanTelevisionTypeValue enumValue;

@end


@interface NSString (MSGraphRatingJapanTelevisionType)

- (MSGraphRatingJapanTelevisionType*) toMSGraphRatingJapanTelevisionType;

@end
