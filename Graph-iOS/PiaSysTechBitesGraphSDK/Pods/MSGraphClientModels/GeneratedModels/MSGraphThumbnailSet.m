// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphThumbnailSet()
{
    MSGraphThumbnail* _large;
    MSGraphThumbnail* _medium;
    MSGraphThumbnail* _small;
    MSGraphThumbnail* _source;
}
@end

@implementation MSGraphThumbnailSet

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.thumbnailSet";
    }
    return self;
}
- (MSGraphThumbnail*) large
{
    if(!_large){
        _large = [[MSGraphThumbnail alloc] initWithDictionary: self.dictionary[@"large"]];
    }
    return _large;
}

- (void) setLarge: (MSGraphThumbnail*) val
{
    _large = val;
    self.dictionary[@"large"] = val;
}

- (MSGraphThumbnail*) medium
{
    if(!_medium){
        _medium = [[MSGraphThumbnail alloc] initWithDictionary: self.dictionary[@"medium"]];
    }
    return _medium;
}

- (void) setMedium: (MSGraphThumbnail*) val
{
    _medium = val;
    self.dictionary[@"medium"] = val;
}

- (MSGraphThumbnail*) small
{
    if(!_small){
        _small = [[MSGraphThumbnail alloc] initWithDictionary: self.dictionary[@"small"]];
    }
    return _small;
}

- (void) setSmall: (MSGraphThumbnail*) val
{
    _small = val;
    self.dictionary[@"small"] = val;
}

- (MSGraphThumbnail*) source
{
    if(!_source){
        _source = [[MSGraphThumbnail alloc] initWithDictionary: self.dictionary[@"source"]];
    }
    return _source;
}

- (void) setSource: (MSGraphThumbnail*) val
{
    _source = val;
    self.dictionary[@"source"] = val;
}


@end
