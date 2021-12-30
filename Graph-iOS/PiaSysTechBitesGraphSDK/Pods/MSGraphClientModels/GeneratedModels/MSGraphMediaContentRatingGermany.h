// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingGermanyMoviesType.h"
#import "MSGraphRatingGermanyTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingGermany : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingGermanyMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingGermanyTelevisionType* tvRating;

@end
