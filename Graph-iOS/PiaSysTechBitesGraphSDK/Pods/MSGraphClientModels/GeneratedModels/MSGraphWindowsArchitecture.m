// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsArchitecture.h"

@interface MSGraphWindowsArchitecture () {
    MSGraphWindowsArchitectureValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsArchitectureValue enumValue;
@end

@implementation MSGraphWindowsArchitecture

+ (MSGraphWindowsArchitecture*) none {
    static MSGraphWindowsArchitecture *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphWindowsArchitecture alloc] init];
        _none.enumValue = MSGraphWindowsArchitectureNone;
    });
    return _none;
}
+ (MSGraphWindowsArchitecture*) x86 {
    static MSGraphWindowsArchitecture *_x86;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _x86 = [[MSGraphWindowsArchitecture alloc] init];
        _x86.enumValue = MSGraphWindowsArchitectureX86;
    });
    return _x86;
}
+ (MSGraphWindowsArchitecture*) x64 {
    static MSGraphWindowsArchitecture *_x64;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _x64 = [[MSGraphWindowsArchitecture alloc] init];
        _x64.enumValue = MSGraphWindowsArchitectureX64;
    });
    return _x64;
}
+ (MSGraphWindowsArchitecture*) arm {
    static MSGraphWindowsArchitecture *_arm;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _arm = [[MSGraphWindowsArchitecture alloc] init];
        _arm.enumValue = MSGraphWindowsArchitectureArm;
    });
    return _arm;
}
+ (MSGraphWindowsArchitecture*) neutral {
    static MSGraphWindowsArchitecture *_neutral;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _neutral = [[MSGraphWindowsArchitecture alloc] init];
        _neutral.enumValue = MSGraphWindowsArchitectureNeutral;
    });
    return _neutral;
}

+ (MSGraphWindowsArchitecture*) UnknownEnumValue {
    static MSGraphWindowsArchitecture *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsArchitecture alloc] init];
        _unknownValue.enumValue = MSGraphWindowsArchitectureEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsArchitecture*) windowsArchitectureWithEnumValue:(MSGraphWindowsArchitectureValue)val {

    switch(val)
    {
        case MSGraphWindowsArchitectureNone:
            return [MSGraphWindowsArchitecture none];
        case MSGraphWindowsArchitectureX86:
            return [MSGraphWindowsArchitecture x86];
        case MSGraphWindowsArchitectureX64:
            return [MSGraphWindowsArchitecture x64];
        case MSGraphWindowsArchitectureArm:
            return [MSGraphWindowsArchitecture arm];
        case MSGraphWindowsArchitectureNeutral:
            return [MSGraphWindowsArchitecture neutral];
        case MSGraphWindowsArchitectureEndOfEnum:
        default:
            return [MSGraphWindowsArchitecture UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsArchitectureNone:
            return @"none";
        case MSGraphWindowsArchitectureX86:
            return @"x86";
        case MSGraphWindowsArchitectureX64:
            return @"x64";
        case MSGraphWindowsArchitectureArm:
            return @"arm";
        case MSGraphWindowsArchitectureNeutral:
            return @"neutral";
        case MSGraphWindowsArchitectureEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsArchitectureValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsArchitecture)

- (MSGraphWindowsArchitecture*) toMSGraphWindowsArchitecture{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphWindowsArchitecture none];
    }
    else if([self isEqualToString:@"x86"])
    {
          return [MSGraphWindowsArchitecture x86];
    }
    else if([self isEqualToString:@"x64"])
    {
          return [MSGraphWindowsArchitecture x64];
    }
    else if([self isEqualToString:@"arm"])
    {
          return [MSGraphWindowsArchitecture arm];
    }
    else if([self isEqualToString:@"neutral"])
    {
          return [MSGraphWindowsArchitecture neutral];
    }
    else {
        return [MSGraphWindowsArchitecture UnknownEnumValue];
    }
}

@end
