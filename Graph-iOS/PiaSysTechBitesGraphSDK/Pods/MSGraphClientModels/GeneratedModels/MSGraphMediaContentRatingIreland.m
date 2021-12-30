// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingIreland()
{
    MSGraphRatingIrelandMoviesType* _movieRating;
    MSGraphRatingIrelandTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingIreland

- (MSGraphRatingIrelandMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingIrelandMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingIrelandMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingIrelandTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingIrelandTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingIrelandTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
