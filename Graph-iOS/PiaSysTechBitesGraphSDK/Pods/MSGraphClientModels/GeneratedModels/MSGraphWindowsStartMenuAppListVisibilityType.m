// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsStartMenuAppListVisibilityType.h"

@interface MSGraphWindowsStartMenuAppListVisibilityType () {
    MSGraphWindowsStartMenuAppListVisibilityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsStartMenuAppListVisibilityTypeValue enumValue;
@end

@implementation MSGraphWindowsStartMenuAppListVisibilityType

+ (MSGraphWindowsStartMenuAppListVisibilityType*) userDefined {
    static MSGraphWindowsStartMenuAppListVisibilityType *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWindowsStartMenuAppListVisibilityType alloc] init];
        _userDefined.enumValue = MSGraphWindowsStartMenuAppListVisibilityTypeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWindowsStartMenuAppListVisibilityType*) collapse {
    static MSGraphWindowsStartMenuAppListVisibilityType *_collapse;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _collapse = [[MSGraphWindowsStartMenuAppListVisibilityType alloc] init];
        _collapse.enumValue = MSGraphWindowsStartMenuAppListVisibilityTypeCollapse;
    });
    return _collapse;
}
+ (MSGraphWindowsStartMenuAppListVisibilityType*) remove {
    static MSGraphWindowsStartMenuAppListVisibilityType *_remove;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _remove = [[MSGraphWindowsStartMenuAppListVisibilityType alloc] init];
        _remove.enumValue = MSGraphWindowsStartMenuAppListVisibilityTypeRemove;
    });
    return _remove;
}
+ (MSGraphWindowsStartMenuAppListVisibilityType*) disableSettingsApp {
    static MSGraphWindowsStartMenuAppListVisibilityType *_disableSettingsApp;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disableSettingsApp = [[MSGraphWindowsStartMenuAppListVisibilityType alloc] init];
        _disableSettingsApp.enumValue = MSGraphWindowsStartMenuAppListVisibilityTypeDisableSettingsApp;
    });
    return _disableSettingsApp;
}

+ (MSGraphWindowsStartMenuAppListVisibilityType*) UnknownEnumValue {
    static MSGraphWindowsStartMenuAppListVisibilityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsStartMenuAppListVisibilityType alloc] init];
        _unknownValue.enumValue = MSGraphWindowsStartMenuAppListVisibilityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsStartMenuAppListVisibilityType*) windowsStartMenuAppListVisibilityTypeWithEnumValue:(MSGraphWindowsStartMenuAppListVisibilityTypeValue)val {

    switch(val)
    {
        case MSGraphWindowsStartMenuAppListVisibilityTypeUserDefined:
            return [MSGraphWindowsStartMenuAppListVisibilityType userDefined];
        case MSGraphWindowsStartMenuAppListVisibilityTypeCollapse:
            return [MSGraphWindowsStartMenuAppListVisibilityType collapse];
        case MSGraphWindowsStartMenuAppListVisibilityTypeRemove:
            return [MSGraphWindowsStartMenuAppListVisibilityType remove];
        case MSGraphWindowsStartMenuAppListVisibilityTypeDisableSettingsApp:
            return [MSGraphWindowsStartMenuAppListVisibilityType disableSettingsApp];
        case MSGraphWindowsStartMenuAppListVisibilityTypeEndOfEnum:
        default:
            return [MSGraphWindowsStartMenuAppListVisibilityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsStartMenuAppListVisibilityTypeUserDefined:
            return @"userDefined";
        case MSGraphWindowsStartMenuAppListVisibilityTypeCollapse:
            return @"collapse";
        case MSGraphWindowsStartMenuAppListVisibilityTypeRemove:
            return @"remove";
        case MSGraphWindowsStartMenuAppListVisibilityTypeDisableSettingsApp:
            return @"disableSettingsApp";
        case MSGraphWindowsStartMenuAppListVisibilityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsStartMenuAppListVisibilityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsStartMenuAppListVisibilityType)

- (MSGraphWindowsStartMenuAppListVisibilityType*) toMSGraphWindowsStartMenuAppListVisibilityType{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWindowsStartMenuAppListVisibilityType userDefined];
    }
    else if([self isEqualToString:@"collapse"])
    {
          return [MSGraphWindowsStartMenuAppListVisibilityType collapse];
    }
    else if([self isEqualToString:@"remove"])
    {
          return [MSGraphWindowsStartMenuAppListVisibilityType remove];
    }
    else if([self isEqualToString:@"disableSettingsApp"])
    {
          return [MSGraphWindowsStartMenuAppListVisibilityType disableSettingsApp];
    }
    else {
        return [MSGraphWindowsStartMenuAppListVisibilityType UnknownEnumValue];
    }
}

@end
