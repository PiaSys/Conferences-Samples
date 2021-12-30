// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingCanada()
{
    MSGraphRatingCanadaMoviesType* _movieRating;
    MSGraphRatingCanadaTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingCanada

- (MSGraphRatingCanadaMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingCanadaMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingCanadaMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingCanadaTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingCanadaTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingCanadaTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
