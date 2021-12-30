// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedStatesMoviesType.h"
#import "MSGraphRatingUnitedStatesTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingUnitedStates : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingUnitedStatesMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingUnitedStatesTelevisionType* tvRating;

@end
