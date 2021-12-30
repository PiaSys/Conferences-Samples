// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedKingdomMoviesType.h"
#import "MSGraphRatingUnitedKingdomTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingUnitedKingdom : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingUnitedKingdomMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingUnitedKingdomTelevisionType* tvRating;

@end
