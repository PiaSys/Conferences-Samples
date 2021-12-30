// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidManagedAppProtection()
{
    BOOL _screenCaptureBlocked;
    BOOL _disableAppEncryptionIfDeviceEncryptionIsEnabled;
    BOOL _encryptAppData;
    int32_t _deployedAppCount;
    NSString* _minimumRequiredPatchVersion;
    NSString* _minimumWarningPatchVersion;
    NSArray* _apps;
    MSGraphManagedAppPolicyDeploymentSummary* _deploymentSummary;
}
@end

@implementation MSGraphAndroidManagedAppProtection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidManagedAppProtection";
    }
    return self;
}
- (BOOL) screenCaptureBlocked
{
    _screenCaptureBlocked = [self.dictionary[@"screenCaptureBlocked"] boolValue];
    return _screenCaptureBlocked;
}

- (void) setScreenCaptureBlocked: (BOOL) val
{
    _screenCaptureBlocked = val;
    self.dictionary[@"screenCaptureBlocked"] = @(val);
}

- (BOOL) disableAppEncryptionIfDeviceEncryptionIsEnabled
{
    _disableAppEncryptionIfDeviceEncryptionIsEnabled = [self.dictionary[@"disableAppEncryptionIfDeviceEncryptionIsEnabled"] boolValue];
    return _disableAppEncryptionIfDeviceEncryptionIsEnabled;
}

- (void) setDisableAppEncryptionIfDeviceEncryptionIsEnabled: (BOOL) val
{
    _disableAppEncryptionIfDeviceEncryptionIsEnabled = val;
    self.dictionary[@"disableAppEncryptionIfDeviceEncryptionIsEnabled"] = @(val);
}

- (BOOL) encryptAppData
{
    _encryptAppData = [self.dictionary[@"encryptAppData"] boolValue];
    return _encryptAppData;
}

- (void) setEncryptAppData: (BOOL) val
{
    _encryptAppData = val;
    self.dictionary[@"encryptAppData"] = @(val);
}

- (int32_t) deployedAppCount
{
    _deployedAppCount = [self.dictionary[@"deployedAppCount"] intValue];
    return _deployedAppCount;
}

- (void) setDeployedAppCount: (int32_t) val
{
    _deployedAppCount = val;
    self.dictionary[@"deployedAppCount"] = @(val);
}

- (NSString*) minimumRequiredPatchVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumRequiredPatchVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumRequiredPatchVersion"];
}

- (void) setMinimumRequiredPatchVersion: (NSString*) val
{
    self.dictionary[@"minimumRequiredPatchVersion"] = val;
}

- (NSString*) minimumWarningPatchVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumWarningPatchVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumWarningPatchVersion"];
}

- (void) setMinimumWarningPatchVersion: (NSString*) val
{
    self.dictionary[@"minimumWarningPatchVersion"] = val;
}

- (NSArray*) apps
{
    if(!_apps){
        
    NSMutableArray *appsResult = [NSMutableArray array];
    NSArray *apps = self.dictionary[@"apps"];

    if ([apps isKindOfClass:[NSArray class]]){
        for (id tempManagedMobileApp in apps){
            [appsResult addObject:tempManagedMobileApp];
        }
    }

    _apps = appsResult;
        
    }
    return _apps;
}

- (void) setApps: (NSArray*) val
{
    _apps = val;
    self.dictionary[@"apps"] = val;
}

- (MSGraphManagedAppPolicyDeploymentSummary*) deploymentSummary
{
    if(!_deploymentSummary){
        _deploymentSummary = [[MSGraphManagedAppPolicyDeploymentSummary alloc] initWithDictionary: self.dictionary[@"deploymentSummary"]];
    }
    return _deploymentSummary;
}

- (void) setDeploymentSummary: (MSGraphManagedAppPolicyDeploymentSummary*) val
{
    _deploymentSummary = val;
    self.dictionary[@"deploymentSummary"] = val;
}


@end
