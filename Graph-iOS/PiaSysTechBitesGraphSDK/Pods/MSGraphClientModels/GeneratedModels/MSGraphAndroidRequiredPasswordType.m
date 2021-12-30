// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAndroidRequiredPasswordType.h"

@interface MSGraphAndroidRequiredPasswordType () {
    MSGraphAndroidRequiredPasswordTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAndroidRequiredPasswordTypeValue enumValue;
@end

@implementation MSGraphAndroidRequiredPasswordType

+ (MSGraphAndroidRequiredPasswordType*) deviceDefault {
    static MSGraphAndroidRequiredPasswordType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _deviceDefault.enumValue = MSGraphAndroidRequiredPasswordTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphAndroidRequiredPasswordType*) alphabetic {
    static MSGraphAndroidRequiredPasswordType *_alphabetic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphabetic = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _alphabetic.enumValue = MSGraphAndroidRequiredPasswordTypeAlphabetic;
    });
    return _alphabetic;
}
+ (MSGraphAndroidRequiredPasswordType*) alphanumeric {
    static MSGraphAndroidRequiredPasswordType *_alphanumeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphanumeric = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _alphanumeric.enumValue = MSGraphAndroidRequiredPasswordTypeAlphanumeric;
    });
    return _alphanumeric;
}
+ (MSGraphAndroidRequiredPasswordType*) alphanumericWithSymbols {
    static MSGraphAndroidRequiredPasswordType *_alphanumericWithSymbols;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphanumericWithSymbols = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _alphanumericWithSymbols.enumValue = MSGraphAndroidRequiredPasswordTypeAlphanumericWithSymbols;
    });
    return _alphanumericWithSymbols;
}
+ (MSGraphAndroidRequiredPasswordType*) lowSecurityBiometric {
    static MSGraphAndroidRequiredPasswordType *_lowSecurityBiometric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lowSecurityBiometric = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _lowSecurityBiometric.enumValue = MSGraphAndroidRequiredPasswordTypeLowSecurityBiometric;
    });
    return _lowSecurityBiometric;
}
+ (MSGraphAndroidRequiredPasswordType*) numeric {
    static MSGraphAndroidRequiredPasswordType *_numeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numeric = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _numeric.enumValue = MSGraphAndroidRequiredPasswordTypeNumeric;
    });
    return _numeric;
}
+ (MSGraphAndroidRequiredPasswordType*) numericComplex {
    static MSGraphAndroidRequiredPasswordType *_numericComplex;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numericComplex = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _numericComplex.enumValue = MSGraphAndroidRequiredPasswordTypeNumericComplex;
    });
    return _numericComplex;
}
+ (MSGraphAndroidRequiredPasswordType*) any {
    static MSGraphAndroidRequiredPasswordType *_any;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _any = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _any.enumValue = MSGraphAndroidRequiredPasswordTypeAny;
    });
    return _any;
}

+ (MSGraphAndroidRequiredPasswordType*) UnknownEnumValue {
    static MSGraphAndroidRequiredPasswordType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAndroidRequiredPasswordType alloc] init];
        _unknownValue.enumValue = MSGraphAndroidRequiredPasswordTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAndroidRequiredPasswordType*) androidRequiredPasswordTypeWithEnumValue:(MSGraphAndroidRequiredPasswordTypeValue)val {

    switch(val)
    {
        case MSGraphAndroidRequiredPasswordTypeDeviceDefault:
            return [MSGraphAndroidRequiredPasswordType deviceDefault];
        case MSGraphAndroidRequiredPasswordTypeAlphabetic:
            return [MSGraphAndroidRequiredPasswordType alphabetic];
        case MSGraphAndroidRequiredPasswordTypeAlphanumeric:
            return [MSGraphAndroidRequiredPasswordType alphanumeric];
        case MSGraphAndroidRequiredPasswordTypeAlphanumericWithSymbols:
            return [MSGraphAndroidRequiredPasswordType alphanumericWithSymbols];
        case MSGraphAndroidRequiredPasswordTypeLowSecurityBiometric:
            return [MSGraphAndroidRequiredPasswordType lowSecurityBiometric];
        case MSGraphAndroidRequiredPasswordTypeNumeric:
            return [MSGraphAndroidRequiredPasswordType numeric];
        case MSGraphAndroidRequiredPasswordTypeNumericComplex:
            return [MSGraphAndroidRequiredPasswordType numericComplex];
        case MSGraphAndroidRequiredPasswordTypeAny:
            return [MSGraphAndroidRequiredPasswordType any];
        case MSGraphAndroidRequiredPasswordTypeEndOfEnum:
        default:
            return [MSGraphAndroidRequiredPasswordType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAndroidRequiredPasswordTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphAndroidRequiredPasswordTypeAlphabetic:
            return @"alphabetic";
        case MSGraphAndroidRequiredPasswordTypeAlphanumeric:
            return @"alphanumeric";
        case MSGraphAndroidRequiredPasswordTypeAlphanumericWithSymbols:
            return @"alphanumericWithSymbols";
        case MSGraphAndroidRequiredPasswordTypeLowSecurityBiometric:
            return @"lowSecurityBiometric";
        case MSGraphAndroidRequiredPasswordTypeNumeric:
            return @"numeric";
        case MSGraphAndroidRequiredPasswordTypeNumericComplex:
            return @"numericComplex";
        case MSGraphAndroidRequiredPasswordTypeAny:
            return @"any";
        case MSGraphAndroidRequiredPasswordTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAndroidRequiredPasswordTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAndroidRequiredPasswordType)

- (MSGraphAndroidRequiredPasswordType*) toMSGraphAndroidRequiredPasswordType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphAndroidRequiredPasswordType deviceDefault];
    }
    else if([self isEqualToString:@"alphabetic"])
    {
          return [MSGraphAndroidRequiredPasswordType alphabetic];
    }
    else if([self isEqualToString:@"alphanumeric"])
    {
          return [MSGraphAndroidRequiredPasswordType alphanumeric];
    }
    else if([self isEqualToString:@"alphanumericWithSymbols"])
    {
          return [MSGraphAndroidRequiredPasswordType alphanumericWithSymbols];
    }
    else if([self isEqualToString:@"lowSecurityBiometric"])
    {
          return [MSGraphAndroidRequiredPasswordType lowSecurityBiometric];
    }
    else if([self isEqualToString:@"numeric"])
    {
          return [MSGraphAndroidRequiredPasswordType numeric];
    }
    else if([self isEqualToString:@"numericComplex"])
    {
          return [MSGraphAndroidRequiredPasswordType numericComplex];
    }
    else if([self isEqualToString:@"any"])
    {
          return [MSGraphAndroidRequiredPasswordType any];
    }
    else {
        return [MSGraphAndroidRequiredPasswordType UnknownEnumValue];
    }
}

@end
