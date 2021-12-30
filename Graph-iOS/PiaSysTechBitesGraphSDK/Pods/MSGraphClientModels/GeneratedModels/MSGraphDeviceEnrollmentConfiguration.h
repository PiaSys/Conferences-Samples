// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEnrollmentConfigurationAssignment; 


#import "MSGraphEntity.h"

@interface MSGraphDeviceEnrollmentConfiguration : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setDeviceEnrollmentConfigurationDescription:, getter=deviceEnrollmentConfigurationDescription) NSString* deviceEnrollmentConfigurationDescription;
    @property (nonatomic, setter=setPriority:, getter=priority) int32_t priority;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
