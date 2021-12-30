// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsUserAccountControlSettings.h"

@interface MSGraphWindowsUserAccountControlSettings () {
    MSGraphWindowsUserAccountControlSettingsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsUserAccountControlSettingsValue enumValue;
@end

@implementation MSGraphWindowsUserAccountControlSettings

+ (MSGraphWindowsUserAccountControlSettings*) userDefined {
    static MSGraphWindowsUserAccountControlSettings *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _userDefined.enumValue = MSGraphWindowsUserAccountControlSettingsUserDefined;
    });
    return _userDefined;
}
+ (MSGraphWindowsUserAccountControlSettings*) alwaysNotify {
    static MSGraphWindowsUserAccountControlSettings *_alwaysNotify;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _alwaysNotify = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _alwaysNotify.enumValue = MSGraphWindowsUserAccountControlSettingsAlwaysNotify;
    });
    return _alwaysNotify;
}
+ (MSGraphWindowsUserAccountControlSettings*) notifyOnAppChanges {
    static MSGraphWindowsUserAccountControlSettings *_notifyOnAppChanges;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notifyOnAppChanges = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _notifyOnAppChanges.enumValue = MSGraphWindowsUserAccountControlSettingsNotifyOnAppChanges;
    });
    return _notifyOnAppChanges;
}
+ (MSGraphWindowsUserAccountControlSettings*) notifyOnAppChangesWithoutDimming {
    static MSGraphWindowsUserAccountControlSettings *_notifyOnAppChangesWithoutDimming;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notifyOnAppChangesWithoutDimming = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _notifyOnAppChangesWithoutDimming.enumValue = MSGraphWindowsUserAccountControlSettingsNotifyOnAppChangesWithoutDimming;
    });
    return _notifyOnAppChangesWithoutDimming;
}
+ (MSGraphWindowsUserAccountControlSettings*) neverNotify {
    static MSGraphWindowsUserAccountControlSettings *_neverNotify;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _neverNotify = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _neverNotify.enumValue = MSGraphWindowsUserAccountControlSettingsNeverNotify;
    });
    return _neverNotify;
}

+ (MSGraphWindowsUserAccountControlSettings*) UnknownEnumValue {
    static MSGraphWindowsUserAccountControlSettings *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsUserAccountControlSettings alloc] init];
        _unknownValue.enumValue = MSGraphWindowsUserAccountControlSettingsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsUserAccountControlSettings*) windowsUserAccountControlSettingsWithEnumValue:(MSGraphWindowsUserAccountControlSettingsValue)val {

    switch(val)
    {
        case MSGraphWindowsUserAccountControlSettingsUserDefined:
            return [MSGraphWindowsUserAccountControlSettings userDefined];
        case MSGraphWindowsUserAccountControlSettingsAlwaysNotify:
            return [MSGraphWindowsUserAccountControlSettings alwaysNotify];
        case MSGraphWindowsUserAccountControlSettingsNotifyOnAppChanges:
            return [MSGraphWindowsUserAccountControlSettings notifyOnAppChanges];
        case MSGraphWindowsUserAccountControlSettingsNotifyOnAppChangesWithoutDimming:
            return [MSGraphWindowsUserAccountControlSettings notifyOnAppChangesWithoutDimming];
        case MSGraphWindowsUserAccountControlSettingsNeverNotify:
            return [MSGraphWindowsUserAccountControlSettings neverNotify];
        case MSGraphWindowsUserAccountControlSettingsEndOfEnum:
        default:
            return [MSGraphWindowsUserAccountControlSettings UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsUserAccountControlSettingsUserDefined:
            return @"userDefined";
        case MSGraphWindowsUserAccountControlSettingsAlwaysNotify:
            return @"alwaysNotify";
        case MSGraphWindowsUserAccountControlSettingsNotifyOnAppChanges:
            return @"notifyOnAppChanges";
        case MSGraphWindowsUserAccountControlSettingsNotifyOnAppChangesWithoutDimming:
            return @"notifyOnAppChangesWithoutDimming";
        case MSGraphWindowsUserAccountControlSettingsNeverNotify:
            return @"neverNotify";
        case MSGraphWindowsUserAccountControlSettingsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsUserAccountControlSettingsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsUserAccountControlSettings)

- (MSGraphWindowsUserAccountControlSettings*) toMSGraphWindowsUserAccountControlSettings{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphWindowsUserAccountControlSettings userDefined];
    }
    else if([self isEqualToString:@"alwaysNotify"])
    {
          return [MSGraphWindowsUserAccountControlSettings alwaysNotify];
    }
    else if([self isEqualToString:@"notifyOnAppChanges"])
    {
          return [MSGraphWindowsUserAccountControlSettings notifyOnAppChanges];
    }
    else if([self isEqualToString:@"notifyOnAppChangesWithoutDimming"])
    {
          return [MSGraphWindowsUserAccountControlSettings notifyOnAppChangesWithoutDimming];
    }
    else if([self isEqualToString:@"neverNotify"])
    {
          return [MSGraphWindowsUserAccountControlSettings neverNotify];
    }
    else {
        return [MSGraphWindowsUserAccountControlSettings UnknownEnumValue];
    }
}

@end
