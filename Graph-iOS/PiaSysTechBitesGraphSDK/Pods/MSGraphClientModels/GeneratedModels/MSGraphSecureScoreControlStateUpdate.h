// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphSecureScoreControlStateUpdate : MSObject

@property (nullable, nonatomic, setter=setAssignedTo:, getter=assignedTo) NSString* assignedTo;
@property (nullable, nonatomic, setter=setComment:, getter=comment) NSString* comment;
@property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
@property (nullable, nonatomic, setter=setUpdatedBy:, getter=updatedBy) NSString* updatedBy;
@property (nullable, nonatomic, setter=setUpdatedDateTime:, getter=updatedDateTime) NSDate* updatedDateTime;

@end
