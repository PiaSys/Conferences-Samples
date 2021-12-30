// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsDeliveryOptimizationMode.h"

@interface MSGraphWindowsDeliveryOptimizationMode () {
    MSGraphWindowsDeliveryOptimizationModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsDeliveryOptimizationModeValue enumValue;
@end

@implementation MSGraphWindowsDeliveryOptimizationMode

+ (MSGraphWindowsDeliveryOptimizationMode*) userDefined {
    static MSGraphWindowsDeliveryOptimizationMode *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _userDefined.enumValue = MSGraphWindowsDeliveryOptimizationModeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) httpOnly {
    static MSGraphWindowsDeliveryOptimizationMode *_httpOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _httpOnly = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _httpOnly.enumValue = MSGraphWindowsDeliveryOptimizationModeHttpOnly;
    });
    return _httpOnly;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) httpWithPeeringNat {
    static MSGraphWindowsDeliveryOptimizationMode *_httpWithPeeringNat;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _httpWithPeeringNat = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _httpWithPeeringNat.enumValue = MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringNat;
    });
    return _httpWithPeeringNat;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) httpWithPeeringPrivateGroup {
    static MSGraphWindowsDeliveryOptimizationMode *_httpWithPeeringPrivateGroup;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _httpWithPeeringPrivateGroup = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _httpWithPeeringPrivateGroup.enumValue = MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringPrivateGroup;
    });
    return _httpWithPeeringPrivateGroup;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) httpWithInternetPeering {
    static MSGraphWindowsDeliveryOptimizationMode *_httpWithInternetPeering;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _httpWithInternetPeering = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _httpWithInternetPeering.enumValue = MSGraphWindowsDeliveryOptimizationModeHttpWithInternetPeering;
    });
    return _httpWithInternetPeering;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) simpleDownload {
    static MSGraphWindowsDeliveryOptimizationMode *_simpleDownload;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _simpleDownload = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _simpleDownload.enumValue = MSGraphWindowsDeliveryOptimizationModeSimpleDownload;
    });
    return _simpleDownload;
}
+ (MSGraphWindowsDeliveryOptimizationMode*) bypassMode {
    static MSGraphWindowsDeliveryOptimizationMode *_bypassMode;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bypassMode = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _bypassMode.enumValue = MSGraphWindowsDeliveryOptimizationModeBypassMode;
    });
    return _bypassMode;
}

+ (MSGraphWindowsDeliveryOptimizationMode*) UnknownEnumValue {
    static MSGraphWindowsDeliveryOptimizationMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsDeliveryOptimizationMode alloc] init];
        _unknownValue.enumValue = MSGraphWindowsDeliveryOptimizationModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsDeliveryOptimizationMode*) windowsDeliveryOptimizationModeWithEnumValue:(MSGraphWindowsDeliveryOptimizationModeValue)val {

    switch(val)
    {
        case MSGraphWindowsDeliveryOptimizationModeUserDefined:
            return [MSGraphWindowsDeliveryOptimizationMode userDefined];
        case MSGraphWindowsDeliveryOptimizationModeHttpOnly:
            return [MSGraphWindowsDeliveryOptimizationMode httpOnly];
        case MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringNat:
            return [MSGraphWindowsDeliveryOptimizationMode httpWithPeeringNat];
        case MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringPrivateGroup:
            return [MSGraphWindowsDeliveryOptimizationMode httpWithPeeringPrivateGroup];
        case MSGraphWindowsDeliveryOptimizationModeHttpWithInternetPeering:
            return [MSGraphWindowsDeliveryOptimizationMode httpWithInternetPeering];
        case MSGraphWindowsDeliveryOptimizationModeSimpleDownload:
            return [MSGraphWindowsDeliveryOptimizationMode simpleDownload];
        case MSGraphWindowsDeliveryOptimizationModeBypassMode:
            return [MSGraphWindowsDeliveryOptimizationMode bypassMode];
        case MSGraphWindowsDeliveryOptimizationModeEndOfEnum:
        default:
            return [MSGraphWindowsDeliveryOptimizationMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsDeliveryOptimizationModeUserDefined:
            return @"userDefined";
        case MSGraphWindowsDeliveryOptimizationModeHttpOnly:
            return @"httpOnly";
        case MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringNat:
            return @"httpWithPeeringNat";
        case MSGraphWindowsDeliveryOptimizationModeHttpWithPeeringPrivateGroup:
            return @"httpWithPeeringPrivateGroup";
        case MSGraphWindowsDeliveryOptimizationModeHttpWithInternetPeering:
            return @"httpWithInternetPeering";
        case MSGraphWindowsDeliveryOptimizationModeSimpleDownload:
            return @"simpleDownload";
        case MSGraphWindowsDeliveryOptimizationModeBypassMode:
            return @"bypassMode";
        case MSGraphWindowsDeliveryOptimizationModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsDeliveryOptimizationModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsDeliveryOptimizationMode)

- (MSGraphWindowsDeliveryOptimizationMode*) toMSGraphWindowsDeliveryOptimizationMode{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode userDefined];
    }
    else if([self isEqualToString:@"httpOnly"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode httpOnly];
    }
    else if([self isEqualToString:@"httpWithPeeringNat"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode httpWithPeeringNat];
    }
    else if([self isEqualToString:@"httpWithPeeringPrivateGroup"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode httpWithPeeringPrivateGroup];
    }
    else if([self isEqualToString:@"httpWithInternetPeering"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode httpWithInternetPeering];
    }
    else if([self isEqualToString:@"simpleDownload"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode simpleDownload];
    }
    else if([self isEqualToString:@"bypassMode"])
    {
          return [MSGraphWindowsDeliveryOptimizationMode bypassMode];
    }
    else {
        return [MSGraphWindowsDeliveryOptimizationMode UnknownEnumValue];
    }
}

@end
