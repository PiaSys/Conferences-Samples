// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceThreatProtectionLevel.h"

@interface MSGraphDeviceThreatProtectionLevel () {
    MSGraphDeviceThreatProtectionLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceThreatProtectionLevelValue enumValue;
@end

@implementation MSGraphDeviceThreatProtectionLevel

+ (MSGraphDeviceThreatProtectionLevel*) unavailable {
    static MSGraphDeviceThreatProtectionLevel *_unavailable;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unavailable = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _unavailable.enumValue = MSGraphDeviceThreatProtectionLevelUnavailable;
    });
    return _unavailable;
}
+ (MSGraphDeviceThreatProtectionLevel*) secured {
    static MSGraphDeviceThreatProtectionLevel *_secured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _secured = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _secured.enumValue = MSGraphDeviceThreatProtectionLevelSecured;
    });
    return _secured;
}
+ (MSGraphDeviceThreatProtectionLevel*) low {
    static MSGraphDeviceThreatProtectionLevel *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _low.enumValue = MSGraphDeviceThreatProtectionLevelLow;
    });
    return _low;
}
+ (MSGraphDeviceThreatProtectionLevel*) medium {
    static MSGraphDeviceThreatProtectionLevel *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _medium.enumValue = MSGraphDeviceThreatProtectionLevelMedium;
    });
    return _medium;
}
+ (MSGraphDeviceThreatProtectionLevel*) high {
    static MSGraphDeviceThreatProtectionLevel *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _high.enumValue = MSGraphDeviceThreatProtectionLevelHigh;
    });
    return _high;
}
+ (MSGraphDeviceThreatProtectionLevel*) notSet {
    static MSGraphDeviceThreatProtectionLevel *_notSet;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSet = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _notSet.enumValue = MSGraphDeviceThreatProtectionLevelNotSet;
    });
    return _notSet;
}

+ (MSGraphDeviceThreatProtectionLevel*) UnknownEnumValue {
    static MSGraphDeviceThreatProtectionLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceThreatProtectionLevel alloc] init];
        _unknownValue.enumValue = MSGraphDeviceThreatProtectionLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceThreatProtectionLevel*) deviceThreatProtectionLevelWithEnumValue:(MSGraphDeviceThreatProtectionLevelValue)val {

    switch(val)
    {
        case MSGraphDeviceThreatProtectionLevelUnavailable:
            return [MSGraphDeviceThreatProtectionLevel unavailable];
        case MSGraphDeviceThreatProtectionLevelSecured:
            return [MSGraphDeviceThreatProtectionLevel secured];
        case MSGraphDeviceThreatProtectionLevelLow:
            return [MSGraphDeviceThreatProtectionLevel low];
        case MSGraphDeviceThreatProtectionLevelMedium:
            return [MSGraphDeviceThreatProtectionLevel medium];
        case MSGraphDeviceThreatProtectionLevelHigh:
            return [MSGraphDeviceThreatProtectionLevel high];
        case MSGraphDeviceThreatProtectionLevelNotSet:
            return [MSGraphDeviceThreatProtectionLevel notSet];
        case MSGraphDeviceThreatProtectionLevelEndOfEnum:
        default:
            return [MSGraphDeviceThreatProtectionLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceThreatProtectionLevelUnavailable:
            return @"unavailable";
        case MSGraphDeviceThreatProtectionLevelSecured:
            return @"secured";
        case MSGraphDeviceThreatProtectionLevelLow:
            return @"low";
        case MSGraphDeviceThreatProtectionLevelMedium:
            return @"medium";
        case MSGraphDeviceThreatProtectionLevelHigh:
            return @"high";
        case MSGraphDeviceThreatProtectionLevelNotSet:
            return @"notSet";
        case MSGraphDeviceThreatProtectionLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceThreatProtectionLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceThreatProtectionLevel)

- (MSGraphDeviceThreatProtectionLevel*) toMSGraphDeviceThreatProtectionLevel{

    if([self isEqualToString:@"unavailable"])
    {
          return [MSGraphDeviceThreatProtectionLevel unavailable];
    }
    else if([self isEqualToString:@"secured"])
    {
          return [MSGraphDeviceThreatProtectionLevel secured];
    }
    else if([self isEqualToString:@"low"])
    {
          return [MSGraphDeviceThreatProtectionLevel low];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphDeviceThreatProtectionLevel medium];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphDeviceThreatProtectionLevel high];
    }
    else if([self isEqualToString:@"notSet"])
    {
          return [MSGraphDeviceThreatProtectionLevel notSet];
    }
    else {
        return [MSGraphDeviceThreatProtectionLevel UnknownEnumValue];
    }
}

@end
