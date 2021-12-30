// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceEnrollmentType.h"
#import "MSGraphDeviceEnrollmentFailureReason.h"


#import "MSGraphDeviceManagementTroubleshootingEvent.h"

@interface MSGraphEnrollmentTroubleshootingEvent : MSGraphDeviceManagementTroubleshootingEvent

  @property (nullable, nonatomic, setter=setManagedDeviceIdentifier:, getter=managedDeviceIdentifier) NSString* managedDeviceIdentifier;
    @property (nullable, nonatomic, setter=setOperatingSystem:, getter=operatingSystem) NSString* operatingSystem;
    @property (nullable, nonatomic, setter=setOsVersion:, getter=osVersion) NSString* osVersion;
    @property (nullable, nonatomic, setter=setUserId:, getter=userId) NSString* userId;
    @property (nullable, nonatomic, setter=setDeviceId:, getter=deviceId) NSString* deviceId;
    @property (nonnull, nonatomic, setter=setEnrollmentType:, getter=enrollmentType) MSGraphDeviceEnrollmentType* enrollmentType;
    @property (nonnull, nonatomic, setter=setFailureCategory:, getter=failureCategory) MSGraphDeviceEnrollmentFailureReason* failureCategory;
    @property (nullable, nonatomic, setter=setFailureReason:, getter=failureReason) NSString* failureReason;
  
@end
