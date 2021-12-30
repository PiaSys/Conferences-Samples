// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTargetedManagedAppConfiguration()
{
    int32_t _deployedAppCount;
    BOOL _isAssigned;
    NSArray* _apps;
    MSGraphManagedAppPolicyDeploymentSummary* _deploymentSummary;
    NSArray* _assignments;
}
@end

@implementation MSGraphTargetedManagedAppConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.targetedManagedAppConfiguration";
    }
    return self;
}
- (int32_t) deployedAppCount
{
    _deployedAppCount = [self.dictionary[@"deployedAppCount"] intValue];
    return _deployedAppCount;
}

- (void) setDeployedAppCount: (int32_t) val
{
    _deployedAppCount = val;
    self.dictionary[@"deployedAppCount"] = @(val);
}

- (BOOL) isAssigned
{
    _isAssigned = [self.dictionary[@"isAssigned"] boolValue];
    return _isAssigned;
}

- (void) setIsAssigned: (BOOL) val
{
    _isAssigned = val;
    self.dictionary[@"isAssigned"] = @(val);
}

- (NSArray*) apps
{
    if(!_apps){
        
    NSMutableArray *appsResult = [NSMutableArray array];
    NSArray *apps = self.dictionary[@"apps"];

    if ([apps isKindOfClass:[NSArray class]]){
        for (id tempManagedMobileApp in apps){
            [appsResult addObject:tempManagedMobileApp];
        }
    }

    _apps = appsResult;
        
    }
    return _apps;
}

- (void) setApps: (NSArray*) val
{
    _apps = val;
    self.dictionary[@"apps"] = val;
}

- (MSGraphManagedAppPolicyDeploymentSummary*) deploymentSummary
{
    if(!_deploymentSummary){
        _deploymentSummary = [[MSGraphManagedAppPolicyDeploymentSummary alloc] initWithDictionary: self.dictionary[@"deploymentSummary"]];
    }
    return _deploymentSummary;
}

- (void) setDeploymentSummary: (MSGraphManagedAppPolicyDeploymentSummary*) val
{
    _deploymentSummary = val;
    self.dictionary[@"deploymentSummary"] = val;
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempTargetedManagedAppPolicyAssignment in assignments){
            [assignmentsResult addObject:tempTargetedManagedAppPolicyAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}


@end
