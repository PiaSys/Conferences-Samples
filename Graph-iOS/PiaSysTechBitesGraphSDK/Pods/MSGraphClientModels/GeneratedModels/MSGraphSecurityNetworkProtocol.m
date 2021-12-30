// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSecurityNetworkProtocol.h"

@interface MSGraphSecurityNetworkProtocol () {
    MSGraphSecurityNetworkProtocolValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSecurityNetworkProtocolValue enumValue;
@end

@implementation MSGraphSecurityNetworkProtocol

+ (MSGraphSecurityNetworkProtocol*) unknown {
    static MSGraphSecurityNetworkProtocol *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphSecurityNetworkProtocol alloc] init];
        _unknown.enumValue = MSGraphSecurityNetworkProtocolUnknown;
    });
    return _unknown;
}
+ (MSGraphSecurityNetworkProtocol*) ip {
    static MSGraphSecurityNetworkProtocol *_ip;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ip = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ip.enumValue = MSGraphSecurityNetworkProtocolIp;
    });
    return _ip;
}
+ (MSGraphSecurityNetworkProtocol*) icmp {
    static MSGraphSecurityNetworkProtocol *_icmp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _icmp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _icmp.enumValue = MSGraphSecurityNetworkProtocolIcmp;
    });
    return _icmp;
}
+ (MSGraphSecurityNetworkProtocol*) igmp {
    static MSGraphSecurityNetworkProtocol *_igmp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _igmp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _igmp.enumValue = MSGraphSecurityNetworkProtocolIgmp;
    });
    return _igmp;
}
+ (MSGraphSecurityNetworkProtocol*) ggp {
    static MSGraphSecurityNetworkProtocol *_ggp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ggp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ggp.enumValue = MSGraphSecurityNetworkProtocolGgp;
    });
    return _ggp;
}
+ (MSGraphSecurityNetworkProtocol*) ipv4 {
    static MSGraphSecurityNetworkProtocol *_ipv4;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv4 = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv4.enumValue = MSGraphSecurityNetworkProtocolIpv4;
    });
    return _ipv4;
}
+ (MSGraphSecurityNetworkProtocol*) tcp {
    static MSGraphSecurityNetworkProtocol *_tcp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tcp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _tcp.enumValue = MSGraphSecurityNetworkProtocolTcp;
    });
    return _tcp;
}
+ (MSGraphSecurityNetworkProtocol*) pup {
    static MSGraphSecurityNetworkProtocol *_pup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pup = [[MSGraphSecurityNetworkProtocol alloc] init];
        _pup.enumValue = MSGraphSecurityNetworkProtocolPup;
    });
    return _pup;
}
+ (MSGraphSecurityNetworkProtocol*) udp {
    static MSGraphSecurityNetworkProtocol *_udp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _udp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _udp.enumValue = MSGraphSecurityNetworkProtocolUdp;
    });
    return _udp;
}
+ (MSGraphSecurityNetworkProtocol*) idp {
    static MSGraphSecurityNetworkProtocol *_idp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _idp = [[MSGraphSecurityNetworkProtocol alloc] init];
        _idp.enumValue = MSGraphSecurityNetworkProtocolIdp;
    });
    return _idp;
}
+ (MSGraphSecurityNetworkProtocol*) ipv6 {
    static MSGraphSecurityNetworkProtocol *_ipv6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv6 = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv6.enumValue = MSGraphSecurityNetworkProtocolIpv6;
    });
    return _ipv6;
}
+ (MSGraphSecurityNetworkProtocol*) ipv6RoutingHeader {
    static MSGraphSecurityNetworkProtocol *_ipv6RoutingHeader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv6RoutingHeader = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv6RoutingHeader.enumValue = MSGraphSecurityNetworkProtocolIpv6RoutingHeader;
    });
    return _ipv6RoutingHeader;
}
+ (MSGraphSecurityNetworkProtocol*) ipv6FragmentHeader {
    static MSGraphSecurityNetworkProtocol *_ipv6FragmentHeader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv6FragmentHeader = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv6FragmentHeader.enumValue = MSGraphSecurityNetworkProtocolIpv6FragmentHeader;
    });
    return _ipv6FragmentHeader;
}
+ (MSGraphSecurityNetworkProtocol*) ipSecEncapsulatingSecurityPayload {
    static MSGraphSecurityNetworkProtocol *_ipSecEncapsulatingSecurityPayload;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipSecEncapsulatingSecurityPayload = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipSecEncapsulatingSecurityPayload.enumValue = MSGraphSecurityNetworkProtocolIpSecEncapsulatingSecurityPayload;
    });
    return _ipSecEncapsulatingSecurityPayload;
}
+ (MSGraphSecurityNetworkProtocol*) ipSecAuthenticationHeader {
    static MSGraphSecurityNetworkProtocol *_ipSecAuthenticationHeader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipSecAuthenticationHeader = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipSecAuthenticationHeader.enumValue = MSGraphSecurityNetworkProtocolIpSecAuthenticationHeader;
    });
    return _ipSecAuthenticationHeader;
}
+ (MSGraphSecurityNetworkProtocol*) icmpV6 {
    static MSGraphSecurityNetworkProtocol *_icmpV6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _icmpV6 = [[MSGraphSecurityNetworkProtocol alloc] init];
        _icmpV6.enumValue = MSGraphSecurityNetworkProtocolIcmpV6;
    });
    return _icmpV6;
}
+ (MSGraphSecurityNetworkProtocol*) ipv6NoNextHeader {
    static MSGraphSecurityNetworkProtocol *_ipv6NoNextHeader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv6NoNextHeader = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv6NoNextHeader.enumValue = MSGraphSecurityNetworkProtocolIpv6NoNextHeader;
    });
    return _ipv6NoNextHeader;
}
+ (MSGraphSecurityNetworkProtocol*) ipv6DestinationOptions {
    static MSGraphSecurityNetworkProtocol *_ipv6DestinationOptions;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipv6DestinationOptions = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipv6DestinationOptions.enumValue = MSGraphSecurityNetworkProtocolIpv6DestinationOptions;
    });
    return _ipv6DestinationOptions;
}
+ (MSGraphSecurityNetworkProtocol*) nd {
    static MSGraphSecurityNetworkProtocol *_nd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _nd = [[MSGraphSecurityNetworkProtocol alloc] init];
        _nd.enumValue = MSGraphSecurityNetworkProtocolNd;
    });
    return _nd;
}
+ (MSGraphSecurityNetworkProtocol*) raw {
    static MSGraphSecurityNetworkProtocol *_raw;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _raw = [[MSGraphSecurityNetworkProtocol alloc] init];
        _raw.enumValue = MSGraphSecurityNetworkProtocolRaw;
    });
    return _raw;
}
+ (MSGraphSecurityNetworkProtocol*) ipx {
    static MSGraphSecurityNetworkProtocol *_ipx;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _ipx = [[MSGraphSecurityNetworkProtocol alloc] init];
        _ipx.enumValue = MSGraphSecurityNetworkProtocolIpx;
    });
    return _ipx;
}
+ (MSGraphSecurityNetworkProtocol*) spx {
    static MSGraphSecurityNetworkProtocol *_spx;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _spx = [[MSGraphSecurityNetworkProtocol alloc] init];
        _spx.enumValue = MSGraphSecurityNetworkProtocolSpx;
    });
    return _spx;
}
+ (MSGraphSecurityNetworkProtocol*) spxII {
    static MSGraphSecurityNetworkProtocol *_spxII;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _spxII = [[MSGraphSecurityNetworkProtocol alloc] init];
        _spxII.enumValue = MSGraphSecurityNetworkProtocolSpxII;
    });
    return _spxII;
}
+ (MSGraphSecurityNetworkProtocol*) unknownFutureValue {
    static MSGraphSecurityNetworkProtocol *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSecurityNetworkProtocol alloc] init];
        _unknownFutureValue.enumValue = MSGraphSecurityNetworkProtocolUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSecurityNetworkProtocol*) UnknownEnumValue {
    static MSGraphSecurityNetworkProtocol *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSecurityNetworkProtocol alloc] init];
        _unknownValue.enumValue = MSGraphSecurityNetworkProtocolEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSecurityNetworkProtocol*) securityNetworkProtocolWithEnumValue:(MSGraphSecurityNetworkProtocolValue)val {

    switch(val)
    {
        case MSGraphSecurityNetworkProtocolIp:
            return [MSGraphSecurityNetworkProtocol ip];
        case MSGraphSecurityNetworkProtocolIcmp:
            return [MSGraphSecurityNetworkProtocol icmp];
        case MSGraphSecurityNetworkProtocolIgmp:
            return [MSGraphSecurityNetworkProtocol igmp];
        case MSGraphSecurityNetworkProtocolGgp:
            return [MSGraphSecurityNetworkProtocol ggp];
        case MSGraphSecurityNetworkProtocolIpv4:
            return [MSGraphSecurityNetworkProtocol ipv4];
        case MSGraphSecurityNetworkProtocolTcp:
            return [MSGraphSecurityNetworkProtocol tcp];
        case MSGraphSecurityNetworkProtocolPup:
            return [MSGraphSecurityNetworkProtocol pup];
        case MSGraphSecurityNetworkProtocolUdp:
            return [MSGraphSecurityNetworkProtocol udp];
        case MSGraphSecurityNetworkProtocolIdp:
            return [MSGraphSecurityNetworkProtocol idp];
        case MSGraphSecurityNetworkProtocolIpv6:
            return [MSGraphSecurityNetworkProtocol ipv6];
        case MSGraphSecurityNetworkProtocolIpv6RoutingHeader:
            return [MSGraphSecurityNetworkProtocol ipv6RoutingHeader];
        case MSGraphSecurityNetworkProtocolIpv6FragmentHeader:
            return [MSGraphSecurityNetworkProtocol ipv6FragmentHeader];
        case MSGraphSecurityNetworkProtocolIpSecEncapsulatingSecurityPayload:
            return [MSGraphSecurityNetworkProtocol ipSecEncapsulatingSecurityPayload];
        case MSGraphSecurityNetworkProtocolIpSecAuthenticationHeader:
            return [MSGraphSecurityNetworkProtocol ipSecAuthenticationHeader];
        case MSGraphSecurityNetworkProtocolIcmpV6:
            return [MSGraphSecurityNetworkProtocol icmpV6];
        case MSGraphSecurityNetworkProtocolIpv6NoNextHeader:
            return [MSGraphSecurityNetworkProtocol ipv6NoNextHeader];
        case MSGraphSecurityNetworkProtocolIpv6DestinationOptions:
            return [MSGraphSecurityNetworkProtocol ipv6DestinationOptions];
        case MSGraphSecurityNetworkProtocolNd:
            return [MSGraphSecurityNetworkProtocol nd];
        case MSGraphSecurityNetworkProtocolRaw:
            return [MSGraphSecurityNetworkProtocol raw];
        case MSGraphSecurityNetworkProtocolIpx:
            return [MSGraphSecurityNetworkProtocol ipx];
        case MSGraphSecurityNetworkProtocolSpx:
            return [MSGraphSecurityNetworkProtocol spx];
        case MSGraphSecurityNetworkProtocolSpxII:
            return [MSGraphSecurityNetworkProtocol spxII];
        case MSGraphSecurityNetworkProtocolUnknownFutureValue:
            return [MSGraphSecurityNetworkProtocol unknownFutureValue];
        case MSGraphSecurityNetworkProtocolUnknown:
            return [MSGraphSecurityNetworkProtocol unknown];
        case MSGraphSecurityNetworkProtocolEndOfEnum:
        default:
            return [MSGraphSecurityNetworkProtocol UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSecurityNetworkProtocolIp:
            return @"ip";
        case MSGraphSecurityNetworkProtocolIcmp:
            return @"icmp";
        case MSGraphSecurityNetworkProtocolIgmp:
            return @"igmp";
        case MSGraphSecurityNetworkProtocolGgp:
            return @"ggp";
        case MSGraphSecurityNetworkProtocolIpv4:
            return @"ipv4";
        case MSGraphSecurityNetworkProtocolTcp:
            return @"tcp";
        case MSGraphSecurityNetworkProtocolPup:
            return @"pup";
        case MSGraphSecurityNetworkProtocolUdp:
            return @"udp";
        case MSGraphSecurityNetworkProtocolIdp:
            return @"idp";
        case MSGraphSecurityNetworkProtocolIpv6:
            return @"ipv6";
        case MSGraphSecurityNetworkProtocolIpv6RoutingHeader:
            return @"ipv6RoutingHeader";
        case MSGraphSecurityNetworkProtocolIpv6FragmentHeader:
            return @"ipv6FragmentHeader";
        case MSGraphSecurityNetworkProtocolIpSecEncapsulatingSecurityPayload:
            return @"ipSecEncapsulatingSecurityPayload";
        case MSGraphSecurityNetworkProtocolIpSecAuthenticationHeader:
            return @"ipSecAuthenticationHeader";
        case MSGraphSecurityNetworkProtocolIcmpV6:
            return @"icmpV6";
        case MSGraphSecurityNetworkProtocolIpv6NoNextHeader:
            return @"ipv6NoNextHeader";
        case MSGraphSecurityNetworkProtocolIpv6DestinationOptions:
            return @"ipv6DestinationOptions";
        case MSGraphSecurityNetworkProtocolNd:
            return @"nd";
        case MSGraphSecurityNetworkProtocolRaw:
            return @"raw";
        case MSGraphSecurityNetworkProtocolIpx:
            return @"ipx";
        case MSGraphSecurityNetworkProtocolSpx:
            return @"spx";
        case MSGraphSecurityNetworkProtocolSpxII:
            return @"spxII";
        case MSGraphSecurityNetworkProtocolUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSecurityNetworkProtocolUnknown:
            return @"unknown";
        case MSGraphSecurityNetworkProtocolEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSecurityNetworkProtocolValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSecurityNetworkProtocol)

- (MSGraphSecurityNetworkProtocol*) toMSGraphSecurityNetworkProtocol{

    if([self isEqualToString:@"ip"])
    {
          return [MSGraphSecurityNetworkProtocol ip];
    }
    else if([self isEqualToString:@"icmp"])
    {
          return [MSGraphSecurityNetworkProtocol icmp];
    }
    else if([self isEqualToString:@"igmp"])
    {
          return [MSGraphSecurityNetworkProtocol igmp];
    }
    else if([self isEqualToString:@"ggp"])
    {
          return [MSGraphSecurityNetworkProtocol ggp];
    }
    else if([self isEqualToString:@"ipv4"])
    {
          return [MSGraphSecurityNetworkProtocol ipv4];
    }
    else if([self isEqualToString:@"tcp"])
    {
          return [MSGraphSecurityNetworkProtocol tcp];
    }
    else if([self isEqualToString:@"pup"])
    {
          return [MSGraphSecurityNetworkProtocol pup];
    }
    else if([self isEqualToString:@"udp"])
    {
          return [MSGraphSecurityNetworkProtocol udp];
    }
    else if([self isEqualToString:@"idp"])
    {
          return [MSGraphSecurityNetworkProtocol idp];
    }
    else if([self isEqualToString:@"ipv6"])
    {
          return [MSGraphSecurityNetworkProtocol ipv6];
    }
    else if([self isEqualToString:@"ipv6RoutingHeader"])
    {
          return [MSGraphSecurityNetworkProtocol ipv6RoutingHeader];
    }
    else if([self isEqualToString:@"ipv6FragmentHeader"])
    {
          return [MSGraphSecurityNetworkProtocol ipv6FragmentHeader];
    }
    else if([self isEqualToString:@"ipSecEncapsulatingSecurityPayload"])
    {
          return [MSGraphSecurityNetworkProtocol ipSecEncapsulatingSecurityPayload];
    }
    else if([self isEqualToString:@"ipSecAuthenticationHeader"])
    {
          return [MSGraphSecurityNetworkProtocol ipSecAuthenticationHeader];
    }
    else if([self isEqualToString:@"icmpV6"])
    {
          return [MSGraphSecurityNetworkProtocol icmpV6];
    }
    else if([self isEqualToString:@"ipv6NoNextHeader"])
    {
          return [MSGraphSecurityNetworkProtocol ipv6NoNextHeader];
    }
    else if([self isEqualToString:@"ipv6DestinationOptions"])
    {
          return [MSGraphSecurityNetworkProtocol ipv6DestinationOptions];
    }
    else if([self isEqualToString:@"nd"])
    {
          return [MSGraphSecurityNetworkProtocol nd];
    }
    else if([self isEqualToString:@"raw"])
    {
          return [MSGraphSecurityNetworkProtocol raw];
    }
    else if([self isEqualToString:@"ipx"])
    {
          return [MSGraphSecurityNetworkProtocol ipx];
    }
    else if([self isEqualToString:@"spx"])
    {
          return [MSGraphSecurityNetworkProtocol spx];
    }
    else if([self isEqualToString:@"spxII"])
    {
          return [MSGraphSecurityNetworkProtocol spxII];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSecurityNetworkProtocol unknownFutureValue];
    }
    else if([self isEqualToString:@"unknown"])
    {
          return [MSGraphSecurityNetworkProtocol unknown];
    }
    else {
        return [MSGraphSecurityNetworkProtocol UnknownEnumValue];
    }
}

@end
