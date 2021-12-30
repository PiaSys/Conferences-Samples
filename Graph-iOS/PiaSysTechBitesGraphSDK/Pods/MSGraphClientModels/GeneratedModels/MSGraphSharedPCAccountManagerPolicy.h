// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSharedPCAccountDeletionPolicyType.h"


#import "MSObject.h"

@interface MSGraphSharedPCAccountManagerPolicy : MSObject

@property (nonnull, nonatomic, setter=setAccountDeletionPolicy:, getter=accountDeletionPolicy) MSGraphSharedPCAccountDeletionPolicyType* accountDeletionPolicy;
@property (nonatomic, setter=setCacheAccountsAboveDiskFreePercentage:, getter=cacheAccountsAboveDiskFreePercentage) int32_t cacheAccountsAboveDiskFreePercentage;
@property (nonatomic, setter=setInactiveThresholdDays:, getter=inactiveThresholdDays) int32_t inactiveThresholdDays;
@property (nonatomic, setter=setRemoveAccountsBelowDiskFreePercentage:, getter=removeAccountsBelowDiskFreePercentage) int32_t removeAccountsBelowDiskFreePercentage;

@end
