// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDefaultManagedAppProtection()
{
    MSGraphManagedAppDataEncryptionType* _appDataEncryptionType;
    BOOL _screenCaptureBlocked;
    BOOL _encryptAppData;
    BOOL _disableAppEncryptionIfDeviceEncryptionIsEnabled;
    NSString* _minimumRequiredSdkVersion;
    NSArray* _customSettings;
    int32_t _deployedAppCount;
    NSString* _minimumRequiredPatchVersion;
    NSString* _minimumWarningPatchVersion;
    BOOL _faceIdBlocked;
    NSArray* _apps;
    MSGraphManagedAppPolicyDeploymentSummary* _deploymentSummary;
}
@end

@implementation MSGraphDefaultManagedAppProtection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.defaultManagedAppProtection";
    }
    return self;
}
- (MSGraphManagedAppDataEncryptionType*) appDataEncryptionType
{
    if(!_appDataEncryptionType){
        _appDataEncryptionType = [self.dictionary[@"appDataEncryptionType"] toMSGraphManagedAppDataEncryptionType];
    }
    return _appDataEncryptionType;
}

- (void) setAppDataEncryptionType: (MSGraphManagedAppDataEncryptionType*) val
{
    _appDataEncryptionType = val;
    self.dictionary[@"appDataEncryptionType"] = val;
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

- (NSString*) minimumRequiredSdkVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumRequiredSdkVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumRequiredSdkVersion"];
}

- (void) setMinimumRequiredSdkVersion: (NSString*) val
{
    self.dictionary[@"minimumRequiredSdkVersion"] = val;
}

- (NSArray*) customSettings
{
    if(!_customSettings){
        
    NSMutableArray *customSettingsResult = [NSMutableArray array];
    NSArray *customSettings = self.dictionary[@"customSettings"];

    if ([customSettings isKindOfClass:[NSArray class]]){
        for (id tempKeyValuePair in customSettings){
            [customSettingsResult addObject:tempKeyValuePair];
        }
    }

    _customSettings = customSettingsResult;
        
    }
    return _customSettings;
}

- (void) setCustomSettings: (NSArray*) val
{
    _customSettings = val;
    self.dictionary[@"customSettings"] = val;
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

- (BOOL) faceIdBlocked
{
    _faceIdBlocked = [self.dictionary[@"faceIdBlocked"] boolValue];
    return _faceIdBlocked;
}

- (void) setFaceIdBlocked: (BOOL) val
{
    _faceIdBlocked = val;
    self.dictionary[@"faceIdBlocked"] = @(val);
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
