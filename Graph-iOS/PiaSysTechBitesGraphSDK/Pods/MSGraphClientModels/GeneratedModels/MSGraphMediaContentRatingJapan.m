// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingJapan()
{
    MSGraphRatingJapanMoviesType* _movieRating;
    MSGraphRatingJapanTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingJapan

- (MSGraphRatingJapanMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingJapanMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingJapanMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingJapanTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingJapanTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingJapanTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
