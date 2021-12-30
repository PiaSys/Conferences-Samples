// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedEBookAssignment()
{
    MSGraphDeviceAndAppManagementAssignmentTarget* _target;
    MSGraphInstallIntent* _installIntent;
}
@end

@implementation MSGraphManagedEBookAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedEBookAssignment";
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

- (MSGraphInstallIntent*) installIntent
{
    if(!_installIntent){
        _installIntent = [self.dictionary[@"installIntent"] toMSGraphInstallIntent];
    }
    return _installIntent;
}

- (void) setInstallIntent: (MSGraphInstallIntent*) val
{
    _installIntent = val;
    self.dictionary[@"installIntent"] = val;
}


@end
