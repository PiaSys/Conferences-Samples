// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphSharedPCAccountManagerPolicy, MSTimeOfDay; 
#import "MSGraphSharedPCAllowedAccountType.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphSharedPCConfiguration : MSGraphDeviceConfiguration

  @property (nullable, nonatomic, setter=setAccountManagerPolicy:, getter=accountManagerPolicy) MSGraphSharedPCAccountManagerPolicy* accountManagerPolicy;
    @property (nonnull, nonatomic, setter=setAllowedAccounts:, getter=allowedAccounts) MSGraphSharedPCAllowedAccountType* allowedAccounts;
    @property (nonatomic, setter=setAllowLocalStorage:, getter=allowLocalStorage) BOOL allowLocalStorage;
    @property (nonatomic, setter=setDisableAccountManager:, getter=disableAccountManager) BOOL disableAccountManager;
    @property (nonatomic, setter=setDisableEduPolicies:, getter=disableEduPolicies) BOOL disableEduPolicies;
    @property (nonatomic, setter=setDisablePowerPolicies:, getter=disablePowerPolicies) BOOL disablePowerPolicies;
    @property (nonatomic, setter=setDisableSignInOnResume:, getter=disableSignInOnResume) BOOL disableSignInOnResume;
    @property (nonatomic, setter=setEnabled:, getter=enabled) BOOL enabled;
    @property (nonatomic, setter=setIdleTimeBeforeSleepInSeconds:, getter=idleTimeBeforeSleepInSeconds) int32_t idleTimeBeforeSleepInSeconds;
    @property (nullable, nonatomic, setter=setKioskAppDisplayName:, getter=kioskAppDisplayName) NSString* kioskAppDisplayName;
    @property (nullable, nonatomic, setter=setKioskAppUserModelId:, getter=kioskAppUserModelId) NSString* kioskAppUserModelId;
    @property (nullable, nonatomic, setter=setMaintenanceStartTime:, getter=maintenanceStartTime) MSTimeOfDay* maintenanceStartTime;
  
@end
