// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharedPCConfiguration()
{
    MSGraphSharedPCAccountManagerPolicy* _accountManagerPolicy;
    MSGraphSharedPCAllowedAccountType* _allowedAccounts;
    BOOL _allowLocalStorage;
    BOOL _disableAccountManager;
    BOOL _disableEduPolicies;
    BOOL _disablePowerPolicies;
    BOOL _disableSignInOnResume;
    BOOL _enabled;
    int32_t _idleTimeBeforeSleepInSeconds;
    NSString* _kioskAppDisplayName;
    NSString* _kioskAppUserModelId;
    MSTimeOfDay* _maintenanceStartTime;
}
@end

@implementation MSGraphSharedPCConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.sharedPCConfiguration";
    }
    return self;
}
- (MSGraphSharedPCAccountManagerPolicy*) accountManagerPolicy
{
    if(!_accountManagerPolicy){
        _accountManagerPolicy = [[MSGraphSharedPCAccountManagerPolicy alloc] initWithDictionary: self.dictionary[@"accountManagerPolicy"]];
    }
    return _accountManagerPolicy;
}

- (void) setAccountManagerPolicy: (MSGraphSharedPCAccountManagerPolicy*) val
{
    _accountManagerPolicy = val;
    self.dictionary[@"accountManagerPolicy"] = val;
}

- (MSGraphSharedPCAllowedAccountType*) allowedAccounts
{
    if(!_allowedAccounts){
        _allowedAccounts = [self.dictionary[@"allowedAccounts"] toMSGraphSharedPCAllowedAccountType];
    }
    return _allowedAccounts;
}

- (void) setAllowedAccounts: (MSGraphSharedPCAllowedAccountType*) val
{
    _allowedAccounts = val;
    self.dictionary[@"allowedAccounts"] = val;
}

- (BOOL) allowLocalStorage
{
    _allowLocalStorage = [self.dictionary[@"allowLocalStorage"] boolValue];
    return _allowLocalStorage;
}

- (void) setAllowLocalStorage: (BOOL) val
{
    _allowLocalStorage = val;
    self.dictionary[@"allowLocalStorage"] = @(val);
}

- (BOOL) disableAccountManager
{
    _disableAccountManager = [self.dictionary[@"disableAccountManager"] boolValue];
    return _disableAccountManager;
}

- (void) setDisableAccountManager: (BOOL) val
{
    _disableAccountManager = val;
    self.dictionary[@"disableAccountManager"] = @(val);
}

- (BOOL) disableEduPolicies
{
    _disableEduPolicies = [self.dictionary[@"disableEduPolicies"] boolValue];
    return _disableEduPolicies;
}

- (void) setDisableEduPolicies: (BOOL) val
{
    _disableEduPolicies = val;
    self.dictionary[@"disableEduPolicies"] = @(val);
}

- (BOOL) disablePowerPolicies
{
    _disablePowerPolicies = [self.dictionary[@"disablePowerPolicies"] boolValue];
    return _disablePowerPolicies;
}

- (void) setDisablePowerPolicies: (BOOL) val
{
    _disablePowerPolicies = val;
    self.dictionary[@"disablePowerPolicies"] = @(val);
}

- (BOOL) disableSignInOnResume
{
    _disableSignInOnResume = [self.dictionary[@"disableSignInOnResume"] boolValue];
    return _disableSignInOnResume;
}

- (void) setDisableSignInOnResume: (BOOL) val
{
    _disableSignInOnResume = val;
    self.dictionary[@"disableSignInOnResume"] = @(val);
}

- (BOOL) enabled
{
    _enabled = [self.dictionary[@"enabled"] boolValue];
    return _enabled;
}

- (void) setEnabled: (BOOL) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (int32_t) idleTimeBeforeSleepInSeconds
{
    _idleTimeBeforeSleepInSeconds = [self.dictionary[@"idleTimeBeforeSleepInSeconds"] intValue];
    return _idleTimeBeforeSleepInSeconds;
}

- (void) setIdleTimeBeforeSleepInSeconds: (int32_t) val
{
    _idleTimeBeforeSleepInSeconds = val;
    self.dictionary[@"idleTimeBeforeSleepInSeconds"] = @(val);
}

- (NSString*) kioskAppDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"kioskAppDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"kioskAppDisplayName"];
}

- (void) setKioskAppDisplayName: (NSString*) val
{
    self.dictionary[@"kioskAppDisplayName"] = val;
}

- (NSString*) kioskAppUserModelId
{
    if([[NSNull null] isEqual:self.dictionary[@"kioskAppUserModelId"]])
    {
        return nil;
    }   
    return self.dictionary[@"kioskAppUserModelId"];
}

- (void) setKioskAppUserModelId: (NSString*) val
{
    self.dictionary[@"kioskAppUserModelId"] = val;
}

- (MSTimeOfDay*) maintenanceStartTime
{
    if(!_maintenanceStartTime){
        _maintenanceStartTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"maintenanceStartTime"]];
    }
    return _maintenanceStartTime;
}

- (void) setMaintenanceStartTime: (MSTimeOfDay*) val
{
    _maintenanceStartTime = val;
    self.dictionary[@"maintenanceStartTime"] = [val ms_toString];
}


@end
