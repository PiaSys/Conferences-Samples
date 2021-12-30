// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindowsSpotlightEnablementSettings.h"

@interface MSGraphWindowsSpotlightEnablementSettings () {
    MSGraphWindowsSpotlightEnablementSettingsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindowsSpotlightEnablementSettingsValue enumValue;
@end

@implementation MSGraphWindowsSpotlightEnablementSettings

+ (MSGraphWindowsSpotlightEnablementSettings*) notConfigured {
    static MSGraphWindowsSpotlightEnablementSettings *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWindowsSpotlightEnablementSettings alloc] init];
        _notConfigured.enumValue = MSGraphWindowsSpotlightEnablementSettingsNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWindowsSpotlightEnablementSettings*) disabled {
    static MSGraphWindowsSpotlightEnablementSettings *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphWindowsSpotlightEnablementSettings alloc] init];
        _disabled.enumValue = MSGraphWindowsSpotlightEnablementSettingsDisabled;
    });
    return _disabled;
}
+ (MSGraphWindowsSpotlightEnablementSettings*) enabled {
    static MSGraphWindowsSpotlightEnablementSettings *_enabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enabled = [[MSGraphWindowsSpotlightEnablementSettings alloc] init];
        _enabled.enumValue = MSGraphWindowsSpotlightEnablementSettingsEnabled;
    });
    return _enabled;
}

+ (MSGraphWindowsSpotlightEnablementSettings*) UnknownEnumValue {
    static MSGraphWindowsSpotlightEnablementSettings *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindowsSpotlightEnablementSettings alloc] init];
        _unknownValue.enumValue = MSGraphWindowsSpotlightEnablementSettingsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindowsSpotlightEnablementSettings*) windowsSpotlightEnablementSettingsWithEnumValue:(MSGraphWindowsSpotlightEnablementSettingsValue)val {

    switch(val)
    {
        case MSGraphWindowsSpotlightEnablementSettingsNotConfigured:
            return [MSGraphWindowsSpotlightEnablementSettings notConfigured];
        case MSGraphWindowsSpotlightEnablementSettingsDisabled:
            return [MSGraphWindowsSpotlightEnablementSettings disabled];
        case MSGraphWindowsSpotlightEnablementSettingsEnabled:
            return [MSGraphWindowsSpotlightEnablementSettings enabled];
        case MSGraphWindowsSpotlightEnablementSettingsEndOfEnum:
        default:
            return [MSGraphWindowsSpotlightEnablementSettings UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindowsSpotlightEnablementSettingsNotConfigured:
            return @"notConfigured";
        case MSGraphWindowsSpotlightEnablementSettingsDisabled:
            return @"disabled";
        case MSGraphWindowsSpotlightEnablementSettingsEnabled:
            return @"enabled";
        case MSGraphWindowsSpotlightEnablementSettingsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindowsSpotlightEnablementSettingsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindowsSpotlightEnablementSettings)

- (MSGraphWindowsSpotlightEnablementSettings*) toMSGraphWindowsSpotlightEnablementSettings{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWindowsSpotlightEnablementSettings notConfigured];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphWindowsSpotlightEnablementSettings disabled];
    }
    else if([self isEqualToString:@"enabled"])
    {
          return [MSGraphWindowsSpotlightEnablementSettings enabled];
    }
    else {
        return [MSGraphWindowsSpotlightEnablementSettings UnknownEnumValue];
    }
}

@end
