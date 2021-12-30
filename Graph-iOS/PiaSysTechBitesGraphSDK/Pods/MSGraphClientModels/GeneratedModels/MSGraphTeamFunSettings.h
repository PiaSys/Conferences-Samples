// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphGiphyRatingType.h"


#import "MSObject.h"

@interface MSGraphTeamFunSettings : MSObject

@property (nonatomic, setter=setAllowGiphy:, getter=allowGiphy) BOOL allowGiphy;
@property (nullable, nonatomic, setter=setGiphyContentRating:, getter=giphyContentRating) MSGraphGiphyRatingType* giphyContentRating;
@property (nonatomic, setter=setAllowStickersAndMemes:, getter=allowStickersAndMemes) BOOL allowStickersAndMemes;
@property (nonatomic, setter=setAllowCustomMemes:, getter=allowCustomMemes) BOOL allowCustomMemes;

@end
