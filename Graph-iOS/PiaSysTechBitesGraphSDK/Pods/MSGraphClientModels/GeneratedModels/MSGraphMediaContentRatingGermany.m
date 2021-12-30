// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingGermany()
{
    MSGraphRatingGermanyMoviesType* _movieRating;
    MSGraphRatingGermanyTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingGermany

- (MSGraphRatingGermanyMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingGermanyMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingGermanyMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingGermanyTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingGermanyTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingGermanyTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
