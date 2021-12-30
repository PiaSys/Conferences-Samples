// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedDeviceMobileAppConfigurationDeviceStatus()
{
    NSString* _deviceDisplayName;
    NSString* _userName;
    NSString* _deviceModel;
    NSDate* _complianceGracePeriodExpirationDateTime;
    MSGraphComplianceStatus* _status;
    NSDate* _lastReportedDateTime;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphManagedDeviceMobileAppConfigurationDeviceStatus

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedDeviceMobileAppConfigurationDeviceStatus";
    }
    return self;
}
- (NSString*) deviceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceDisplayName"];
}

- (void) setDeviceDisplayName: (NSString*) val
{
    self.dictionary[@"deviceDisplayName"] = val;
}

- (NSString*) userName
{
    if([[NSNull null] isEqual:self.dictionary[@"userName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userName"];
}

- (void) setUserName: (NSString*) val
{
    self.dictionary[@"userName"] = val;
}

- (NSString*) deviceModel
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceModel"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceModel"];
}

- (void) setDeviceModel: (NSString*) val
{
    self.dictionary[@"deviceModel"] = val;
}

- (NSDate*) complianceGracePeriodExpirationDateTime
{
    if(!_complianceGracePeriodExpirationDateTime){
        _complianceGracePeriodExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"complianceGracePeriodExpirationDateTime"]];
    }
    return _complianceGracePeriodExpirationDateTime;
}

- (void) setComplianceGracePeriodExpirationDateTime: (NSDate*) val
{
    _complianceGracePeriodExpirationDateTime = val;
    self.dictionary[@"complianceGracePeriodExpirationDateTime"] = [val ms_toString];
}

- (MSGraphComplianceStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphComplianceStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphComplianceStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSDate*) lastReportedDateTime
{
    if(!_lastReportedDateTime){
        _lastReportedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastReportedDateTime"]];
    }
    return _lastReportedDateTime;
}

- (void) setLastReportedDateTime: (NSDate*) val
{
    _lastReportedDateTime = val;
    self.dictionary[@"lastReportedDateTime"] = [val ms_toString];
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}


@end
