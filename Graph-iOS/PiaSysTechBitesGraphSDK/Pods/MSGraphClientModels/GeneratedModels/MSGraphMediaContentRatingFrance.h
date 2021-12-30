// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingFranceMoviesType.h"
#import "MSGraphRatingFranceTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingFrance : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingFranceMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingFranceTelevisionType* tvRating;

@end
