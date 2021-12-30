// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecureScore()
{
    int32_t _activeUserCount;
    NSArray* _averageComparativeScores;
    NSString* _azureTenantId;
    NSArray* _controlScores;
    NSDate* _createdDateTime;
    double _currentScore;
    NSArray* _enabledServices;
    int32_t _licensedUserCount;
    double _maxScore;
    MSGraphSecurityVendorInformation* _vendorInformation;
}
@end

@implementation MSGraphSecureScore

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.secureScore";
    }
    return self;
}
- (int32_t) activeUserCount
{
    _activeUserCount = [self.dictionary[@"activeUserCount"] intValue];
    return _activeUserCount;
}

- (void) setActiveUserCount: (int32_t) val
{
    _activeUserCount = val;
    self.dictionary[@"activeUserCount"] = @(val);
}

- (NSArray*) averageComparativeScores
{
    if(!_averageComparativeScores){
        
    NSMutableArray *averageComparativeScoresResult = [NSMutableArray array];
    NSArray *averageComparativeScores = self.dictionary[@"averageComparativeScores"];

    if ([averageComparativeScores isKindOfClass:[NSArray class]]){
        for (id tempAverageComparativeScore in averageComparativeScores){
            [averageComparativeScoresResult addObject:tempAverageComparativeScore];
        }
    }

    _averageComparativeScores = averageComparativeScoresResult;
        
    }
    return _averageComparativeScores;
}

- (void) setAverageComparativeScores: (NSArray*) val
{
    _averageComparativeScores = val;
    self.dictionary[@"averageComparativeScores"] = val;
}

- (NSString*) azureTenantId
{
    return self.dictionary[@"azureTenantId"];
}

- (void) setAzureTenantId: (NSString*) val
{
    self.dictionary[@"azureTenantId"] = val;
}

- (NSArray*) controlScores
{
    if(!_controlScores){
        
    NSMutableArray *controlScoresResult = [NSMutableArray array];
    NSArray *controlScores = self.dictionary[@"controlScores"];

    if ([controlScores isKindOfClass:[NSArray class]]){
        for (id tempControlScore in controlScores){
            [controlScoresResult addObject:tempControlScore];
        }
    }

    _controlScores = controlScoresResult;
        
    }
    return _controlScores;
}

- (void) setControlScores: (NSArray*) val
{
    _controlScores = val;
    self.dictionary[@"controlScores"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (double) currentScore
{
    _currentScore = [self.dictionary[@"currentScore"] floatValue];
    return _currentScore;
}

- (void) setCurrentScore: (double) val
{
    _currentScore = val;
    self.dictionary[@"currentScore"] = @(val);
}

- (NSArray*) enabledServices
{
    if([[NSNull null] isEqual:self.dictionary[@"enabledServices"]])
    {
        return nil;
    }   
    return self.dictionary[@"enabledServices"];
}

- (void) setEnabledServices: (NSArray*) val
{
    self.dictionary[@"enabledServices"] = val;
}

- (int32_t) licensedUserCount
{
    _licensedUserCount = [self.dictionary[@"licensedUserCount"] intValue];
    return _licensedUserCount;
}

- (void) setLicensedUserCount: (int32_t) val
{
    _licensedUserCount = val;
    self.dictionary[@"licensedUserCount"] = @(val);
}

- (double) maxScore
{
    _maxScore = [self.dictionary[@"maxScore"] floatValue];
    return _maxScore;
}

- (void) setMaxScore: (double) val
{
    _maxScore = val;
    self.dictionary[@"maxScore"] = @(val);
}

- (MSGraphSecurityVendorInformation*) vendorInformation
{
    if(!_vendorInformation){
        _vendorInformation = [[MSGraphSecurityVendorInformation alloc] initWithDictionary: self.dictionary[@"vendorInformation"]];
    }
    return _vendorInformation;
}

- (void) setVendorInformation: (MSGraphSecurityVendorInformation*) val
{
    _vendorInformation = val;
    self.dictionary[@"vendorInformation"] = val;
}


@end
