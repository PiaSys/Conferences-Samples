// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConfigurationManagerClientEnabledFeatures()
{
    BOOL _inventory;
    BOOL _modernApps;
    BOOL _resourceAccess;
    BOOL _deviceConfiguration;
    BOOL _compliancePolicy;
    BOOL _windowsUpdateForBusiness;
}
@end

@implementation MSGraphConfigurationManagerClientEnabledFeatures

- (BOOL) inventory
{
    _inventory = [self.dictionary[@"inventory"] boolValue];
    return _inventory;
}

- (void) setInventory: (BOOL) val
{
    _inventory = val;
    self.dictionary[@"inventory"] = @(val);
}

- (BOOL) modernApps
{
    _modernApps = [self.dictionary[@"modernApps"] boolValue];
    return _modernApps;
}

- (void) setModernApps: (BOOL) val
{
    _modernApps = val;
    self.dictionary[@"modernApps"] = @(val);
}

- (BOOL) resourceAccess
{
    _resourceAccess = [self.dictionary[@"resourceAccess"] boolValue];
    return _resourceAccess;
}

- (void) setResourceAccess: (BOOL) val
{
    _resourceAccess = val;
    self.dictionary[@"resourceAccess"] = @(val);
}

- (BOOL) deviceConfiguration
{
    _deviceConfiguration = [self.dictionary[@"deviceConfiguration"] boolValue];
    return _deviceConfiguration;
}

- (void) setDeviceConfiguration: (BOOL) val
{
    _deviceConfiguration = val;
    self.dictionary[@"deviceConfiguration"] = @(val);
}

- (BOOL) compliancePolicy
{
    _compliancePolicy = [self.dictionary[@"compliancePolicy"] boolValue];
    return _compliancePolicy;
}

- (void) setCompliancePolicy: (BOOL) val
{
    _compliancePolicy = val;
    self.dictionary[@"compliancePolicy"] = @(val);
}

- (BOOL) windowsUpdateForBusiness
{
    _windowsUpdateForBusiness = [self.dictionary[@"windowsUpdateForBusiness"] boolValue];
    return _windowsUpdateForBusiness;
}

- (void) setWindowsUpdateForBusiness: (BOOL) val
{
    _windowsUpdateForBusiness = val;
    self.dictionary[@"windowsUpdateForBusiness"] = @(val);
}

@end
