// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEnrollmentConfigurationAssignment()
{
    MSGraphDeviceAndAppManagementAssignmentTarget* _target;
}
@end

@implementation MSGraphEnrollmentConfigurationAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.enrollmentConfigurationAssignment";
    }
    return self;
}
- (MSGraphDeviceAndAppManagementAssignmentTarget*) target
{
    if(!_target){
        _target = [[MSGraphDeviceAndAppManagementAssignmentTarget alloc] initWithDictionary: self.dictionary[@"target"]];
    }
    return _target;
}

- (void) setTarget: (MSGraphDeviceAndAppManagementAssignmentTarget*) val
{
    _target = val;
    self.dictionary[@"target"] = val;
}


@end
