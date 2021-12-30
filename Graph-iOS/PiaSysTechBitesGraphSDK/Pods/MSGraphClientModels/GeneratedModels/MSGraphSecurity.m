// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecurity()
{
    NSArray* _alerts;
    NSArray* _secureScoreControlProfiles;
    NSArray* _secureScores;
}
@end

@implementation MSGraphSecurity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.security";
    }
    return self;
}
- (NSArray*) alerts
{
    if(!_alerts){
        
    NSMutableArray *alertsResult = [NSMutableArray array];
    NSArray *alerts = self.dictionary[@"alerts"];

    if ([alerts isKindOfClass:[NSArray class]]){
        for (id tempAlert in alerts){
            [alertsResult addObject:tempAlert];
        }
    }

    _alerts = alertsResult;
        
    }
    return _alerts;
}

- (void) setAlerts: (NSArray*) val
{
    _alerts = val;
    self.dictionary[@"alerts"] = val;
}

- (NSArray*) secureScoreControlProfiles
{
    if(!_secureScoreControlProfiles){
        
    NSMutableArray *secureScoreControlProfilesResult = [NSMutableArray array];
    NSArray *secureScoreControlProfiles = self.dictionary[@"secureScoreControlProfiles"];

    if ([secureScoreControlProfiles isKindOfClass:[NSArray class]]){
        for (id tempSecureScoreControlProfile in secureScoreControlProfiles){
            [secureScoreControlProfilesResult addObject:tempSecureScoreControlProfile];
        }
    }

    _secureScoreControlProfiles = secureScoreControlProfilesResult;
        
    }
    return _secureScoreControlProfiles;
}

- (void) setSecureScoreControlProfiles: (NSArray*) val
{
    _secureScoreControlProfiles = val;
    self.dictionary[@"secureScoreControlProfiles"] = val;
}

- (NSArray*) secureScores
{
    if(!_secureScores){
        
    NSMutableArray *secureScoresResult = [NSMutableArray array];
    NSArray *secureScores = self.dictionary[@"secureScores"];

    if ([secureScores isKindOfClass:[NSArray class]]){
        for (id tempSecureScore in secureScores){
            [secureScoresResult addObject:tempSecureScore];
        }
    }

    _secureScores = secureScoresResult;
        
    }
    return _secureScores;
}

- (void) setSecureScores: (NSArray*) val
{
    _secureScores = val;
    self.dictionary[@"secureScores"] = val;
}


@end
