// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphStateManagementSetting.h"

@interface MSGraphStateManagementSetting () {
    MSGraphStateManagementSettingValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphStateManagementSettingValue enumValue;
@end

@implementation MSGraphStateManagementSetting

+ (MSGraphStateManagementSetting*) notConfigured {
    static MSGraphStateManagementSetting *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphStateManagementSetting alloc] init];
        _notConfigured.enumValue = MSGraphStateManagementSettingNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphStateManagementSetting*) blocked {
    static MSGraphStateManagementSetting *_blocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blocked = [[MSGraphStateManagementSetting alloc] init];
        _blocked.enumValue = MSGraphStateManagementSettingBlocked;
    });
    return _blocked;
}
+ (MSGraphStateManagementSetting*) allowed {
    static MSGraphStateManagementSetting *_allowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allowed = [[MSGraphStateManagementSetting alloc] init];
        _allowed.enumValue = MSGraphStateManagementSettingAllowed;
    });
    return _allowed;
}

+ (MSGraphStateManagementSetting*) UnknownEnumValue {
    static MSGraphStateManagementSetting *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphStateManagementSetting alloc] init];
        _unknownValue.enumValue = MSGraphStateManagementSettingEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphStateManagementSetting*) stateManagementSettingWithEnumValue:(MSGraphStateManagementSettingValue)val {

    switch(val)
    {
        case MSGraphStateManagementSettingNotConfigured:
            return [MSGraphStateManagementSetting notConfigured];
        case MSGraphStateManagementSettingBlocked:
            return [MSGraphStateManagementSetting blocked];
        case MSGraphStateManagementSettingAllowed:
            return [MSGraphStateManagementSetting allowed];
        case MSGraphStateManagementSettingEndOfEnum:
        default:
            return [MSGraphStateManagementSetting UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphStateManagementSettingNotConfigured:
            return @"notConfigured";
        case MSGraphStateManagementSettingBlocked:
            return @"blocked";
        case MSGraphStateManagementSettingAllowed:
            return @"allowed";
        case MSGraphStateManagementSettingEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphStateManagementSettingValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphStateManagementSetting)

- (MSGraphStateManagementSetting*) toMSGraphStateManagementSetting{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphStateManagementSetting notConfigured];
    }
    else if([self isEqualToString:@"blocked"])
    {
          return [MSGraphStateManagementSetting blocked];
    }
    else if([self isEqualToString:@"allowed"])
    {
          return [MSGraphStateManagementSetting allowed];
    }
    else {
        return [MSGraphStateManagementSetting UnknownEnumValue];
    }
}

@end
