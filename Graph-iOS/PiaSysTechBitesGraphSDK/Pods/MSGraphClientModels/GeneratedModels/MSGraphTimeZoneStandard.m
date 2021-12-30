// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTimeZoneStandard.h"

@interface MSGraphTimeZoneStandard () {
    MSGraphTimeZoneStandardValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTimeZoneStandardValue enumValue;
@end

@implementation MSGraphTimeZoneStandard

+ (MSGraphTimeZoneStandard*) windows {
    static MSGraphTimeZoneStandard *_windows;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows = [[MSGraphTimeZoneStandard alloc] init];
        _windows.enumValue = MSGraphTimeZoneStandardWindows;
    });
    return _windows;
}
+ (MSGraphTimeZoneStandard*) iana {
    static MSGraphTimeZoneStandard *_iana;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _iana = [[MSGraphTimeZoneStandard alloc] init];
        _iana.enumValue = MSGraphTimeZoneStandardIana;
    });
    return _iana;
}

+ (MSGraphTimeZoneStandard*) UnknownEnumValue {
    static MSGraphTimeZoneStandard *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTimeZoneStandard alloc] init];
        _unknownValue.enumValue = MSGraphTimeZoneStandardEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTimeZoneStandard*) timeZoneStandardWithEnumValue:(MSGraphTimeZoneStandardValue)val {

    switch(val)
    {
        case MSGraphTimeZoneStandardWindows:
            return [MSGraphTimeZoneStandard windows];
        case MSGraphTimeZoneStandardIana:
            return [MSGraphTimeZoneStandard iana];
        case MSGraphTimeZoneStandardEndOfEnum:
        default:
            return [MSGraphTimeZoneStandard UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTimeZoneStandardWindows:
            return @"windows";
        case MSGraphTimeZoneStandardIana:
            return @"iana";
        case MSGraphTimeZoneStandardEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTimeZoneStandardValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTimeZoneStandard)

- (MSGraphTimeZoneStandard*) toMSGraphTimeZoneStandard{

    if([self isEqualToString:@"windows"])
    {
          return [MSGraphTimeZoneStandard windows];
    }
    else if([self isEqualToString:@"iana"])
    {
          return [MSGraphTimeZoneStandard iana];
    }
    else {
        return [MSGraphTimeZoneStandard UnknownEnumValue];
    }
}

@end
