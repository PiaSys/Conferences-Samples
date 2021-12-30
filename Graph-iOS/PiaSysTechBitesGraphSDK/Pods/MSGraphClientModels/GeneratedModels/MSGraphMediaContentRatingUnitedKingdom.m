// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingUnitedKingdom()
{
    MSGraphRatingUnitedKingdomMoviesType* _movieRating;
    MSGraphRatingUnitedKingdomTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingUnitedKingdom

- (MSGraphRatingUnitedKingdomMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingUnitedKingdomMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingUnitedKingdomMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingUnitedKingdomTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingUnitedKingdomTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingUnitedKingdomTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
