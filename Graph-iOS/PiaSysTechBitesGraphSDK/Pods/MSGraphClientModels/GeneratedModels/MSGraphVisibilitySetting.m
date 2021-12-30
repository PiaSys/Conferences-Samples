// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphVisibilitySetting.h"

@interface MSGraphVisibilitySetting () {
    MSGraphVisibilitySettingValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphVisibilitySettingValue enumValue;
@end

@implementation MSGraphVisibilitySetting

+ (MSGraphVisibilitySetting*) notConfigured {
    static MSGraphVisibilitySetting *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphVisibilitySetting alloc] init];
        _notConfigured.enumValue = MSGraphVisibilitySettingNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphVisibilitySetting*) hide {
    static MSGraphVisibilitySetting *_hide;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hide = [[MSGraphVisibilitySetting alloc] init];
        _hide.enumValue = MSGraphVisibilitySettingHide;
    });
    return _hide;
}
+ (MSGraphVisibilitySetting*) show {
    static MSGraphVisibilitySetting *_show;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _show = [[MSGraphVisibilitySetting alloc] init];
        _show.enumValue = MSGraphVisibilitySettingShow;
    });
    return _show;
}

+ (MSGraphVisibilitySetting*) UnknownEnumValue {
    static MSGraphVisibilitySetting *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphVisibilitySetting alloc] init];
        _unknownValue.enumValue = MSGraphVisibilitySettingEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphVisibilitySetting*) visibilitySettingWithEnumValue:(MSGraphVisibilitySettingValue)val {

    switch(val)
    {
        case MSGraphVisibilitySettingNotConfigured:
            return [MSGraphVisibilitySetting notConfigured];
        case MSGraphVisibilitySettingHide:
            return [MSGraphVisibilitySetting hide];
        case MSGraphVisibilitySettingShow:
            return [MSGraphVisibilitySetting show];
        case MSGraphVisibilitySettingEndOfEnum:
        default:
            return [MSGraphVisibilitySetting UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphVisibilitySettingNotConfigured:
            return @"notConfigured";
        case MSGraphVisibilitySettingHide:
            return @"hide";
        case MSGraphVisibilitySettingShow:
            return @"show";
        case MSGraphVisibilitySettingEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphVisibilitySettingValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphVisibilitySetting)

- (MSGraphVisibilitySetting*) toMSGraphVisibilitySetting{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphVisibilitySetting notConfigured];
    }
    else if([self isEqualToString:@"hide"])
    {
          return [MSGraphVisibilitySetting hide];
    }
    else if([self isEqualToString:@"show"])
    {
          return [MSGraphVisibilitySetting show];
    }
    else {
        return [MSGraphVisibilitySetting UnknownEnumValue];
    }
}

@end
