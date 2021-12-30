// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAppCatalogs()
{
    NSArray* _teamsApps;
}
@end

@implementation MSGraphAppCatalogs

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.appCatalogs";
    }
    return self;
}
- (NSArray*) teamsApps
{
    if(!_teamsApps){
        
    NSMutableArray *teamsAppsResult = [NSMutableArray array];
    NSArray *teamsApps = self.dictionary[@"teamsApps"];

    if ([teamsApps isKindOfClass:[NSArray class]]){
        for (id tempTeamsApp in teamsApps){
            [teamsAppsResult addObject:tempTeamsApp];
        }
    }

    _teamsApps = teamsAppsResult;
        
    }
    return _teamsApps;
}

- (void) setTeamsApps: (NSArray*) val
{
    _teamsApps = val;
    self.dictionary[@"teamsApps"] = val;
}


@end
