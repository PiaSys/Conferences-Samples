// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingIrelandMoviesType.h"
#import "MSGraphRatingIrelandTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingIreland : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingIrelandMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingIrelandTelevisionType* tvRating;

@end
