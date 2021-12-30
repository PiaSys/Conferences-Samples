// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphUserAccountSecurityType.h"

@interface MSGraphUserAccountSecurityType () {
    MSGraphUserAccountSecurityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphUserAccountSecurityTypeValue enumValue;
@end

@implementation MSGraphUserAccountSecurityType

+ (MSGraphUserAccountSecurityType*) unknown {
    static MSGraphUserAccountSecurityType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphUserAccountSecurityType alloc] init];
        _unknown.enumValue = MSGraphUserAccountSecurityTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphUserAccountSecurityType*) standard {
    static MSGraphUserAccountSecurityType *_standard;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _standard = [[MSGraphUserAccountSecurityType alloc] init];
        _standard.enumValue = MSGraphUserAccountSecurityTypeStandard;
    });
    return _standard;
}
+ (MSGraphUserAccountSecurityType*) power {
    static MSGraphUserAccountSecurityType *_power;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _power = [[MSGraphUserAccountSecurityType alloc] init];
        _power.enumValue = MSGraphUserAccountSecurityTypePower;
    });
    return _power;
}
+ (MSGraphUserAccountSecurityType*) administrator {
    static MSGraphUserAccountSecurityType *_administrator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _administrator = [[MSGraphUserAccountSecurityType alloc] init];
        _administrator.enumValue = MSGraphUserAccountSecurityTypeAdministrator;
    });
    return _administrator;
}
+ (MSGraphUserAccountSecurityType*) unknownFutureValue {
    static MSGraphUserAccountSecurityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphUserAccountSecurityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphUserAccountSecurityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphUserAccountSecurityType*) UnknownEnumValue {
    static MSGraphUserAccountSecurityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphUserAccountSecurityType alloc] init];
        _unknownValue.enumValue = MSGraphUserAccountSecurityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphUserAccountSecurityType*) userAccountSecurityTypeWithEnumValue:(MSGraphUserAccountSecurityTypeValue)val {

    switch(val)
    {
        case MSGraphUserAccountSecurityTypeUnknown:
            return [MSGraphUserAccountSecurityType unknown];
        case MSGraphUserAccountSecurityTypeStandard:
            return [MSGraphUserAccountSecurityType standard];
        case MSGraphUserAccountSecurityTypePower:
            return [MSGraphUserAccountSecurityType power];
        case MSGraphUserAccountSecurityTypeAdministrator:
            return [MSGraphUserAccountSecurityType administrator];
        case MSGraphUserAccountSecurityTypeUnknownFutureValue:
            return [MSGraphUserAccountSecurityType unknownFutureValue];
        case MSGraphUserAccountSecurityTypeEndOfEnum:
        default:
            return [MSGraphUserAccountSecurityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphUserAccountSecurityTypeUnknown:
            return @"unknown";
        case MSGraphUserAccountSecurityTypeStandard:
            return @"standard";
        case MSGraphUserAccountSecurityTypePower:
            return @"power";
        case MSGraphUserAccountSecurityTypeAdministrator:
            return @"administrator";
        case MSGraphUserAccountSecurityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphUserAccountSecurityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphUserAccountSecurityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphUserAccountSecurityType)

- (MSGraphUserAccountSecurityType*) toMSGraphUserAccountSecurityType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphUserAccountSecurityType unknown];
    }
    else if([self isEqualToString:@"standard"])
    {
          return [MSGraphUserAccountSecurityType standard];
    }
    else if([self isEqualToString:@"power"])
    {
          return [MSGraphUserAccountSecurityType power];
    }
    else if([self isEqualToString:@"administrator"])
    {
          return [MSGraphUserAccountSecurityType administrator];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphUserAccountSecurityType unknownFutureValue];
    }
    else {
        return [MSGraphUserAccountSecurityType UnknownEnumValue];
    }
}

@end
