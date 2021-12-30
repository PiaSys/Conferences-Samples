// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphItemActivityStat; 


#import "MSGraphEntity.h"

@interface MSGraphItemAnalytics : MSGraphEntity

  @property (nullable, nonatomic, setter=setItemActivityStats:, getter=itemActivityStats) NSArray* itemActivityStats;
    @property (nullable, nonatomic, setter=setAllTime:, getter=allTime) MSGraphItemActivityStat* allTime;
    @property (nullable, nonatomic, setter=setLastSevenDays:, getter=lastSevenDays) MSGraphItemActivityStat* lastSevenDays;
  
@end
