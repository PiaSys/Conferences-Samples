// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphServiceHostedMediaConfig()
{
    NSArray* _preFetchMedia;
}
@end

@implementation MSGraphServiceHostedMediaConfig

- (NSArray*) preFetchMedia
{
    if(!_preFetchMedia){
        
    NSMutableArray *preFetchMediaResult = [NSMutableArray array];
    NSArray *preFetchMedia = self.dictionary[@"preFetchMedia"];

    if ([preFetchMedia isKindOfClass:[NSArray class]]){
        for (id tempMediaInfo in preFetchMedia){
            [preFetchMediaResult addObject:tempMediaInfo];
        }
    }

    _preFetchMedia = preFetchMediaResult;
        
    }
    return _preFetchMedia;
}

- (void) setPreFetchMedia: (NSArray*) val
{
    _preFetchMedia = val;
    self.dictionary[@"preFetchMedia"] = val;
}

@end
