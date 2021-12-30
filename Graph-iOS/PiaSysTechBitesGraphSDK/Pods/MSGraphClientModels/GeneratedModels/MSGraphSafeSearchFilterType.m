// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSafeSearchFilterType.h"

@interface MSGraphSafeSearchFilterType () {
    MSGraphSafeSearchFilterTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSafeSearchFilterTypeValue enumValue;
@end

@implementation MSGraphSafeSearchFilterType

+ (MSGraphSafeSearchFilterType*) userDefined {
    static MSGraphSafeSearchFilterType *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphSafeSearchFilterType alloc] init];
        _userDefined.enumValue = MSGraphSafeSearchFilterTypeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphSafeSearchFilterType*) strict {
    static MSGraphSafeSearchFilterType *_strict;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _strict = [[MSGraphSafeSearchFilterType alloc] init];
        _strict.enumValue = MSGraphSafeSearchFilterTypeStrict;
    });
    return _strict;
}
+ (MSGraphSafeSearchFilterType*) moderate {
    static MSGraphSafeSearchFilterType *_moderate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _moderate = [[MSGraphSafeSearchFilterType alloc] init];
        _moderate.enumValue = MSGraphSafeSearchFilterTypeModerate;
    });
    return _moderate;
}

+ (MSGraphSafeSearchFilterType*) UnknownEnumValue {
    static MSGraphSafeSearchFilterType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSafeSearchFilterType alloc] init];
        _unknownValue.enumValue = MSGraphSafeSearchFilterTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSafeSearchFilterType*) safeSearchFilterTypeWithEnumValue:(MSGraphSafeSearchFilterTypeValue)val {

    switch(val)
    {
        case MSGraphSafeSearchFilterTypeUserDefined:
            return [MSGraphSafeSearchFilterType userDefined];
        case MSGraphSafeSearchFilterTypeStrict:
            return [MSGraphSafeSearchFilterType strict];
        case MSGraphSafeSearchFilterTypeModerate:
            return [MSGraphSafeSearchFilterType moderate];
        case MSGraphSafeSearchFilterTypeEndOfEnum:
        default:
            return [MSGraphSafeSearchFilterType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSafeSearchFilterTypeUserDefined:
            return @"userDefined";
        case MSGraphSafeSearchFilterTypeStrict:
            return @"strict";
        case MSGraphSafeSearchFilterTypeModerate:
            return @"moderate";
        case MSGraphSafeSearchFilterTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSafeSearchFilterTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSafeSearchFilterType)

- (MSGraphSafeSearchFilterType*) toMSGraphSafeSearchFilterType{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphSafeSearchFilterType userDefined];
    }
    else if([self isEqualToString:@"strict"])
    {
          return [MSGraphSafeSearchFilterType strict];
    }
    else if([self isEqualToString:@"moderate"])
    {
          return [MSGraphSafeSearchFilterType moderate];
    }
    else {
        return [MSGraphSafeSearchFilterType UnknownEnumValue];
    }
}

@end
