// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppPolicyDeploymentSummaryPerApp()
{
    MSGraphMobileAppIdentifier* _mobileAppIdentifier;
    int32_t _configurationAppliedUserCount;
}
@end

@implementation MSGraphManagedAppPolicyDeploymentSummaryPerApp

- (MSGraphMobileAppIdentifier*) mobileAppIdentifier
{
    if(!_mobileAppIdentifier){
        _mobileAppIdentifier = [[MSGraphMobileAppIdentifier alloc] initWithDictionary: self.dictionary[@"mobileAppIdentifier"]];
    }
    return _mobileAppIdentifier;
}

- (void) setMobileAppIdentifier: (MSGraphMobileAppIdentifier*) val
{
    _mobileAppIdentifier = val;
    self.dictionary[@"mobileAppIdentifier"] = val;
}

- (int32_t) configurationAppliedUserCount
{
    _configurationAppliedUserCount = [self.dictionary[@"configurationAppliedUserCount"] intValue];
    return _configurationAppliedUserCount;
}

- (void) setConfigurationAppliedUserCount: (int32_t) val
{
    _configurationAppliedUserCount = val;
    self.dictionary[@"configurationAppliedUserCount"] = @(val);
}

@end
