// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsHelloForBusinessPinUsage.h"

@interface MSGraphWindowsHelloForBusinessPinUsage () {
    MSGraphWindowsHelloForBusinessPinUsageValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsHelloForBusinessPinUsageValue enumValue;
@end

@implementation MSGraphWindowsHelloForBusinessPinUsage

+ (MSGraphWindowsHelloForBusinessPinUsage*) allowed {
    static MSGraphWindowsHelloForBusinessPinUsage *_allowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowed = [[MSGraphWindowsHelloForBusinessPinUsage alloc] init];
        _allowed.enumValue = MSGraphWindowsHelloForBusinessPinUsageAllowed;
    });
    return _allowed;
}
+ (MSGraphWindowsHelloForBusinessPinUsage*) required {
    static MSGraphWindowsHelloForBusinessPinUsage *_required;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _required = [[MSGraphWindowsHelloForBusinessPinUsage alloc] init];
        _required.enumValue = MSGraphWindowsHelloForBusinessPinUsageRequired;
    });
    return _required;
}
+ (MSGraphWindowsHelloForBusinessPinUsage*) disallowed {
    static MSGraphWindowsHelloForBusinessPinUsage *_disallowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disallowed = [[MSGraphWindowsHelloForBusinessPinUsage alloc] init];
        _disallowed.enumValue = MSGraphWindowsHelloForBusinessPinUsageDisallowed;
    });
    return _disallowed;
}

+ (MSGraphWindowsHelloForBusinessPinUsage*) UnknownEnumValue {
    static MSGraphWindowsHelloForBusinessPinUsage *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsHelloForBusinessPinUsage alloc] init];
        _unknownValue.enumValue = MSGraphWindowsHelloForBusinessPinUsageEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsHelloForBusinessPinUsage*) windowsHelloForBusinessPinUsageWithEnumValue:(MSGraphWindowsHelloForBusinessPinUsageValue)val {

    switch(val)
    {
        case MSGraphWindowsHelloForBusinessPinUsageAllowed:
            return [MSGraphWindowsHelloForBusinessPinUsage allowed];
        case MSGraphWindowsHelloForBusinessPinUsageRequired:
            return [MSGraphWindowsHelloForBusinessPinUsage required];
        case MSGraphWindowsHelloForBusinessPinUsageDisallowed:
            return [MSGraphWindowsHelloForBusinessPinUsage disallowed];
        case MSGraphWindowsHelloForBusinessPinUsageEndOfEnum:
        default:
            return [MSGraphWindowsHelloForBusinessPinUsage UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsHelloForBusinessPinUsageAllowed:
            return @"allowed";
        case MSGraphWindowsHelloForBusinessPinUsageRequired:
            return @"required";
        case MSGraphWindowsHelloForBusinessPinUsageDisallowed:
            return @"disallowed";
        case MSGraphWindowsHelloForBusinessPinUsageEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsHelloForBusinessPinUsageValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsHelloForBusinessPinUsage)

- (MSGraphWindowsHelloForBusinessPinUsage*) toMSGraphWindowsHelloForBusinessPinUsage{

    if([self isEqualToString:@"allowed"])
    {
          return [MSGraphWindowsHelloForBusinessPinUsage allowed];
    }
    else if([self isEqualToString:@"required"])
    {
          return [MSGraphWindowsHelloForBusinessPinUsage required];
    }
    else if([self isEqualToString:@"disallowed"])
    {
          return [MSGraphWindowsHelloForBusinessPinUsage disallowed];
    }
    else {
        return [MSGraphWindowsHelloForBusinessPinUsage UnknownEnumValue];
    }
}

@end
