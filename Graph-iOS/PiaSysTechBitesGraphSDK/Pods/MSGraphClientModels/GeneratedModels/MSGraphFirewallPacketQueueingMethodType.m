// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFirewallPacketQueueingMethodType.h"

@interface MSGraphFirewallPacketQueueingMethodType () {
    MSGraphFirewallPacketQueueingMethodTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFirewallPacketQueueingMethodTypeValue enumValue;
@end

@implementation MSGraphFirewallPacketQueueingMethodType

+ (MSGraphFirewallPacketQueueingMethodType*) deviceDefault {
    static MSGraphFirewallPacketQueueingMethodType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _deviceDefault.enumValue = MSGraphFirewallPacketQueueingMethodTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphFirewallPacketQueueingMethodType*) disabled {
    static MSGraphFirewallPacketQueueingMethodType *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _disabled.enumValue = MSGraphFirewallPacketQueueingMethodTypeDisabled;
    });
    return _disabled;
}
+ (MSGraphFirewallPacketQueueingMethodType*) queueInbound {
    static MSGraphFirewallPacketQueueingMethodType *_queueInbound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _queueInbound = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _queueInbound.enumValue = MSGraphFirewallPacketQueueingMethodTypeQueueInbound;
    });
    return _queueInbound;
}
+ (MSGraphFirewallPacketQueueingMethodType*) queueOutbound {
    static MSGraphFirewallPacketQueueingMethodType *_queueOutbound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _queueOutbound = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _queueOutbound.enumValue = MSGraphFirewallPacketQueueingMethodTypeQueueOutbound;
    });
    return _queueOutbound;
}
+ (MSGraphFirewallPacketQueueingMethodType*) queueBoth {
    static MSGraphFirewallPacketQueueingMethodType *_queueBoth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _queueBoth = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _queueBoth.enumValue = MSGraphFirewallPacketQueueingMethodTypeQueueBoth;
    });
    return _queueBoth;
}

+ (MSGraphFirewallPacketQueueingMethodType*) UnknownEnumValue {
    static MSGraphFirewallPacketQueueingMethodType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFirewallPacketQueueingMethodType alloc] init];
        _unknownValue.enumValue = MSGraphFirewallPacketQueueingMethodTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFirewallPacketQueueingMethodType*) firewallPacketQueueingMethodTypeWithEnumValue:(MSGraphFirewallPacketQueueingMethodTypeValue)val {

    switch(val)
    {
        case MSGraphFirewallPacketQueueingMethodTypeDeviceDefault:
            return [MSGraphFirewallPacketQueueingMethodType deviceDefault];
        case MSGraphFirewallPacketQueueingMethodTypeDisabled:
            return [MSGraphFirewallPacketQueueingMethodType disabled];
        case MSGraphFirewallPacketQueueingMethodTypeQueueInbound:
            return [MSGraphFirewallPacketQueueingMethodType queueInbound];
        case MSGraphFirewallPacketQueueingMethodTypeQueueOutbound:
            return [MSGraphFirewallPacketQueueingMethodType queueOutbound];
        case MSGraphFirewallPacketQueueingMethodTypeQueueBoth:
            return [MSGraphFirewallPacketQueueingMethodType queueBoth];
        case MSGraphFirewallPacketQueueingMethodTypeEndOfEnum:
        default:
            return [MSGraphFirewallPacketQueueingMethodType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFirewallPacketQueueingMethodTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphFirewallPacketQueueingMethodTypeDisabled:
            return @"disabled";
        case MSGraphFirewallPacketQueueingMethodTypeQueueInbound:
            return @"queueInbound";
        case MSGraphFirewallPacketQueueingMethodTypeQueueOutbound:
            return @"queueOutbound";
        case MSGraphFirewallPacketQueueingMethodTypeQueueBoth:
            return @"queueBoth";
        case MSGraphFirewallPacketQueueingMethodTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFirewallPacketQueueingMethodTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFirewallPacketQueueingMethodType)

- (MSGraphFirewallPacketQueueingMethodType*) toMSGraphFirewallPacketQueueingMethodType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphFirewallPacketQueueingMethodType deviceDefault];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphFirewallPacketQueueingMethodType disabled];
    }
    else if([self isEqualToString:@"queueInbound"])
    {
          return [MSGraphFirewallPacketQueueingMethodType queueInbound];
    }
    else if([self isEqualToString:@"queueOutbound"])
    {
          return [MSGraphFirewallPacketQueueingMethodType queueOutbound];
    }
    else if([self isEqualToString:@"queueBoth"])
    {
          return [MSGraphFirewallPacketQueueingMethodType queueBoth];
    }
    else {
        return [MSGraphFirewallPacketQueueingMethodType UnknownEnumValue];
    }
}

@end
