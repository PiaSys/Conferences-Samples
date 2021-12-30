// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMediaContentRatingAustralia()
{
    MSGraphRatingAustraliaMoviesType* _movieRating;
    MSGraphRatingAustraliaTelevisionType* _tvRating;
}
@end

@implementation MSGraphMediaContentRatingAustralia

- (MSGraphRatingAustraliaMoviesType*) movieRating
{
    if(!_movieRating){
        _movieRating = [self.dictionary[@"movieRating"] toMSGraphRatingAustraliaMoviesType];
    }
    return _movieRating;
}

- (void) setMovieRating: (MSGraphRatingAustraliaMoviesType*) val
{
    _movieRating = val;
    self.dictionary[@"movieRating"] = val;
}

- (MSGraphRatingAustraliaTelevisionType*) tvRating
{
    if(!_tvRating){
        _tvRating = [self.dictionary[@"tvRating"] toMSGraphRatingAustraliaTelevisionType];
    }
    return _tvRating;
}

- (void) setTvRating: (MSGraphRatingAustraliaTelevisionType*) val
{
    _tvRating = val;
    self.dictionary[@"tvRating"] = val;
}

@end
