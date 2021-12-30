// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAssignedPlan : MSObject

@property (nullable, nonatomic, setter=setAssignedDateTime:, getter=assignedDateTime) NSDate* assignedDateTime;
@property (nullable, nonatomic, setter=setCapabilityStatus:, getter=capabilityStatus) NSString* capabilityStatus;
@property (nullable, nonatomic, setter=setService:, getter=service) NSString* service;
@property (nullable, nonatomic, setter=setServicePlanId:, getter=servicePlanId) NSString* servicePlanId;

@end
