// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphGiphyRatingTypeValue){

	MSGraphGiphyRatingTypeModerate = 0,
	MSGraphGiphyRatingTypeStrict = 1,
	MSGraphGiphyRatingTypeUnknownFutureValue = 2,
    MSGraphGiphyRatingTypeEndOfEnum
};

@interface MSGraphGiphyRatingType : NSObject

+(MSGraphGiphyRatingType*) moderate;
+(MSGraphGiphyRatingType*) strict;
+(MSGraphGiphyRatingType*) unknownFutureValue;

+(MSGraphGiphyRatingType*) UnknownEnumValue;

+(MSGraphGiphyRatingType*) giphyRatingTypeWithEnumValue:(MSGraphGiphyRatingTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphGiphyRatingTypeValue enumValue;

@end


@interface NSString (MSGraphGiphyRatingType)

- (MSGraphGiphyRatingType*) toMSGraphGiphyRatingType;

@end
