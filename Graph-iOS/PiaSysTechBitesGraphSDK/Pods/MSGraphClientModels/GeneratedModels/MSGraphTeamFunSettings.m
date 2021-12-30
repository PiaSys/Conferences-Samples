// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamFunSettings()
{
    BOOL _allowGiphy;
    MSGraphGiphyRatingType* _giphyContentRating;
    BOOL _allowStickersAndMemes;
    BOOL _allowCustomMemes;
}
@end

@implementation MSGraphTeamFunSettings

- (BOOL) allowGiphy
{
    _allowGiphy = [self.dictionary[@"allowGiphy"] boolValue];
    return _allowGiphy;
}

- (void) setAllowGiphy: (BOOL) val
{
    _allowGiphy = val;
    self.dictionary[@"allowGiphy"] = @(val);
}

- (MSGraphGiphyRatingType*) giphyContentRating
{
    if(!_giphyContentRating){
        _giphyContentRating = [self.dictionary[@"giphyContentRating"] toMSGraphGiphyRatingType];
    }
    return _giphyContentRating;
}

- (void) setGiphyContentRating: (MSGraphGiphyRatingType*) val
{
    _giphyContentRating = val;
    self.dictionary[@"giphyContentRating"] = val;
}

- (BOOL) allowStickersAndMemes
{
    _allowStickersAndMemes = [self.dictionary[@"allowStickersAndMemes"] boolValue];
    return _allowStickersAndMemes;
}

- (void) setAllowStickersAndMemes: (BOOL) val
{
    _allowStickersAndMemes = val;
    self.dictionary[@"allowStickersAndMemes"] = @(val);
}

- (BOOL) allowCustomMemes
{
    _allowCustomMemes = [self.dictionary[@"allowCustomMemes"] boolValue];
    return _allowCustomMemes;
}

- (void) setAllowCustomMemes: (BOOL) val
{
    _allowCustomMemes = val;
    self.dictionary[@"allowCustomMemes"] = @(val);
}

@end
