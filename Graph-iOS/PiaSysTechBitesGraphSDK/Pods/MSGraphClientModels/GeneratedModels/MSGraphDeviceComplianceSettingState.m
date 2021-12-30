// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceComplianceSettingState()
{
    NSString* _setting;
    NSString* _settingName;
    NSString* _deviceId;
    NSString* _deviceName;
    NSString* _userId;
    NSString* _userEmail;
    NSString* _userName;
    NSString* _userPrincipalName;
    NSString* _deviceModel;
    MSGraphComplianceStatus* _state;
    NSDate* _complianceGracePeriodExpirationDateTime;
}
@end

@implementation MSGraphDeviceComplianceSettingState

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceComplianceSettingState";
    }
    return self;
}
- (NSString*) setting
{
    if([[NSNull null] isEqual:self.dictionary[@"setting"]])
    {
        return nil;
    }   
    return self.dictionary[@"setting"];
}

- (void) setSetting: (NSString*) val
{
    self.dictionary[@"setting"] = val;
}

- (NSString*) settingName
{
    if([[NSNull null] isEqual:self.dictionary[@"settingName"]])
    {
        return nil;
    }   
    return self.dictionary[@"settingName"];
}

- (void) setSettingName: (NSString*) val
{
    self.dictionary[@"settingName"] = val;
}

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
}

- (NSString*) deviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) userEmail
{
    if([[NSNull null] isEqual:self.dictionary[@"userEmail"]])
    {
        return nil;
    }   
    return self.dictionary[@"userEmail"];
}

- (void) setUserEmail: (NSString*) val
{
    self.dictionary[@"userEmail"] = val;
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

- (MSGraphComplianceStatus*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphComplianceStatus];
    }
    return _state;
}

- (void) setState: (MSGraphComplianceStatus*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
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


@end
