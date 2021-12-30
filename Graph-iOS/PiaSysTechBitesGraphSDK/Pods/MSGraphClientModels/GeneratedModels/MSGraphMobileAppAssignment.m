// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileAppAssignment()
{
    MSGraphInstallIntent* _intent;
    MSGraphDeviceAndAppManagementAssignmentTarget* _target;
    MSGraphMobileAppAssignmentSettings* _settings;
}
@end

@implementation MSGraphMobileAppAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mobileAppAssignment";
    }
    return self;
}
- (MSGraphInstallIntent*) intent
{
    if(!_intent){
        _intent = [self.dictionary[@"intent"] toMSGraphInstallIntent];
    }
    return _intent;
}

- (void) setIntent: (MSGraphInstallIntent*) val
{
    _intent = val;
    self.dictionary[@"intent"] = val;
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

- (MSGraphMobileAppAssignmentSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphMobileAppAssignmentSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphMobileAppAssignmentSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}


@end
