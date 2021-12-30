// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMobileThreatDefenseConnector()
{
    NSDate* _lastHeartbeatDateTime;
    MSGraphMobileThreatPartnerTenantState* _partnerState;
    BOOL _androidEnabled;
    BOOL _iosEnabled;
    BOOL _androidDeviceBlockedOnMissingPartnerData;
    BOOL _iosDeviceBlockedOnMissingPartnerData;
    BOOL _partnerUnsupportedOsVersionBlocked;
    int32_t _partnerUnresponsivenessThresholdInDays;
}
@end

@implementation MSGraphMobileThreatDefenseConnector

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.mobileThreatDefenseConnector";
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

- (MSGraphMobileThreatPartnerTenantState*) partnerState
{
    if(!_partnerState){
        _partnerState = [self.dictionary[@"partnerState"] toMSGraphMobileThreatPartnerTenantState];
    }
    return _partnerState;
}

- (void) setPartnerState: (MSGraphMobileThreatPartnerTenantState*) val
{
    _partnerState = val;
    self.dictionary[@"partnerState"] = val;
}

- (BOOL) androidEnabled
{
    _androidEnabled = [self.dictionary[@"androidEnabled"] boolValue];
    return _androidEnabled;
}

- (void) setAndroidEnabled: (BOOL) val
{
    _androidEnabled = val;
    self.dictionary[@"androidEnabled"] = @(val);
}

- (BOOL) iosEnabled
{
    _iosEnabled = [self.dictionary[@"iosEnabled"] boolValue];
    return _iosEnabled;
}

- (void) setIosEnabled: (BOOL) val
{
    _iosEnabled = val;
    self.dictionary[@"iosEnabled"] = @(val);
}

- (BOOL) androidDeviceBlockedOnMissingPartnerData
{
    _androidDeviceBlockedOnMissingPartnerData = [self.dictionary[@"androidDeviceBlockedOnMissingPartnerData"] boolValue];
    return _androidDeviceBlockedOnMissingPartnerData;
}

- (void) setAndroidDeviceBlockedOnMissingPartnerData: (BOOL) val
{
    _androidDeviceBlockedOnMissingPartnerData = val;
    self.dictionary[@"androidDeviceBlockedOnMissingPartnerData"] = @(val);
}

- (BOOL) iosDeviceBlockedOnMissingPartnerData
{
    _iosDeviceBlockedOnMissingPartnerData = [self.dictionary[@"iosDeviceBlockedOnMissingPartnerData"] boolValue];
    return _iosDeviceBlockedOnMissingPartnerData;
}

- (void) setIosDeviceBlockedOnMissingPartnerData: (BOOL) val
{
    _iosDeviceBlockedOnMissingPartnerData = val;
    self.dictionary[@"iosDeviceBlockedOnMissingPartnerData"] = @(val);
}

- (BOOL) partnerUnsupportedOsVersionBlocked
{
    _partnerUnsupportedOsVersionBlocked = [self.dictionary[@"partnerUnsupportedOsVersionBlocked"] boolValue];
    return _partnerUnsupportedOsVersionBlocked;
}

- (void) setPartnerUnsupportedOsVersionBlocked: (BOOL) val
{
    _partnerUnsupportedOsVersionBlocked = val;
    self.dictionary[@"partnerUnsupportedOsVersionBlocked"] = @(val);
}

- (int32_t) partnerUnresponsivenessThresholdInDays
{
    _partnerUnresponsivenessThresholdInDays = [self.dictionary[@"partnerUnresponsivenessThresholdInDays"] intValue];
    return _partnerUnresponsivenessThresholdInDays;
}

- (void) setPartnerUnresponsivenessThresholdInDays: (int32_t) val
{
    _partnerUnresponsivenessThresholdInDays = val;
    self.dictionary[@"partnerUnresponsivenessThresholdInDays"] = @(val);
}


@end
