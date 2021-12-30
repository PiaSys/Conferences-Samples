// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10EnterpriseModernAppManagementConfiguration()
{
    BOOL _uninstallBuiltInApps;
}
@end

@implementation MSGraphWindows10EnterpriseModernAppManagementConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration";
    }
    return self;
}
- (BOOL) uninstallBuiltInApps
{
    _uninstallBuiltInApps = [self.dictionary[@"uninstallBuiltInApps"] boolValue];
    return _uninstallBuiltInApps;
}

- (void) setUninstallBuiltInApps: (BOOL) val
{
    _uninstallBuiltInApps = val;
    self.dictionary[@"uninstallBuiltInApps"] = @(val);
}


@end
