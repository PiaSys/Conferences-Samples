// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceConfigurationUserStatus()
{
    NSString* _userDisplayName;
    int32_t _devicesCount;
    MSGraphComplianceStatus* _status;
    NSDate* _lastReportedDateTime;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphDeviceConfigurationUserStatus

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceConfigurationUserStatus";
    }
    return self;
}
- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (int32_t) devicesCount
{
    _devicesCount = [self.dictionary[@"devicesCount"] intValue];
    return _devicesCount;
}

- (void) setDevicesCount: (int32_t) val
{
    _devicesCount = val;
    self.dictionary[@"devicesCount"] = @(val);
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
