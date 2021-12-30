// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSharedPCAccountManagerPolicy()
{
    MSGraphSharedPCAccountDeletionPolicyType* _accountDeletionPolicy;
    int32_t _cacheAccountsAboveDiskFreePercentage;
    int32_t _inactiveThresholdDays;
    int32_t _removeAccountsBelowDiskFreePercentage;
}
@end

@implementation MSGraphSharedPCAccountManagerPolicy

- (MSGraphSharedPCAccountDeletionPolicyType*) accountDeletionPolicy
{
    if(!_accountDeletionPolicy){
        _accountDeletionPolicy = [self.dictionary[@"accountDeletionPolicy"] toMSGraphSharedPCAccountDeletionPolicyType];
    }
    return _accountDeletionPolicy;
}

- (void) setAccountDeletionPolicy: (MSGraphSharedPCAccountDeletionPolicyType*) val
{
    _accountDeletionPolicy = val;
    self.dictionary[@"accountDeletionPolicy"] = val;
}

- (int32_t) cacheAccountsAboveDiskFreePercentage
{
    _cacheAccountsAboveDiskFreePercentage = [self.dictionary[@"cacheAccountsAboveDiskFreePercentage"] intValue];
    return _cacheAccountsAboveDiskFreePercentage;
}

- (void) setCacheAccountsAboveDiskFreePercentage: (int32_t) val
{
    _cacheAccountsAboveDiskFreePercentage = val;
    self.dictionary[@"cacheAccountsAboveDiskFreePercentage"] = @(val);
}

- (int32_t) inactiveThresholdDays
{
    _inactiveThresholdDays = [self.dictionary[@"inactiveThresholdDays"] intValue];
    return _inactiveThresholdDays;
}

- (void) setInactiveThresholdDays: (int32_t) val
{
    _inactiveThresholdDays = val;
    self.dictionary[@"inactiveThresholdDays"] = @(val);
}

- (int32_t) removeAccountsBelowDiskFreePercentage
{
    _removeAccountsBelowDiskFreePercentage = [self.dictionary[@"removeAccountsBelowDiskFreePercentage"] intValue];
    return _removeAccountsBelowDiskFreePercentage;
}

- (void) setRemoveAccountsBelowDiskFreePercentage: (int32_t) val
{
    _removeAccountsBelowDiskFreePercentage = val;
    self.dictionary[@"removeAccountsBelowDiskFreePercentage"] = @(val);
}

@end
