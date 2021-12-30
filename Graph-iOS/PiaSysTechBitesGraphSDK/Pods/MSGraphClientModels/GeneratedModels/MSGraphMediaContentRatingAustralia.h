// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingAustraliaMoviesType.h"
#import "MSGraphRatingAustraliaTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingAustralia : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingAustraliaMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingAustraliaTelevisionType* tvRating;

@end
