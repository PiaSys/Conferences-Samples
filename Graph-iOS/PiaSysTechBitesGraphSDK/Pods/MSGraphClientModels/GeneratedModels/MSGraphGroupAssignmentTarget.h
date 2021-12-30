// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphDeviceAndAppManagementAssignmentTarget.h"

@interface MSGraphGroupAssignmentTarget : MSGraphDeviceAndAppManagementAssignmentTarget

@property (nullable, nonatomic, setter=setGroupId:, getter=groupId) NSString* groupId;

@end
