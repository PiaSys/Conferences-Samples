// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingNewZealandMoviesType.h"
#import "MSGraphRatingNewZealandTelevisionType.h"


#import "MSObject.h"

@interface MSGraphMediaContentRatingNewZealand : MSObject

@property (nonnull, nonatomic, setter=setMovieRating:, getter=movieRating) MSGraphRatingNewZealandMoviesType* movieRating;
@property (nonnull, nonatomic, setter=setTvRating:, getter=tvRating) MSGraphRatingNewZealandTelevisionType* tvRating;

@end
