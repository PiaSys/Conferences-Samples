// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFirewallPreSharedKeyEncodingMethodType.h"

@interface MSGraphFirewallPreSharedKeyEncodingMethodType () {
    MSGraphFirewallPreSharedKeyEncodingMethodTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFirewallPreSharedKeyEncodingMethodTypeValue enumValue;
@end

@implementation MSGraphFirewallPreSharedKeyEncodingMethodType

+ (MSGraphFirewallPreSharedKeyEncodingMethodType*) deviceDefault {
    static MSGraphFirewallPreSharedKeyEncodingMethodType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphFirewallPreSharedKeyEncodingMethodType alloc] init];
        _deviceDefault.enumValue = MSGraphFirewallPreSharedKeyEncodingMethodTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphFirewallPreSharedKeyEncodingMethodType*) none {
    static MSGraphFirewallPreSharedKeyEncodingMethodType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphFirewallPreSharedKeyEncodingMethodType alloc] init];
        _none.enumValue = MSGraphFirewallPreSharedKeyEncodingMethodTypeNone;
    });
    return _none;
}
+ (MSGraphFirewallPreSharedKeyEncodingMethodType*) utF8 {
    static MSGraphFirewallPreSharedKeyEncodingMethodType *_utF8;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _utF8 = [[MSGraphFirewallPreSharedKeyEncodingMethodType alloc] init];
        _utF8.enumValue = MSGraphFirewallPreSharedKeyEncodingMethodTypeUtF8;
    });
    return _utF8;
}

+ (MSGraphFirewallPreSharedKeyEncodingMethodType*) UnknownEnumValue {
    static MSGraphFirewallPreSharedKeyEncodingMethodType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFirewallPreSharedKeyEncodingMethodType alloc] init];
        _unknownValue.enumValue = MSGraphFirewallPreSharedKeyEncodingMethodTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFirewallPreSharedKeyEncodingMethodType*) firewallPreSharedKeyEncodingMethodTypeWithEnumValue:(MSGraphFirewallPreSharedKeyEncodingMethodTypeValue)val {

    switch(val)
    {
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeDeviceDefault:
            return [MSGraphFirewallPreSharedKeyEncodingMethodType deviceDefault];
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeNone:
            return [MSGraphFirewallPreSharedKeyEncodingMethodType none];
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeUtF8:
            return [MSGraphFirewallPreSharedKeyEncodingMethodType utF8];
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeEndOfEnum:
        default:
            return [MSGraphFirewallPreSharedKeyEncodingMethodType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeNone:
            return @"none";
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeUtF8:
            return @"utF8";
        case MSGraphFirewallPreSharedKeyEncodingMethodTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFirewallPreSharedKeyEncodingMethodTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFirewallPreSharedKeyEncodingMethodType)

- (MSGraphFirewallPreSharedKeyEncodingMethodType*) toMSGraphFirewallPreSharedKeyEncodingMethodType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphFirewallPreSharedKeyEncodingMethodType deviceDefault];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphFirewallPreSharedKeyEncodingMethodType none];
    }
    else if([self isEqualToString:@"utF8"])
    {
          return [MSGraphFirewallPreSharedKeyEncodingMethodType utF8];
    }
    else {
        return [MSGraphFirewallPreSharedKeyEncodingMethodType UnknownEnumValue];
    }
}

@end
