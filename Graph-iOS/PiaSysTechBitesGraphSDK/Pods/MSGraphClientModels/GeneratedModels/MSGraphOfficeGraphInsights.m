// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOfficeGraphInsights()
{
    NSArray* _trending;
    NSArray* _shared;
    NSArray* _used;
}
@end

@implementation MSGraphOfficeGraphInsights

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.officeGraphInsights";
    }
    return self;
}
- (NSArray*) trending
{
    if(!_trending){
        
    NSMutableArray *trendingResult = [NSMutableArray array];
    NSArray *trending = self.dictionary[@"trending"];

    if ([trending isKindOfClass:[NSArray class]]){
        for (id tempTrending in trending){
            [trendingResult addObject:tempTrending];
        }
    }

    _trending = trendingResult;
        
    }
    return _trending;
}

- (void) setTrending: (NSArray*) val
{
    _trending = val;
    self.dictionary[@"trending"] = val;
}

- (NSArray*) shared
{
    if(!_shared){
        
    NSMutableArray *sharedResult = [NSMutableArray array];
    NSArray *shared = self.dictionary[@"shared"];

    if ([shared isKindOfClass:[NSArray class]]){
        for (id tempSharedInsight in shared){
            [sharedResult addObject:tempSharedInsight];
        }
    }

    _shared = sharedResult;
        
    }
    return _shared;
}

- (void) setShared: (NSArray*) val
{
    _shared = val;
    self.dictionary[@"shared"] = val;
}

- (NSArray*) used
{
    if(!_used){
        
    NSMutableArray *usedResult = [NSMutableArray array];
    NSArray *used = self.dictionary[@"used"];

    if ([used isKindOfClass:[NSArray class]]){
        for (id tempUsedInsight in used){
            [usedResult addObject:tempUsedInsight];
        }
    }

    _used = usedResult;
        
    }
    return _used;
}

- (void) setUsed: (NSArray*) val
{
    _used = val;
    self.dictionary[@"used"] = val;
}


@end
