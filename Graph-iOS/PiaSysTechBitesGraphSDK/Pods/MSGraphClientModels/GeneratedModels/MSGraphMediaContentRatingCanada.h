// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingCanadaMoviesType.h"
#import "MSGraphRatingCanadaTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingCanada : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingCanadaMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingCanadaTelevisionType* tvRating;

@end
