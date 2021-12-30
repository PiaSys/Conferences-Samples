// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSecurityNetworkProtocolValue){

	MSGraphSecurityNetworkProtocolUnknown = -1,
	MSGraphSecurityNetworkProtocolIp = 0,
	MSGraphSecurityNetworkProtocolIcmp = 1,
	MSGraphSecurityNetworkProtocolIgmp = 2,
	MSGraphSecurityNetworkProtocolGgp = 3,
	MSGraphSecurityNetworkProtocolIpv4 = 4,
	MSGraphSecurityNetworkProtocolTcp = 6,
	MSGraphSecurityNetworkProtocolPup = 12,
	MSGraphSecurityNetworkProtocolUdp = 17,
	MSGraphSecurityNetworkProtocolIdp = 22,
	MSGraphSecurityNetworkProtocolIpv6 = 41,
	MSGraphSecurityNetworkProtocolIpv6RoutingHeader = 43,
	MSGraphSecurityNetworkProtocolIpv6FragmentHeader = 44,
	MSGraphSecurityNetworkProtocolIpSecEncapsulatingSecurityPayload = 50,
	MSGraphSecurityNetworkProtocolIpSecAuthenticationHeader = 51,
	MSGraphSecurityNetworkProtocolIcmpV6 = 58,
	MSGraphSecurityNetworkProtocolIpv6NoNextHeader = 59,
	MSGraphSecurityNetworkProtocolIpv6DestinationOptions = 60,
	MSGraphSecurityNetworkProtocolNd = 77,
	MSGraphSecurityNetworkProtocolRaw = 255,
	MSGraphSecurityNetworkProtocolIpx = 1000,
	MSGraphSecurityNetworkProtocolSpx = 1256,
	MSGraphSecurityNetworkProtocolSpxII = 1257,
	MSGraphSecurityNetworkProtocolUnknownFutureValue = 32767,
    MSGraphSecurityNetworkProtocolEndOfEnum
};

@interface MSGraphSecurityNetworkProtocol : NSObject

+(MSGraphSecurityNetworkProtocol*) unknown;
+(MSGraphSecurityNetworkProtocol*) ip;
+(MSGraphSecurityNetworkProtocol*) icmp;
+(MSGraphSecurityNetworkProtocol*) igmp;
+(MSGraphSecurityNetworkProtocol*) ggp;
+(MSGraphSecurityNetworkProtocol*) ipv4;
+(MSGraphSecurityNetworkProtocol*) tcp;
+(MSGraphSecurityNetworkProtocol*) pup;
+(MSGraphSecurityNetworkProtocol*) udp;
+(MSGraphSecurityNetworkProtocol*) idp;
+(MSGraphSecurityNetworkProtocol*) ipv6;
+(MSGraphSecurityNetworkProtocol*) ipv6RoutingHeader;
+(MSGraphSecurityNetworkProtocol*) ipv6FragmentHeader;
+(MSGraphSecurityNetworkProtocol*) ipSecEncapsulatingSecurityPayload;
+(MSGraphSecurityNetworkProtocol*) ipSecAuthenticationHeader;
+(MSGraphSecurityNetworkProtocol*) icmpV6;
+(MSGraphSecurityNetworkProtocol*) ipv6NoNextHeader;
+(MSGraphSecurityNetworkProtocol*) ipv6DestinationOptions;
+(MSGraphSecurityNetworkProtocol*) nd;
+(MSGraphSecurityNetworkProtocol*) raw;
+(MSGraphSecurityNetworkProtocol*) ipx;
+(MSGraphSecurityNetworkProtocol*) spx;
+(MSGraphSecurityNetworkProtocol*) spxII;
+(MSGraphSecurityNetworkProtocol*) unknownFutureValue;

+(MSGraphSecurityNetworkProtocol*) UnknownEnumValue;

+(MSGraphSecurityNetworkProtocol*) securityNetworkProtocolWithEnumValue:(MSGraphSecurityNetworkProtocolValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSecurityNetworkProtocolValue enumValue;

@end


@interface NSString (MSGraphSecurityNetworkProtocol)

- (MSGraphSecurityNetworkProtocol*) toMSGraphSecurityNetworkProtocol;

@end
