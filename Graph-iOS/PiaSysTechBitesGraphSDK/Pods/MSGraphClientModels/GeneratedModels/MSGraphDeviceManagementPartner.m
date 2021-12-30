// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceManagementPartner()
{
    NSDate* _lastHeartbeatDateTime;
    MSGraphDeviceManagementPartnerTenantState* _partnerState;
    MSGraphDeviceManagementPartnerAppType* _partnerAppType;
    NSString* _singleTenantAppId;
    NSString* _displayName;
    BOOL _isConfigured;
    NSDate* _whenPartnerDevicesWillBeRemovedDateTime;
    NSDate* _whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime;
}
@end

@implementation MSGraphDeviceManagementPartner

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceManagementPartner";
    }
    return self;
}
- (NSDate*) lastHeartbeatDateTime
{
    if(!_lastHeartbeatDateTime){
        _lastHeartbeatDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastHeartbeatDateTime"]];
    }
    return _lastHeartbeatDateTime;
}

- (void) setLastHeartbeatDateTime: (NSDate*) val
{
    _lastHeartbeatDateTime = val;
    self.dictionary[@"lastHeartbeatDateTime"] = [val ms_toString];
}

- (MSGraphDeviceManagementPartnerTenantState*) partnerState
{
    if(!_partnerState){
        _partnerState = [self.dictionary[@"partnerState"] toMSGraphDeviceManagementPartnerTenantState];
    }
    return _partnerState;
}

- (void) setPartnerState: (MSGraphDeviceManagementPartnerTenantState*) val
{
    _partnerState = val;
    self.dictionary[@"partnerState"] = val;
}

- (MSGraphDeviceManagementPartnerAppType*) partnerAppType
{
    if(!_partnerAppType){
        _partnerAppType = [self.dictionary[@"partnerAppType"] toMSGraphDeviceManagementPartnerAppType];
    }
    return _partnerAppType;
}

- (void) setPartnerAppType: (MSGraphDeviceManagementPartnerAppType*) val
{
    _partnerAppType = val;
    self.dictionary[@"partnerAppType"] = val;
}

- (NSString*) singleTenantAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"singleTenantAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"singleTenantAppId"];
}

- (void) setSingleTenantAppId: (NSString*) val
{
    self.dictionary[@"singleTenantAppId"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isConfigured
{
    _isConfigured = [self.dictionary[@"isConfigured"] boolValue];
    return _isConfigured;
}

- (void) setIsConfigured: (BOOL) val
{
    _isConfigured = val;
    self.dictionary[@"isConfigured"] = @(val);
}

- (NSDate*) whenPartnerDevicesWillBeRemovedDateTime
{
    if(!_whenPartnerDevicesWillBeRemovedDateTime){
        _whenPartnerDevicesWillBeRemovedDateTime = [NSDate ms_dateFromString: self.dictionary[@"whenPartnerDevicesWillBeRemovedDateTime"]];
    }
    return _whenPartnerDevicesWillBeRemovedDateTime;
}

- (void) setWhenPartnerDevicesWillBeRemovedDateTime: (NSDate*) val
{
    _whenPartnerDevicesWillBeRemovedDateTime = val;
    self.dictionary[@"whenPartnerDevicesWillBeRemovedDateTime"] = [val ms_toString];
}

- (NSDate*) whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime
{
    if(!_whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime){
        _whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = [NSDate ms_dateFromString: self.dictionary[@"whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime"]];
    }
    return _whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime;
}

- (void) setWhenPartnerDevicesWillBeMarkedAsNonCompliantDateTime: (NSDate*) val
{
    _whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = val;
    self.dictionary[@"whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime"] = [val ms_toString];
}


@end
