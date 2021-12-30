// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosVppApp()
{
    int32_t _usedLicenseCount;
    int32_t _totalLicenseCount;
    NSDate* _releaseDateTime;
    NSString* _appStoreUrl;
    MSGraphVppLicensingType* _licensingType;
    MSGraphIosDeviceType* _applicableDeviceType;
    NSString* _vppTokenOrganizationName;
    MSGraphVppTokenAccountType* _vppTokenAccountType;
    NSString* _vppTokenAppleId;
    NSString* _bundleId;
}
@end

@implementation MSGraphIosVppApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosVppApp";
    }
    return self;
}
- (int32_t) usedLicenseCount
{
    _usedLicenseCount = [self.dictionary[@"usedLicenseCount"] intValue];
    return _usedLicenseCount;
}

- (void) setUsedLicenseCount: (int32_t) val
{
    _usedLicenseCount = val;
    self.dictionary[@"usedLicenseCount"] = @(val);
}

- (int32_t) totalLicenseCount
{
    _totalLicenseCount = [self.dictionary[@"totalLicenseCount"] intValue];
    return _totalLicenseCount;
}

- (void) setTotalLicenseCount: (int32_t) val
{
    _totalLicenseCount = val;
    self.dictionary[@"totalLicenseCount"] = @(val);
}

- (NSDate*) releaseDateTime
{
    if(!_releaseDateTime){
        _releaseDateTime = [NSDate ms_dateFromString: self.dictionary[@"releaseDateTime"]];
    }
    return _releaseDateTime;
}

- (void) setReleaseDateTime: (NSDate*) val
{
    _releaseDateTime = val;
    self.dictionary[@"releaseDateTime"] = [val ms_toString];
}

- (NSString*) appStoreUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"appStoreUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"appStoreUrl"];
}

- (void) setAppStoreUrl: (NSString*) val
{
    self.dictionary[@"appStoreUrl"] = val;
}

- (MSGraphVppLicensingType*) licensingType
{
    if(!_licensingType){
        _licensingType = [[MSGraphVppLicensingType alloc] initWithDictionary: self.dictionary[@"licensingType"]];
    }
    return _licensingType;
}

- (void) setLicensingType: (MSGraphVppLicensingType*) val
{
    _licensingType = val;
    self.dictionary[@"licensingType"] = val;
}

- (MSGraphIosDeviceType*) applicableDeviceType
{
    if(!_applicableDeviceType){
        _applicableDeviceType = [[MSGraphIosDeviceType alloc] initWithDictionary: self.dictionary[@"applicableDeviceType"]];
    }
    return _applicableDeviceType;
}

- (void) setApplicableDeviceType: (MSGraphIosDeviceType*) val
{
    _applicableDeviceType = val;
    self.dictionary[@"applicableDeviceType"] = val;
}

- (NSString*) vppTokenOrganizationName
{
    if([[NSNull null] isEqual:self.dictionary[@"vppTokenOrganizationName"]])
    {
        return nil;
    }   
    return self.dictionary[@"vppTokenOrganizationName"];
}

- (void) setVppTokenOrganizationName: (NSString*) val
{
    self.dictionary[@"vppTokenOrganizationName"] = val;
}

- (MSGraphVppTokenAccountType*) vppTokenAccountType
{
    if(!_vppTokenAccountType){
        _vppTokenAccountType = [self.dictionary[@"vppTokenAccountType"] toMSGraphVppTokenAccountType];
    }
    return _vppTokenAccountType;
}

- (void) setVppTokenAccountType: (MSGraphVppTokenAccountType*) val
{
    _vppTokenAccountType = val;
    self.dictionary[@"vppTokenAccountType"] = val;
}

- (NSString*) vppTokenAppleId
{
    if([[NSNull null] isEqual:self.dictionary[@"vppTokenAppleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"vppTokenAppleId"];
}

- (void) setVppTokenAppleId: (NSString*) val
{
    self.dictionary[@"vppTokenAppleId"] = val;
}

- (NSString*) bundleId
{
    if([[NSNull null] isEqual:self.dictionary[@"bundleId"]])
    {
        return nil;
    }   
    return self.dictionary[@"bundleId"];
}

- (void) setBundleId: (NSString*) val
{
    self.dictionary[@"bundleId"] = val;
}


@end
