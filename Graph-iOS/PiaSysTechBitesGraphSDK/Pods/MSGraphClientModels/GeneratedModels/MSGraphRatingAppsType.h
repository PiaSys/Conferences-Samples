// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRatingAppsTypeValue){

	MSGraphRatingAppsTypeAllAllowed = 0,
	MSGraphRatingAppsTypeAllBlocked = 1,
	MSGraphRatingAppsTypeAgesAbove4 = 2,
	MSGraphRatingAppsTypeAgesAbove9 = 3,
	MSGraphRatingAppsTypeAgesAbove12 = 4,
	MSGraphRatingAppsTypeAgesAbove17 = 5,
    MSGraphRatingAppsTypeEndOfEnum
};

@interface MSGraphRatingAppsType : NSObject

+(MSGraphRatingAppsType*) allAllowed;
+(MSGraphRatingAppsType*) allBlocked;
+(MSGraphRatingAppsType*) agesAbove4;
+(MSGraphRatingAppsType*) agesAbove9;
+(MSGraphRatingAppsType*) agesAbove12;
+(MSGraphRatingAppsType*) agesAbove17;

+(MSGraphRatingAppsType*) UnknownEnumValue;

+(MSGraphRatingAppsType*) ratingAppsTypeWithEnumValue:(MSGraphRatingAppsTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRatingAppsTypeValue enumValue;

@end


@interface NSString (MSGraphRatingAppsType)

- (MSGraphRatingAppsType*) toMSGraphRatingAppsType;

@end
