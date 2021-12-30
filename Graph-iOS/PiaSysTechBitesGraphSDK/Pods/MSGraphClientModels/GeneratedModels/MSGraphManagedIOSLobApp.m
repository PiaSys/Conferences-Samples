// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedIOSLobApp()
{
    NSString* _bundleId;
    MSGraphIosDeviceType* _applicableDeviceType;
    MSGraphIosMinimumOperatingSystem* _minimumSupportedOperatingSystem;
    NSDate* _expirationDateTime;
    NSString* _versionNumber;
    NSString* _buildNumber;
}
@end

@implementation MSGraphManagedIOSLobApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedIOSLobApp";
    }
    return self;
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

- (MSGraphIosMinimumOperatingSystem*) minimumSupportedOperatingSystem
{
    if(!_minimumSupportedOperatingSystem){
        _minimumSupportedOperatingSystem = [[MSGraphIosMinimumOperatingSystem alloc] initWithDictionary: self.dictionary[@"minimumSupportedOperatingSystem"]];
    }
    return _minimumSupportedOperatingSystem;
}

- (void) setMinimumSupportedOperatingSystem: (MSGraphIosMinimumOperatingSystem*) val
{
    _minimumSupportedOperatingSystem = val;
    self.dictionary[@"minimumSupportedOperatingSystem"] = val;
}

- (NSDate*) expirationDateTime
{
    if(!_expirationDateTime){
        _expirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"expirationDateTime"]];
    }
    return _expirationDateTime;
}

- (void) setExpirationDateTime: (NSDate*) val
{
    _expirationDateTime = val;
    self.dictionary[@"expirationDateTime"] = [val ms_toString];
}

- (NSString*) versionNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"versionNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"versionNumber"];
}

- (void) setVersionNumber: (NSString*) val
{
    self.dictionary[@"versionNumber"] = val;
}

- (NSString*) buildNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"buildNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"buildNumber"];
}

- (void) setBuildNumber: (NSString*) val
{
    self.dictionary[@"buildNumber"] = val;
}


@end
