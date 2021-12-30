// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIdentitySet; 


#import "MSObject.h"

@interface MSGraphPlannerAssignment : MSObject

@property (nullable, nonatomic, setter=setAssignedBy:, getter=assignedBy) MSGraphIdentitySet* assignedBy;
@property (nullable, nonatomic, setter=setAssignedDateTime:, getter=assignedDateTime) NSDate* assignedDateTime;
@property (nullable, nonatomic, setter=setOrderHint:, getter=orderHint) NSString* orderHint;

@end
