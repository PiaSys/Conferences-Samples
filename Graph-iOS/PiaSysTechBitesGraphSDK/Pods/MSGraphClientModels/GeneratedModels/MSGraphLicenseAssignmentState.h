// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphLicenseAssignmentState : MSObject

@property (nullable, nonatomic, setter=setSkuId:, getter=skuId) NSString* skuId;
@property (nullable, nonatomic, setter=setDisabledPlans:, getter=disabledPlans) NSArray* disabledPlans;
@property (nullable, nonatomic, setter=setAssignedByGroup:, getter=assignedByGroup) NSString* assignedByGroup;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nullable, nonatomic, setter=setError:, getter=error) NSString* error;

@end
