// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphItemAnalytics()
{
    NSArray* _itemActivityStats;
    MSGraphItemActivityStat* _allTime;
    MSGraphItemActivityStat* _lastSevenDays;
}
@end

@implementation MSGraphItemAnalytics

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.itemAnalytics";
    }
    return self;
}
- (NSArray*) itemActivityStats
{
    if(!_itemActivityStats){
        
    NSMutableArray *itemActivityStatsResult = [NSMutableArray array];
    NSArray *itemActivityStats = self.dictionary[@"itemActivityStats"];

    if ([itemActivityStats isKindOfClass:[NSArray class]]){
        for (id tempItemActivityStat in itemActivityStats){
            [itemActivityStatsResult addObject:tempItemActivityStat];
        }
    }

    _itemActivityStats = itemActivityStatsResult;
        
    }
    return _itemActivityStats;
}

- (void) setItemActivityStats: (NSArray*) val
{
    _itemActivityStats = val;
    self.dictionary[@"itemActivityStats"] = val;
}

- (MSGraphItemActivityStat*) allTime
{
    if(!_allTime){
        _allTime = [[MSGraphItemActivityStat alloc] initWithDictionary: self.dictionary[@"allTime"]];
    }
    return _allTime;
}

- (void) setAllTime: (MSGraphItemActivityStat*) val
{
    _allTime = val;
    self.dictionary[@"allTime"] = val;
}

- (MSGraphItemActivityStat*) lastSevenDays
{
    if(!_lastSevenDays){
        _lastSevenDays = [[MSGraphItemActivityStat alloc] initWithDictionary: self.dictionary[@"lastSevenDays"]];
    }
    return _lastSevenDays;
}

- (void) setLastSevenDays: (MSGraphItemActivityStat*) val
{
    _lastSevenDays = val;
    self.dictionary[@"lastSevenDays"] = val;
}


@end
