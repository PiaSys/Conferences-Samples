// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphMobileAppIdentifier, MSGraphManagedAppPolicy, MSGraphManagedAppOperation; 
#import "MSGraphManagedAppFlaggedReason.h"


#import "MSGraphEntity.h"

@interface MSGraphManagedAppRegistration : MSGraphEntity

  @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setLastSyncDateTime:, getter=lastSyncDateTime) NSDate* lastSyncDateTime;
    @property (nullable, nonatomic, setter=setApplicationVersion:, getter=applicationVersion) NSString* applicationVersion;
    @property (nullable, nonatomic, setter=setManagementSdkVersion:, getter=managementSdkVersion) NSString* managementSdkVersion;
    @property (nullable, nonatomic, setter=setPlatformVersion:, getter=platformVersion) NSString* platformVersion;
    @property (nullable, nonatomic, setter=setDeviceType:, getter=deviceType) NSString* deviceType;
    @property (nullable, nonatomic, setter=setDeviceTag:, getter=deviceTag) NSString* deviceTag;
    @property (nullable, nonatomic, setter=setDeviceName:, getter=deviceName) NSString* deviceName;
    @property (nonnull, nonatomic, setter=setFlaggedReasons:, getter=flaggedReasons) NSArray* flaggedReasons;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setAppIdentifier:, getter=appIdentifier) MSGraphMobileAppIdentifier* appIdentifier;
    @property (nullable, nonatomic, setter=setVersion:, getter=version) NSString* version;
    @property (nullable, nonatomic, setter=setAppliedPolicies:, getter=appliedPolicies) NSArray* appliedPolicies;
    @property (nullable, nonatomic, setter=setIntendedPolicies:, getter=intendedPolicies) NSArray* intendedPolicies;
    @property (nullable, nonatomic, setter=setManagedAppRegistrationOperations:, getter=managedAppRegistrationOperations) NSArray* managedAppRegistrationOperations;
  
@end
