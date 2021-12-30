// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsApp()
{
    NSString* _externalId;
    NSString* _displayName;
    MSGraphTeamsAppDistributionMethod* _distributionMethod;
    NSArray* _appDefinitions;
}
@end

@implementation MSGraphTeamsApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsApp";
    }
    return self;
}
- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphTeamsAppDistributionMethod*) distributionMethod
{
    if(!_distributionMethod){
        _distributionMethod = [self.dictionary[@"distributionMethod"] toMSGraphTeamsAppDistributionMethod];
    }
    return _distributionMethod;
}

- (void) setDistributionMethod: (MSGraphTeamsAppDistributionMethod*) val
{
    _distributionMethod = val;
    self.dictionary[@"distributionMethod"] = val;
}

- (NSArray*) appDefinitions
{
    if(!_appDefinitions){
        
    NSMutableArray *appDefinitionsResult = [NSMutableArray array];
    NSArray *appDefinitions = self.dictionary[@"appDefinitions"];

    if ([appDefinitions isKindOfClass:[NSArray class]]){
        for (id tempTeamsAppDefinition in appDefinitions){
            [appDefinitionsResult addObject:tempTeamsAppDefinition];
        }
    }

    _appDefinitions = appDefinitionsResult;
        
    }
    return _appDefinitions;
}

- (void) setAppDefinitions: (NSArray*) val
{
    _appDefinitions = val;
    self.dictionary[@"appDefinitions"] = val;
}


@end
