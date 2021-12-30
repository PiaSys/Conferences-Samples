// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDefenderCloudBlockLevelType.h"

@interface MSGraphDefenderCloudBlockLevelType () {
    MSGraphDefenderCloudBlockLevelTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDefenderCloudBlockLevelTypeValue enumValue;
@end

@implementation MSGraphDefenderCloudBlockLevelType

+ (MSGraphDefenderCloudBlockLevelType*) notConfigured {
    static MSGraphDefenderCloudBlockLevelType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphDefenderCloudBlockLevelType alloc] init];
        _notConfigured.enumValue = MSGraphDefenderCloudBlockLevelTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphDefenderCloudBlockLevelType*) high {
    static MSGraphDefenderCloudBlockLevelType *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphDefenderCloudBlockLevelType alloc] init];
        _high.enumValue = MSGraphDefenderCloudBlockLevelTypeHigh;
    });
    return _high;
}
+ (MSGraphDefenderCloudBlockLevelType*) highPlus {
    static MSGraphDefenderCloudBlockLevelType *_highPlus;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _highPlus = [[MSGraphDefenderCloudBlockLevelType alloc] init];
        _highPlus.enumValue = MSGraphDefenderCloudBlockLevelTypeHighPlus;
    });
    return _highPlus;
}
+ (MSGraphDefenderCloudBlockLevelType*) zeroTolerance {
    static MSGraphDefenderCloudBlockLevelType *_zeroTolerance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _zeroTolerance = [[MSGraphDefenderCloudBlockLevelType alloc] init];
        _zeroTolerance.enumValue = MSGraphDefenderCloudBlockLevelTypeZeroTolerance;
    });
    return _zeroTolerance;
}

+ (MSGraphDefenderCloudBlockLevelType*) UnknownEnumValue {
    static MSGraphDefenderCloudBlockLevelType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDefenderCloudBlockLevelType alloc] init];
        _unknownValue.enumValue = MSGraphDefenderCloudBlockLevelTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDefenderCloudBlockLevelType*) defenderCloudBlockLevelTypeWithEnumValue:(MSGraphDefenderCloudBlockLevelTypeValue)val {

    switch(val)
    {
        case MSGraphDefenderCloudBlockLevelTypeNotConfigured:
            return [MSGraphDefenderCloudBlockLevelType notConfigured];
        case MSGraphDefenderCloudBlockLevelTypeHigh:
            return [MSGraphDefenderCloudBlockLevelType high];
        case MSGraphDefenderCloudBlockLevelTypeHighPlus:
            return [MSGraphDefenderCloudBlockLevelType highPlus];
        case MSGraphDefenderCloudBlockLevelTypeZeroTolerance:
            return [MSGraphDefenderCloudBlockLevelType zeroTolerance];
        case MSGraphDefenderCloudBlockLevelTypeEndOfEnum:
        default:
            return [MSGraphDefenderCloudBlockLevelType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDefenderCloudBlockLevelTypeNotConfigured:
            return @"notConfigured";
        case MSGraphDefenderCloudBlockLevelTypeHigh:
            return @"high";
        case MSGraphDefenderCloudBlockLevelTypeHighPlus:
            return @"highPlus";
        case MSGraphDefenderCloudBlockLevelTypeZeroTolerance:
            return @"zeroTolerance";
        case MSGraphDefenderCloudBlockLevelTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDefenderCloudBlockLevelTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDefenderCloudBlockLevelType)

- (MSGraphDefenderCloudBlockLevelType*) toMSGraphDefenderCloudBlockLevelType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphDefenderCloudBlockLevelType notConfigured];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphDefenderCloudBlockLevelType high];
    }
    else if([self isEqualToString:@"highPlus"])
    {
          return [MSGraphDefenderCloudBlockLevelType highPlus];
    }
    else if([self isEqualToString:@"zeroTolerance"])
    {
          return [MSGraphDefenderCloudBlockLevelType zeroTolerance];
    }
    else {
        return [MSGraphDefenderCloudBlockLevelType UnknownEnumValue];
    }
}

@end
