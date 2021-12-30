// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAndroidWorkProfileRequiredPasswordType.h"

@interface MSGraphAndroidWorkProfileRequiredPasswordType () {
    MSGraphAndroidWorkProfileRequiredPasswordTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAndroidWorkProfileRequiredPasswordTypeValue enumValue;
@end

@implementation MSGraphAndroidWorkProfileRequiredPasswordType

+ (MSGraphAndroidWorkProfileRequiredPasswordType*) deviceDefault {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_deviceDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceDefault = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _deviceDefault.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeDeviceDefault;
    });
    return _deviceDefault;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) lowSecurityBiometric {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_lowSecurityBiometric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lowSecurityBiometric = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _lowSecurityBiometric.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeLowSecurityBiometric;
    });
    return _lowSecurityBiometric;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) required {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_required;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _required = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _required.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeRequired;
    });
    return _required;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastNumeric {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_atLeastNumeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _atLeastNumeric = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _atLeastNumeric.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastNumeric;
    });
    return _atLeastNumeric;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) numericComplex {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_numericComplex;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numericComplex = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _numericComplex.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeNumericComplex;
    });
    return _numericComplex;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastAlphabetic {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_atLeastAlphabetic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _atLeastAlphabetic = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _atLeastAlphabetic.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphabetic;
    });
    return _atLeastAlphabetic;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastAlphanumeric {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_atLeastAlphanumeric;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _atLeastAlphanumeric = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _atLeastAlphanumeric.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphanumeric;
    });
    return _atLeastAlphanumeric;
}
+ (MSGraphAndroidWorkProfileRequiredPasswordType*) alphanumericWithSymbols {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_alphanumericWithSymbols;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alphanumericWithSymbols = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _alphanumericWithSymbols.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeAlphanumericWithSymbols;
    });
    return _alphanumericWithSymbols;
}

+ (MSGraphAndroidWorkProfileRequiredPasswordType*) UnknownEnumValue {
    static MSGraphAndroidWorkProfileRequiredPasswordType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAndroidWorkProfileRequiredPasswordType alloc] init];
        _unknownValue.enumValue = MSGraphAndroidWorkProfileRequiredPasswordTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAndroidWorkProfileRequiredPasswordType*) androidWorkProfileRequiredPasswordTypeWithEnumValue:(MSGraphAndroidWorkProfileRequiredPasswordTypeValue)val {

    switch(val)
    {
        case MSGraphAndroidWorkProfileRequiredPasswordTypeDeviceDefault:
            return [MSGraphAndroidWorkProfileRequiredPasswordType deviceDefault];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeLowSecurityBiometric:
            return [MSGraphAndroidWorkProfileRequiredPasswordType lowSecurityBiometric];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeRequired:
            return [MSGraphAndroidWorkProfileRequiredPasswordType required];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastNumeric:
            return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastNumeric];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeNumericComplex:
            return [MSGraphAndroidWorkProfileRequiredPasswordType numericComplex];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphabetic:
            return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastAlphabetic];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphanumeric:
            return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastAlphanumeric];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAlphanumericWithSymbols:
            return [MSGraphAndroidWorkProfileRequiredPasswordType alphanumericWithSymbols];
        case MSGraphAndroidWorkProfileRequiredPasswordTypeEndOfEnum:
        default:
            return [MSGraphAndroidWorkProfileRequiredPasswordType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAndroidWorkProfileRequiredPasswordTypeDeviceDefault:
            return @"deviceDefault";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeLowSecurityBiometric:
            return @"lowSecurityBiometric";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeRequired:
            return @"required";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastNumeric:
            return @"atLeastNumeric";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeNumericComplex:
            return @"numericComplex";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphabetic:
            return @"atLeastAlphabetic";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphanumeric:
            return @"atLeastAlphanumeric";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeAlphanumericWithSymbols:
            return @"alphanumericWithSymbols";
        case MSGraphAndroidWorkProfileRequiredPasswordTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAndroidWorkProfileRequiredPasswordTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAndroidWorkProfileRequiredPasswordType)

- (MSGraphAndroidWorkProfileRequiredPasswordType*) toMSGraphAndroidWorkProfileRequiredPasswordType{

    if([self isEqualToString:@"deviceDefault"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType deviceDefault];
    }
    else if([self isEqualToString:@"lowSecurityBiometric"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType lowSecurityBiometric];
    }
    else if([self isEqualToString:@"required"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType required];
    }
    else if([self isEqualToString:@"atLeastNumeric"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastNumeric];
    }
    else if([self isEqualToString:@"numericComplex"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType numericComplex];
    }
    else if([self isEqualToString:@"atLeastAlphabetic"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastAlphabetic];
    }
    else if([self isEqualToString:@"atLeastAlphanumeric"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType atLeastAlphanumeric];
    }
    else if([self isEqualToString:@"alphanumericWithSymbols"])
    {
          return [MSGraphAndroidWorkProfileRequiredPasswordType alphanumericWithSymbols];
    }
    else {
        return [MSGraphAndroidWorkProfileRequiredPasswordType UnknownEnumValue];
    }
}

@end
