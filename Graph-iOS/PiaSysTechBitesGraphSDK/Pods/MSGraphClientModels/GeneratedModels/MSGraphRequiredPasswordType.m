// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRequiredPasswordType.h"

@interface MSGraphRequiredPasswordType () {
    MSGraphRequiredPasswordTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRequiredPasswordTypeValue enumValue;
@end

@implementation MSGraphRequiredPasswordType

+ (MSGraphRequiredPasswordType*) deviceDefault {
    static MSGraphRequiredPasswordType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphRequiredPasswordType alloc] init];
        _deviceDefault.enumValue = MSGraphRequiredPasswordTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphRequiredPasswordType*) alphanumeric {
    static MSGraphRequiredPasswordType *_alphanumeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphanumeric = [[MSGraphRequiredPasswordType alloc] init];
        _alphanumeric.enumValue = MSGraphRequiredPasswordTypeAlphanumeric;
    });
    return _alphanumeric;
}
+ (MSGraphRequiredPasswordType*) numeric {
    static MSGraphRequiredPasswordType *_numeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numeric = [[MSGraphRequiredPasswordType alloc] init];
        _numeric.enumValue = MSGraphRequiredPasswordTypeNumeric;
    });
    return _numeric;
}

+ (MSGraphRequiredPasswordType*) UnknownEnumValue {
    static MSGraphRequiredPasswordType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRequiredPasswordType alloc] init];
        _unknownValue.enumValue = MSGraphRequiredPasswordTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRequiredPasswordType*) requiredPasswordTypeWithEnumValue:(MSGraphRequiredPasswordTypeValue)val {

    switch(val)
    {
        case MSGraphRequiredPasswordTypeDeviceDefault:
            return [MSGraphRequiredPasswordType deviceDefault];
        case MSGraphRequiredPasswordTypeAlphanumeric:
            return [MSGraphRequiredPasswordType alphanumeric];
        case MSGraphRequiredPasswordTypeNumeric:
            return [MSGraphRequiredPasswordType numeric];
        case MSGraphRequiredPasswordTypeEndOfEnum:
        default:
            return [MSGraphRequiredPasswordType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRequiredPasswordTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphRequiredPasswordTypeAlphanumeric:
            return @"alphanumeric";
        case MSGraphRequiredPasswordTypeNumeric:
            return @"numeric";
        case MSGraphRequiredPasswordTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRequiredPasswordTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRequiredPasswordType)

- (MSGraphRequiredPasswordType*) toMSGraphRequiredPasswordType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphRequiredPasswordType deviceDefault];
    }
    else if([self isEqualToString:@"alphanumeric"])
    {
          return [MSGraphRequiredPasswordType alphanumeric];
    }
    else if([self isEqualToString:@"numeric"])
    {
          return [MSGraphRequiredPasswordType numeric];
    }
    else {
        return [MSGraphRequiredPasswordType UnknownEnumValue];
    }
}

@end
