// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsDeviceType.h"

@interface MSGraphWindowsDeviceType () {
    MSGraphWindowsDeviceTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsDeviceTypeValue enumValue;
@end

@implementation MSGraphWindowsDeviceType

+ (MSGraphWindowsDeviceType*) none {
    static MSGraphWindowsDeviceType *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphWindowsDeviceType alloc] init];
        _none.enumValue = MSGraphWindowsDeviceTypeNone;
    });
    return _none;
}
+ (MSGraphWindowsDeviceType*) desktop {
    static MSGraphWindowsDeviceType *_desktop;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _desktop = [[MSGraphWindowsDeviceType alloc] init];
        _desktop.enumValue = MSGraphWindowsDeviceTypeDesktop;
    });
    return _desktop;
}
+ (MSGraphWindowsDeviceType*) mobile {
    static MSGraphWindowsDeviceType *_mobile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mobile = [[MSGraphWindowsDeviceType alloc] init];
        _mobile.enumValue = MSGraphWindowsDeviceTypeMobile;
    });
    return _mobile;
}
+ (MSGraphWindowsDeviceType*) holographic {
    static MSGraphWindowsDeviceType *_holographic;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _holographic = [[MSGraphWindowsDeviceType alloc] init];
        _holographic.enumValue = MSGraphWindowsDeviceTypeHolographic;
    });
    return _holographic;
}
+ (MSGraphWindowsDeviceType*) team {
    static MSGraphWindowsDeviceType *_team;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _team = [[MSGraphWindowsDeviceType alloc] init];
        _team.enumValue = MSGraphWindowsDeviceTypeTeam;
    });
    return _team;
}

+ (MSGraphWindowsDeviceType*) UnknownEnumValue {
    static MSGraphWindowsDeviceType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsDeviceType alloc] init];
        _unknownValue.enumValue = MSGraphWindowsDeviceTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsDeviceType*) windowsDeviceTypeWithEnumValue:(MSGraphWindowsDeviceTypeValue)val {

    switch(val)
    {
        case MSGraphWindowsDeviceTypeNone:
            return [MSGraphWindowsDeviceType none];
        case MSGraphWindowsDeviceTypeDesktop:
            return [MSGraphWindowsDeviceType desktop];
        case MSGraphWindowsDeviceTypeMobile:
            return [MSGraphWindowsDeviceType mobile];
        case MSGraphWindowsDeviceTypeHolographic:
            return [MSGraphWindowsDeviceType holographic];
        case MSGraphWindowsDeviceTypeTeam:
            return [MSGraphWindowsDeviceType team];
        case MSGraphWindowsDeviceTypeEndOfEnum:
        default:
            return [MSGraphWindowsDeviceType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsDeviceTypeNone:
            return @"none";
        case MSGraphWindowsDeviceTypeDesktop:
            return @"desktop";
        case MSGraphWindowsDeviceTypeMobile:
            return @"mobile";
        case MSGraphWindowsDeviceTypeHolographic:
            return @"holographic";
        case MSGraphWindowsDeviceTypeTeam:
            return @"team";
        case MSGraphWindowsDeviceTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsDeviceTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsDeviceType)

- (MSGraphWindowsDeviceType*) toMSGraphWindowsDeviceType{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphWindowsDeviceType none];
    }
    else if([self isEqualToString:@"desktop"])
    {
          return [MSGraphWindowsDeviceType desktop];
    }
    else if([self isEqualToString:@"mobile"])
    {
          return [MSGraphWindowsDeviceType mobile];
    }
    else if([self isEqualToString:@"holographic"])
    {
          return [MSGraphWindowsDeviceType holographic];
    }
    else if([self isEqualToString:@"team"])
    {
          return [MSGraphWindowsDeviceType team];
    }
    else {
        return [MSGraphWindowsDeviceType UnknownEnumValue];
    }
}

@end
