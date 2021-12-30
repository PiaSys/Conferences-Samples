// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceInstallState()
{
    NSString* _deviceName;
    NSString* _deviceId;
    NSDate* _lastSyncDateTime;
    MSGraphInstallState* _installState;
    NSString* _errorCode;
    NSString* _osVersion;
    NSString* _osDescription;
    NSString* _userName;
}
@end

@implementation MSGraphDeviceInstallState

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceInstallState";
    }
    return self;
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

- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (MSGraphInstallState*) installState
{
    if(!_installState){
        _installState = [self.dictionary[@"installState"] toMSGraphInstallState];
    }
    return _installState;
}

- (void) setInstallState: (MSGraphInstallState*) val
{
    _installState = val;
    self.dictionary[@"installState"] = val;
}

- (NSString*) errorCode
{
    if([[NSNull null] isEqual:self.dictionary[@"errorCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"errorCode"];
}

- (void) setErrorCode: (NSString*) val
{
    self.dictionary[@"errorCode"] = val;
}

- (NSString*) osVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osVersion"];
}

- (void) setOsVersion: (NSString*) val
{
    self.dictionary[@"osVersion"] = val;
}

- (NSString*) osDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"osDescription"]])
    {
        return nil;
    }   
    return self.dictionary[@"osDescription"];
}

- (void) setOsDescription: (NSString*) val
{
    self.dictionary[@"osDescription"] = val;
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


@end
