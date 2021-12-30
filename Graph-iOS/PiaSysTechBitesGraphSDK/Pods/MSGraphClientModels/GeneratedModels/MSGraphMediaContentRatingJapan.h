// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingJapanMoviesType.h"
#import "MSGraphRatingJapanTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingJapan : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingJapanMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingJapanTelevisionType* tvRating;

@end
