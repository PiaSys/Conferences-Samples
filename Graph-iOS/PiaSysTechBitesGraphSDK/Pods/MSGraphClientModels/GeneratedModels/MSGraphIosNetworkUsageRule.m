// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosNetworkUsageRule()
{
    NSArray* _managedApps;
    BOOL _cellularDataBlockWhenRoaming;
    BOOL _cellularDataBlocked;
}
@end

@implementation MSGraphIosNetworkUsageRule

- (NSArray*) managedApps
{
    if(!_managedApps){
        
    NSMutableArray *managedAppsResult = [NSMutableArray array];
    NSArray *managedApps = self.dictionary[@"managedApps"];

    if ([managedApps isKindOfClass:[NSArray class]]){
        for (id tempAppListItem in managedApps){
            [managedAppsResult addObject:tempAppListItem];
        }
    }

    _managedApps = managedAppsResult;
        
    }
    return _managedApps;
}

- (void) setManagedApps: (NSArray*) val
{
    _managedApps = val;
    self.dictionary[@"managedApps"] = val;
}

- (BOOL) cellularDataBlockWhenRoaming
{
    _cellularDataBlockWhenRoaming = [self.dictionary[@"cellularDataBlockWhenRoaming"] boolValue];
    return _cellularDataBlockWhenRoaming;
}

- (void) setCellularDataBlockWhenRoaming: (BOOL) val
{
    _cellularDataBlockWhenRoaming = val;
    self.dictionary[@"cellularDataBlockWhenRoaming"] = @(val);
}

- (BOOL) cellularDataBlocked
{
    _cellularDataBlocked = [self.dictionary[@"cellularDataBlocked"] boolValue];
    return _cellularDataBlocked;
}

- (void) setCellularDataBlocked: (BOOL) val
{
    _cellularDataBlocked = val;
    self.dictionary[@"cellularDataBlocked"] = @(val);
}

@end
