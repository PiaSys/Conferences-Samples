// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingUnitedStates()
{
    MSGraphRatingUnitedStatesMoviesType* _movieRating;
    MSGraphRatingUnitedStatesTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingUnitedStates

- (MSGraphRatingUnitedStatesMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingUnitedStatesMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingUnitedStatesMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingUnitedStatesTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingUnitedStatesTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingUnitedStatesTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
