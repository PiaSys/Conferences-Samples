// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsUniversalAppX()
{
    MSGraphWindowsArchitecture* _applicableArchitectures;
    MSGraphWindowsDeviceType* _applicableDeviceTypes;
    NSString* _identityName;
    NSString* _identityPublisherHash;
    NSString* _identityResourceIdentifier;
    BOOL _isBundle;
    MSGraphWindowsMinimumOperatingSystem* _minimumSupportedOperatingSystem;
    NSString* _identityVersion;
}
@end

@implementation MSGraphWindowsUniversalAppX

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsUniversalAppX";
    }
    return self;
}
- (MSGraphWindowsArchitecture*) applicableArchitectures
{
    if(!_applicableArchitectures){
        _applicableArchitectures = [self.dictionary[@"applicableArchitectures"] toMSGraphWindowsArchitecture];
    }
    return _applicableArchitectures;
}

- (void) setApplicableArchitectures: (MSGraphWindowsArchitecture*) val
{
    _applicableArchitectures = val;
    self.dictionary[@"applicableArchitectures"] = val;
}

- (MSGraphWindowsDeviceType*) applicableDeviceTypes
{
    if(!_applicableDeviceTypes){
        _applicableDeviceTypes = [self.dictionary[@"applicableDeviceTypes"] toMSGraphWindowsDeviceType];
    }
    return _applicableDeviceTypes;
}

- (void) setApplicableDeviceTypes: (MSGraphWindowsDeviceType*) val
{
    _applicableDeviceTypes = val;
    self.dictionary[@"applicableDeviceTypes"] = val;
}

- (NSString*) identityName
{
    if([[NSNull null] isEqual:self.dictionary[@"identityName"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityName"];
}

- (void) setIdentityName: (NSString*) val
{
    self.dictionary[@"identityName"] = val;
}

- (NSString*) identityPublisherHash
{
    return self.dictionary[@"identityPublisherHash"];
}

- (void) setIdentityPublisherHash: (NSString*) val
{
    self.dictionary[@"identityPublisherHash"] = val;
}

- (NSString*) identityResourceIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"identityResourceIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityResourceIdentifier"];
}

- (void) setIdentityResourceIdentifier: (NSString*) val
{
    self.dictionary[@"identityResourceIdentifier"] = val;
}

- (BOOL) isBundle
{
    _isBundle = [self.dictionary[@"isBundle"] boolValue];
    return _isBundle;
}

- (void) setIsBundle: (BOOL) val
{
    _isBundle = val;
    self.dictionary[@"isBundle"] = @(val);
}

- (MSGraphWindowsMinimumOperatingSystem*) minimumSupportedOperatingSystem
{
    if(!_minimumSupportedOperatingSystem){
        _minimumSupportedOperatingSystem = [[MSGraphWindowsMinimumOperatingSystem alloc] initWithDictionary: self.dictionary[@"minimumSupportedOperatingSystem"]];
    }
    return _minimumSupportedOperatingSystem;
}

- (void) setMinimumSupportedOperatingSystem: (MSGraphWindowsMinimumOperatingSystem*) val
{
    _minimumSupportedOperatingSystem = val;
    self.dictionary[@"minimumSupportedOperatingSystem"] = val;
}

- (NSString*) identityVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"identityVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityVersion"];
}

- (void) setIdentityVersion: (NSString*) val
{
    self.dictionary[@"identityVersion"] = val;
}


@end
