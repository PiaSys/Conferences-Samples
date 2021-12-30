// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphProcessIntegrityLevel.h"

@interface MSGraphProcessIntegrityLevel () {
    MSGraphProcessIntegrityLevelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphProcessIntegrityLevelValue enumValue;
@end

@implementation MSGraphProcessIntegrityLevel

+ (MSGraphProcessIntegrityLevel*) unknown {
    static MSGraphProcessIntegrityLevel *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphProcessIntegrityLevel alloc] init];
        _unknown.enumValue = MSGraphProcessIntegrityLevelUnknown;
    });
    return _unknown;
}
+ (MSGraphProcessIntegrityLevel*) untrusted {
    static MSGraphProcessIntegrityLevel *_untrusted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _untrusted = [[MSGraphProcessIntegrityLevel alloc] init];
        _untrusted.enumValue = MSGraphProcessIntegrityLevelUntrusted;
    });
    return _untrusted;
}
+ (MSGraphProcessIntegrityLevel*) low {
    static MSGraphProcessIntegrityLevel *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphProcessIntegrityLevel alloc] init];
        _low.enumValue = MSGraphProcessIntegrityLevelLow;
    });
    return _low;
}
+ (MSGraphProcessIntegrityLevel*) medium {
    static MSGraphProcessIntegrityLevel *_medium;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _medium = [[MSGraphProcessIntegrityLevel alloc] init];
        _medium.enumValue = MSGraphProcessIntegrityLevelMedium;
    });
    return _medium;
}
+ (MSGraphProcessIntegrityLevel*) high {
    static MSGraphProcessIntegrityLevel *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphProcessIntegrityLevel alloc] init];
        _high.enumValue = MSGraphProcessIntegrityLevelHigh;
    });
    return _high;
}
+ (MSGraphProcessIntegrityLevel*) system {
    static MSGraphProcessIntegrityLevel *_system;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _system = [[MSGraphProcessIntegrityLevel alloc] init];
        _system.enumValue = MSGraphProcessIntegrityLevelSystem;
    });
    return _system;
}
+ (MSGraphProcessIntegrityLevel*) unknownFutureValue {
    static MSGraphProcessIntegrityLevel *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphProcessIntegrityLevel alloc] init];
        _unknownFutureValue.enumValue = MSGraphProcessIntegrityLevelUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphProcessIntegrityLevel*) UnknownEnumValue {
    static MSGraphProcessIntegrityLevel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphProcessIntegrityLevel alloc] init];
        _unknownValue.enumValue = MSGraphProcessIntegrityLevelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphProcessIntegrityLevel*) processIntegrityLevelWithEnumValue:(MSGraphProcessIntegrityLevelValue)val {

    switch(val)
    {
        case MSGraphProcessIntegrityLevelUnknown:
            return [MSGraphProcessIntegrityLevel unknown];
        case MSGraphProcessIntegrityLevelUntrusted:
            return [MSGraphProcessIntegrityLevel untrusted];
        case MSGraphProcessIntegrityLevelLow:
            return [MSGraphProcessIntegrityLevel low];
        case MSGraphProcessIntegrityLevelMedium:
            return [MSGraphProcessIntegrityLevel medium];
        case MSGraphProcessIntegrityLevelHigh:
            return [MSGraphProcessIntegrityLevel high];
        case MSGraphProcessIntegrityLevelSystem:
            return [MSGraphProcessIntegrityLevel system];
        case MSGraphProcessIntegrityLevelUnknownFutureValue:
            return [MSGraphProcessIntegrityLevel unknownFutureValue];
        case MSGraphProcessIntegrityLevelEndOfEnum:
        default:
            return [MSGraphProcessIntegrityLevel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphProcessIntegrityLevelUnknown:
            return @"unknown";
        case MSGraphProcessIntegrityLevelUntrusted:
            return @"untrusted";
        case MSGraphProcessIntegrityLevelLow:
            return @"low";
        case MSGraphProcessIntegrityLevelMedium:
            return @"medium";
        case MSGraphProcessIntegrityLevelHigh:
            return @"high";
        case MSGraphProcessIntegrityLevelSystem:
            return @"system";
        case MSGraphProcessIntegrityLevelUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphProcessIntegrityLevelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphProcessIntegrityLevelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphProcessIntegrityLevel)

- (MSGraphProcessIntegrityLevel*) toMSGraphProcessIntegrityLevel{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphProcessIntegrityLevel unknown];
    }
    else if([self isEqualToString:@"untrusted"])
    {
          return [MSGraphProcessIntegrityLevel untrusted];
    }
    else if([self isEqualToString:@"low"])
    {
          return [MSGraphProcessIntegrityLevel low];
    }
    else if([self isEqualToString:@"medium"])
    {
          return [MSGraphProcessIntegrityLevel medium];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphProcessIntegrityLevel high];
    }
    else if([self isEqualToString:@"system"])
    {
          return [MSGraphProcessIntegrityLevel system];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphProcessIntegrityLevel unknownFutureValue];
    }
    else {
        return [MSGraphProcessIntegrityLevel UnknownEnumValue];
    }
}

@end
