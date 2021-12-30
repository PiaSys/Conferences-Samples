// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedAppRegistration()
{
    NSDate* _createdDateTime;
    NSDate* _lastSyncDateTime;
    NSString* _applicationVersion;
    NSString* _managementSdkVersion;
    NSString* _platformVersion;
    NSString* _deviceType;
    NSString* _deviceTag;
    NSString* _deviceName;
    NSArray* _flaggedReasons;
    NSString* _userId;
    MSGraphMobileAppIdentifier* _appIdentifier;
    NSString* _version;
    NSArray* _appliedPolicies;
    NSArray* _intendedPolicies;
    NSArray* _managedAppRegistrationOperations;
}
@end

@implementation MSGraphManagedAppRegistration

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

- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (NSString*) applicationVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"applicationVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"applicationVersion"];
}

- (void) setApplicationVersion: (NSString*) val
{
    self.dictionary[@"applicationVersion"] = val;
}

- (NSString*) managementSdkVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"managementSdkVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"managementSdkVersion"];
}

- (void) setManagementSdkVersion: (NSString*) val
{
    self.dictionary[@"managementSdkVersion"] = val;
}

- (NSString*) platformVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"platformVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"platformVersion"];
}

- (void) setPlatformVersion: (NSString*) val
{
    self.dictionary[@"platformVersion"] = val;
}

- (NSString*) deviceType
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceType"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceType"];
}

- (void) setDeviceType: (NSString*) val
{
    self.dictionary[@"deviceType"] = val;
}

- (NSString*) deviceTag
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceTag"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceTag"];
}

- (void) setDeviceTag: (NSString*) val
{
    self.dictionary[@"deviceTag"] = val;
}

- (NSString*) deviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (NSArray*) flaggedReasons
{
    if(!_flaggedReasons){
        
    NSMutableArray *flaggedReasonsResult = [NSMutableArray array];
    NSArray *flaggedReasons = self.dictionary[@"flaggedReasons"];

    if ([flaggedReasons isKindOfClass:[NSArray class]]){
        for (id tempManagedAppFlaggedReason in flaggedReasons){
            [flaggedReasonsResult addObject:tempManagedAppFlaggedReason];
        }
    }

    _flaggedReasons = flaggedReasonsResult;
        
    }
    return _flaggedReasons;
}

- (void) setFlaggedReasons: (NSArray*) val
{
    _flaggedReasons = val;
    self.dictionary[@"flaggedReasons"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (MSGraphMobileAppIdentifier*) appIdentifier
{
    if(!_appIdentifier){
        _appIdentifier = [[MSGraphMobileAppIdentifier alloc] initWithDictionary: self.dictionary[@"appIdentifier"]];
    }
    return _appIdentifier;
}

- (void) setAppIdentifier: (MSGraphMobileAppIdentifier*) val
{
    _appIdentifier = val;
    self.dictionary[@"appIdentifier"] = val;
}

- (NSString*) version
{
    if([[NSNull null] isEqual:self.dictionary[@"version"]])
    {
        return nil;
    }   
    return self.dictionary[@"version"];
}

- (void) setVersion: (NSString*) val
{
    self.dictionary[@"version"] = val;
}

- (NSArray*) appliedPolicies
{
    if(!_appliedPolicies){
        
    NSMutableArray *appliedPoliciesResult = [NSMutableArray array];
    NSArray *appliedPolicies = self.dictionary[@"appliedPolicies"];

    if ([appliedPolicies isKindOfClass:[NSArray class]]){
        for (id tempManagedAppPolicy in appliedPolicies){
            [appliedPoliciesResult addObject:tempManagedAppPolicy];
        }
    }

    _appliedPolicies = appliedPoliciesResult;
        
    }
    return _appliedPolicies;
}

- (void) setAppliedPolicies: (NSArray*) val
{
    _appliedPolicies = val;
    self.dictionary[@"appliedPolicies"] = val;
}

- (NSArray*) intendedPolicies
{
    if(!_intendedPolicies){
        
    NSMutableArray *intendedPoliciesResult = [NSMutableArray array];
    NSArray *intendedPolicies = self.dictionary[@"intendedPolicies"];

    if ([intendedPolicies isKindOfClass:[NSArray class]]){
        for (id tempManagedAppPolicy in intendedPolicies){
            [intendedPoliciesResult addObject:tempManagedAppPolicy];
        }
    }

    _intendedPolicies = intendedPoliciesResult;
        
    }
    return _intendedPolicies;
}

- (void) setIntendedPolicies: (NSArray*) val
{
    _intendedPolicies = val;
    self.dictionary[@"intendedPolicies"] = val;
}

- (NSArray*) managedAppRegistrationOperations
{
    if(!_managedAppRegistrationOperations){
        
    NSMutableArray *managedAppRegistrationOperationsResult = [NSMutableArray array];
    NSArray *managedAppRegistrationOperations = self.dictionary[@"operations"];

    if ([managedAppRegistrationOperations isKindOfClass:[NSArray class]]){
        for (id tempManagedAppOperation in managedAppRegistrationOperations){
            [managedAppRegistrationOperationsResult addObject:tempManagedAppOperation];
        }
    }

    _managedAppRegistrationOperations = managedAppRegistrationOperationsResult;
        
    }
    return _managedAppRegistrationOperations;
}

- (void) setManagedAppRegistrationOperations: (NSArray*) val
{
    _managedAppRegistrationOperations = val;
    self.dictionary[@"operations"] = val;
}


@end
