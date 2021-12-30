// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphServicePlanInfo : MSObject

@property (nullable, nonatomic, setter=setServicePlanId:, getter=servicePlanId) NSString* servicePlanId;
@property (nullable, nonatomic, setter=setServicePlanName:, getter=servicePlanName) NSString* servicePlanName;
@property (nullable, nonatomic, setter=setProvisioningStatus:, getter=provisioningStatus) NSString* provisioningStatus;
@property (nullable, nonatomic, setter=setAppliesTo:, getter=appliesTo) NSString* appliesTo;

@end
