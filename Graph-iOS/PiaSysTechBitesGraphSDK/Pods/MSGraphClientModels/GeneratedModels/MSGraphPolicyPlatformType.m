// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPolicyPlatformType.h"

@interface MSGraphPolicyPlatformType () {
    MSGraphPolicyPlatformTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPolicyPlatformTypeValue enumValue;
@end

@implementation MSGraphPolicyPlatformType

+ (MSGraphPolicyPlatformType*) android {
    static MSGraphPolicyPlatformType *_android;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _android = [[MSGraphPolicyPlatformType alloc] init];
        _android.enumValue = MSGraphPolicyPlatformTypeAndroid;
    });
    return _android;
}
+ (MSGraphPolicyPlatformType*) iOS {
    static MSGraphPolicyPlatformType *_iOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _iOS = [[MSGraphPolicyPlatformType alloc] init];
        _iOS.enumValue = MSGraphPolicyPlatformTypeIOS;
    });
    return _iOS;
}
+ (MSGraphPolicyPlatformType*) macOS {
    static MSGraphPolicyPlatformType *_macOS;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _macOS = [[MSGraphPolicyPlatformType alloc] init];
        _macOS.enumValue = MSGraphPolicyPlatformTypeMacOS;
    });
    return _macOS;
}
+ (MSGraphPolicyPlatformType*) windowsPhone81 {
    static MSGraphPolicyPlatformType *_windowsPhone81;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windowsPhone81 = [[MSGraphPolicyPlatformType alloc] init];
        _windowsPhone81.enumValue = MSGraphPolicyPlatformTypeWindowsPhone81;
    });
    return _windowsPhone81;
}
+ (MSGraphPolicyPlatformType*) windows81AndLater {
    static MSGraphPolicyPlatformType *_windows81AndLater;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows81AndLater = [[MSGraphPolicyPlatformType alloc] init];
        _windows81AndLater.enumValue = MSGraphPolicyPlatformTypeWindows81AndLater;
    });
    return _windows81AndLater;
}
+ (MSGraphPolicyPlatformType*) windows10AndLater {
    static MSGraphPolicyPlatformType *_windows10AndLater;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10AndLater = [[MSGraphPolicyPlatformType alloc] init];
        _windows10AndLater.enumValue = MSGraphPolicyPlatformTypeWindows10AndLater;
    });
    return _windows10AndLater;
}
+ (MSGraphPolicyPlatformType*) androidWorkProfile {
    static MSGraphPolicyPlatformType *_androidWorkProfile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _androidWorkProfile = [[MSGraphPolicyPlatformType alloc] init];
        _androidWorkProfile.enumValue = MSGraphPolicyPlatformTypeAndroidWorkProfile;
    });
    return _androidWorkProfile;
}
+ (MSGraphPolicyPlatformType*) all {
    static MSGraphPolicyPlatformType *_all;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _all = [[MSGraphPolicyPlatformType alloc] init];
        _all.enumValue = MSGraphPolicyPlatformTypeAll;
    });
    return _all;
}

+ (MSGraphPolicyPlatformType*) UnknownEnumValue {
    static MSGraphPolicyPlatformType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPolicyPlatformType alloc] init];
        _unknownValue.enumValue = MSGraphPolicyPlatformTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPolicyPlatformType*) policyPlatformTypeWithEnumValue:(MSGraphPolicyPlatformTypeValue)val {

    switch(val)
    {
        case MSGraphPolicyPlatformTypeAndroid:
            return [MSGraphPolicyPlatformType android];
        case MSGraphPolicyPlatformTypeIOS:
            return [MSGraphPolicyPlatformType iOS];
        case MSGraphPolicyPlatformTypeMacOS:
            return [MSGraphPolicyPlatformType macOS];
        case MSGraphPolicyPlatformTypeWindowsPhone81:
            return [MSGraphPolicyPlatformType windowsPhone81];
        case MSGraphPolicyPlatformTypeWindows81AndLater:
            return [MSGraphPolicyPlatformType windows81AndLater];
        case MSGraphPolicyPlatformTypeWindows10AndLater:
            return [MSGraphPolicyPlatformType windows10AndLater];
        case MSGraphPolicyPlatformTypeAndroidWorkProfile:
            return [MSGraphPolicyPlatformType androidWorkProfile];
        case MSGraphPolicyPlatformTypeAll:
            return [MSGraphPolicyPlatformType all];
        case MSGraphPolicyPlatformTypeEndOfEnum:
        default:
            return [MSGraphPolicyPlatformType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPolicyPlatformTypeAndroid:
            return @"android";
        case MSGraphPolicyPlatformTypeIOS:
            return @"iOS";
        case MSGraphPolicyPlatformTypeMacOS:
            return @"macOS";
        case MSGraphPolicyPlatformTypeWindowsPhone81:
            return @"windowsPhone81";
        case MSGraphPolicyPlatformTypeWindows81AndLater:
            return @"windows81AndLater";
        case MSGraphPolicyPlatformTypeWindows10AndLater:
            return @"windows10AndLater";
        case MSGraphPolicyPlatformTypeAndroidWorkProfile:
            return @"androidWorkProfile";
        case MSGraphPolicyPlatformTypeAll:
            return @"all";
        case MSGraphPolicyPlatformTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPolicyPlatformTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPolicyPlatformType)

- (MSGraphPolicyPlatformType*) toMSGraphPolicyPlatformType{

    if([self isEqualToString:@"android"])
    {
          return [MSGraphPolicyPlatformType android];
    }
    else if([self isEqualToString:@"iOS"])
    {
          return [MSGraphPolicyPlatformType iOS];
    }
    else if([self isEqualToString:@"macOS"])
    {
          return [MSGraphPolicyPlatformType macOS];
    }
    else if([self isEqualToString:@"windowsPhone81"])
    {
          return [MSGraphPolicyPlatformType windowsPhone81];
    }
    else if([self isEqualToString:@"windows81AndLater"])
    {
          return [MSGraphPolicyPlatformType windows81AndLater];
    }
    else if([self isEqualToString:@"windows10AndLater"])
    {
          return [MSGraphPolicyPlatformType windows10AndLater];
    }
    else if([self isEqualToString:@"androidWorkProfile"])
    {
          return [MSGraphPolicyPlatformType androidWorkProfile];
    }
    else if([self isEqualToString:@"all"])
    {
          return [MSGraphPolicyPlatformType all];
    }
    else {
        return [MSGraphPolicyPlatformType UnknownEnumValue];
    }
}

@end
