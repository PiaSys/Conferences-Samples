// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosManagedAppProtection()
{
    MSGraphManagedAppDataEncryptionType* _appDataEncryptionType;
    NSString* _minimumRequiredSdkVersion;
    int32_t _deployedAppCount;
    BOOL _faceIdBlocked;
    NSArray* _apps;
    MSGraphManagedAppPolicyDeploymentSummary* _deploymentSummary;
}
@end

@implementation MSGraphIosManagedAppProtection

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosManagedAppProtection";
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
