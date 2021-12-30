// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingNewZealand()
{
    MSGraphRatingNewZealandMoviesType* _movieRating;
    MSGraphRatingNewZealandTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingNewZealand

- (MSGraphRatingNewZealandMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingNewZealandMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingNewZealandMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingNewZealandTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingNewZealandTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingNewZealandTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
