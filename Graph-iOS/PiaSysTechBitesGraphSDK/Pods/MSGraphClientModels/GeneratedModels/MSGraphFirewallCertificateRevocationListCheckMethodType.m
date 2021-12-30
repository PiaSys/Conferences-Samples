// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFirewallCertificateRevocationListCheckMethodType.h"

@interface MSGraphFirewallCertificateRevocationListCheckMethodType () {
    MSGraphFirewallCertificateRevocationListCheckMethodTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFirewallCertificateRevocationListCheckMethodTypeValue enumValue;
@end

@implementation MSGraphFirewallCertificateRevocationListCheckMethodType

+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) deviceDefault {
    static MSGraphFirewallCertificateRevocationListCheckMethodType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphFirewallCertificateRevocationListCheckMethodType alloc] init];
        _deviceDefault.enumValue = MSGraphFirewallCertificateRevocationListCheckMethodTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) none {
    static MSGraphFirewallCertificateRevocationListCheckMethodType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphFirewallCertificateRevocationListCheckMethodType alloc] init];
        _none.enumValue = MSGraphFirewallCertificateRevocationListCheckMethodTypeNone;
    });
    return _none;
}
+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) attempt {
    static MSGraphFirewallCertificateRevocationListCheckMethodType *_attempt;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _attempt = [[MSGraphFirewallCertificateRevocationListCheckMethodType alloc] init];
        _attempt.enumValue = MSGraphFirewallCertificateRevocationListCheckMethodTypeAttempt;
    });
    return _attempt;
}
+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) require {
    static MSGraphFirewallCertificateRevocationListCheckMethodType *_require;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _require = [[MSGraphFirewallCertificateRevocationListCheckMethodType alloc] init];
        _require.enumValue = MSGraphFirewallCertificateRevocationListCheckMethodTypeRequire;
    });
    return _require;
}

+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) UnknownEnumValue {
    static MSGraphFirewallCertificateRevocationListCheckMethodType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFirewallCertificateRevocationListCheckMethodType alloc] init];
        _unknownValue.enumValue = MSGraphFirewallCertificateRevocationListCheckMethodTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFirewallCertificateRevocationListCheckMethodType*) firewallCertificateRevocationListCheckMethodTypeWithEnumValue:(MSGraphFirewallCertificateRevocationListCheckMethodTypeValue)val {

    switch(val)
    {
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeDeviceDefault:
            return [MSGraphFirewallCertificateRevocationListCheckMethodType deviceDefault];
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeNone:
            return [MSGraphFirewallCertificateRevocationListCheckMethodType none];
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeAttempt:
            return [MSGraphFirewallCertificateRevocationListCheckMethodType attempt];
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeRequire:
            return [MSGraphFirewallCertificateRevocationListCheckMethodType require];
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeEndOfEnum:
        default:
            return [MSGraphFirewallCertificateRevocationListCheckMethodType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeNone:
            return @"none";
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeAttempt:
            return @"attempt";
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeRequire:
            return @"require";
        case MSGraphFirewallCertificateRevocationListCheckMethodTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFirewallCertificateRevocationListCheckMethodTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFirewallCertificateRevocationListCheckMethodType)

- (MSGraphFirewallCertificateRevocationListCheckMethodType*) toMSGraphFirewallCertificateRevocationListCheckMethodType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphFirewallCertificateRevocationListCheckMethodType deviceDefault];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphFirewallCertificateRevocationListCheckMethodType none];
    }
    else if([self isEqualToString:@"attempt"])
    {
          return [MSGraphFirewallCertificateRevocationListCheckMethodType attempt];
    }
    else if([self isEqualToString:@"require"])
    {
          return [MSGraphFirewallCertificateRevocationListCheckMethodType require];
    }
    else {
        return [MSGraphFirewallCertificateRevocationListCheckMethodType UnknownEnumValue];
    }
}

@end
