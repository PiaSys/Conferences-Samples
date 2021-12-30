// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingFrance()
{
    MSGraphRatingFranceMoviesType* _movieRating;
    MSGraphRatingFranceTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingFrance

- (MSGraphRatingFranceMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingFranceMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingFranceMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingFranceTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingFranceTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingFranceTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
