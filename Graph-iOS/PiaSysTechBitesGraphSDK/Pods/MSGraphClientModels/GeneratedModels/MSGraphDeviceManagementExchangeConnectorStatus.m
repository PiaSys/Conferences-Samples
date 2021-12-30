// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementExchangeConnectorStatus.h"

@interface MSGraphDeviceManagementExchangeConnectorStatus () {
    MSGraphDeviceManagementExchangeConnectorStatusValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementExchangeConnectorStatusValue enumValue;
@end

@implementation MSGraphDeviceManagementExchangeConnectorStatus

+ (MSGraphDeviceManagementExchangeConnectorStatus*) none {
    static MSGraphDeviceManagementExchangeConnectorStatus *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphDeviceManagementExchangeConnectorStatus alloc] init];
        _none.enumValue = MSGraphDeviceManagementExchangeConnectorStatusNone;
    });
    return _none;
}
+ (MSGraphDeviceManagementExchangeConnectorStatus*) connectionPending {
    static MSGraphDeviceManagementExchangeConnectorStatus *_connectionPending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _connectionPending = [[MSGraphDeviceManagementExchangeConnectorStatus alloc] init];
        _connectionPending.enumValue = MSGraphDeviceManagementExchangeConnectorStatusConnectionPending;
    });
    return _connectionPending;
}
+ (MSGraphDeviceManagementExchangeConnectorStatus*) connected {
    static MSGraphDeviceManagementExchangeConnectorStatus *_connected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _connected = [[MSGraphDeviceManagementExchangeConnectorStatus alloc] init];
        _connected.enumValue = MSGraphDeviceManagementExchangeConnectorStatusConnected;
    });
    return _connected;
}
+ (MSGraphDeviceManagementExchangeConnectorStatus*) disconnected {
    static MSGraphDeviceManagementExchangeConnectorStatus *_disconnected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disconnected = [[MSGraphDeviceManagementExchangeConnectorStatus alloc] init];
        _disconnected.enumValue = MSGraphDeviceManagementExchangeConnectorStatusDisconnected;
    });
    return _disconnected;
}

+ (MSGraphDeviceManagementExchangeConnectorStatus*) UnknownEnumValue {
    static MSGraphDeviceManagementExchangeConnectorStatus *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementExchangeConnectorStatus alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementExchangeConnectorStatusEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementExchangeConnectorStatus*) deviceManagementExchangeConnectorStatusWithEnumValue:(MSGraphDeviceManagementExchangeConnectorStatusValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementExchangeConnectorStatusNone:
            return [MSGraphDeviceManagementExchangeConnectorStatus none];
        case MSGraphDeviceManagementExchangeConnectorStatusConnectionPending:
            return [MSGraphDeviceManagementExchangeConnectorStatus connectionPending];
        case MSGraphDeviceManagementExchangeConnectorStatusConnected:
            return [MSGraphDeviceManagementExchangeConnectorStatus connected];
        case MSGraphDeviceManagementExchangeConnectorStatusDisconnected:
            return [MSGraphDeviceManagementExchangeConnectorStatus disconnected];
        case MSGraphDeviceManagementExchangeConnectorStatusEndOfEnum:
        default:
            return [MSGraphDeviceManagementExchangeConnectorStatus UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementExchangeConnectorStatusNone:
            return @"none";
        case MSGraphDeviceManagementExchangeConnectorStatusConnectionPending:
            return @"connectionPending";
        case MSGraphDeviceManagementExchangeConnectorStatusConnected:
            return @"connected";
        case MSGraphDeviceManagementExchangeConnectorStatusDisconnected:
            return @"disconnected";
        case MSGraphDeviceManagementExchangeConnectorStatusEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementExchangeConnectorStatusValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementExchangeConnectorStatus)

- (MSGraphDeviceManagementExchangeConnectorStatus*) toMSGraphDeviceManagementExchangeConnectorStatus{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphDeviceManagementExchangeConnectorStatus none];
    }
    else if([self isEqualToString:@"connectionPending"])
    {
          return [MSGraphDeviceManagementExchangeConnectorStatus connectionPending];
    }
    else if([self isEqualToString:@"connected"])
    {
          return [MSGraphDeviceManagementExchangeConnectorStatus connected];
    }
    else if([self isEqualToString:@"disconnected"])
    {
          return [MSGraphDeviceManagementExchangeConnectorStatus disconnected];
    }
    else {
        return [MSGraphDeviceManagementExchangeConnectorStatus UnknownEnumValue];
    }
}

@end
