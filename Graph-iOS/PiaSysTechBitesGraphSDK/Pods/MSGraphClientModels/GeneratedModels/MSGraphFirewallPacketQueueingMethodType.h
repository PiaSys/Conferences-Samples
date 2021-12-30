// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFirewallPacketQueueingMethodTypeValue){

	MSGraphFirewallPacketQueueingMethodTypeDeviceDefault = 0,
	MSGraphFirewallPacketQueueingMethodTypeDisabled = 1,
	MSGraphFirewallPacketQueueingMethodTypeQueueInbound = 2,
	MSGraphFirewallPacketQueueingMethodTypeQueueOutbound = 3,
	MSGraphFirewallPacketQueueingMethodTypeQueueBoth = 4,
    MSGraphFirewallPacketQueueingMethodTypeEndOfEnum
};

@interface MSGraphFirewallPacketQueueingMethodType : NSObject

+(MSGraphFirewallPacketQueueingMethodType*) deviceDefault;
+(MSGraphFirewallPacketQueueingMethodType*) disabled;
+(MSGraphFirewallPacketQueueingMethodType*) queueInbound;
+(MSGraphFirewallPacketQueueingMethodType*) queueOutbound;
+(MSGraphFirewallPacketQueueingMethodType*) queueBoth;

+(MSGraphFirewallPacketQueueingMethodType*) UnknownEnumValue;

+(MSGraphFirewallPacketQueueingMethodType*) firewallPacketQueueingMethodTypeWithEnumValue:(MSGraphFirewallPacketQueueingMethodTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFirewallPacketQueueingMethodTypeValue enumValue;

@end


@interface NSString (MSGraphFirewallPacketQueueingMethodType)

- (MSGraphFirewallPacketQueueingMethodType*) toMSGraphFirewallPacketQueueingMethodType;

@end
