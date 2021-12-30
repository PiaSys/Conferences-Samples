// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAutomaticUpdateMode.h"

@interface MSGraphAutomaticUpdateMode () {
    MSGraphAutomaticUpdateModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAutomaticUpdateModeValue enumValue;
@end

@implementation MSGraphAutomaticUpdateMode

+ (MSGraphAutomaticUpdateMode*) userDefined {
    static MSGraphAutomaticUpdateMode *_userDefined;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userDefined = [[MSGraphAutomaticUpdateMode alloc] init];
        _userDefined.enumValue = MSGraphAutomaticUpdateModeUserDefined;
    });
    return _userDefined;
}
+ (MSGraphAutomaticUpdateMode*) notifyDownload {
    static MSGraphAutomaticUpdateMode *_notifyDownload;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notifyDownload = [[MSGraphAutomaticUpdateMode alloc] init];
        _notifyDownload.enumValue = MSGraphAutomaticUpdateModeNotifyDownload;
    });
    return _notifyDownload;
}
+ (MSGraphAutomaticUpdateMode*) autoInstallAtMaintenanceTime {
    static MSGraphAutomaticUpdateMode *_autoInstallAtMaintenanceTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoInstallAtMaintenanceTime = [[MSGraphAutomaticUpdateMode alloc] init];
        _autoInstallAtMaintenanceTime.enumValue = MSGraphAutomaticUpdateModeAutoInstallAtMaintenanceTime;
    });
    return _autoInstallAtMaintenanceTime;
}
+ (MSGraphAutomaticUpdateMode*) autoInstallAndRebootAtMaintenanceTime {
    static MSGraphAutomaticUpdateMode *_autoInstallAndRebootAtMaintenanceTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoInstallAndRebootAtMaintenanceTime = [[MSGraphAutomaticUpdateMode alloc] init];
        _autoInstallAndRebootAtMaintenanceTime.enumValue = MSGraphAutomaticUpdateModeAutoInstallAndRebootAtMaintenanceTime;
    });
    return _autoInstallAndRebootAtMaintenanceTime;
}
+ (MSGraphAutomaticUpdateMode*) autoInstallAndRebootAtScheduledTime {
    static MSGraphAutomaticUpdateMode *_autoInstallAndRebootAtScheduledTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoInstallAndRebootAtScheduledTime = [[MSGraphAutomaticUpdateMode alloc] init];
        _autoInstallAndRebootAtScheduledTime.enumValue = MSGraphAutomaticUpdateModeAutoInstallAndRebootAtScheduledTime;
    });
    return _autoInstallAndRebootAtScheduledTime;
}
+ (MSGraphAutomaticUpdateMode*) autoInstallAndRebootWithoutEndUserControl {
    static MSGraphAutomaticUpdateMode *_autoInstallAndRebootWithoutEndUserControl;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _autoInstallAndRebootWithoutEndUserControl = [[MSGraphAutomaticUpdateMode alloc] init];
        _autoInstallAndRebootWithoutEndUserControl.enumValue = MSGraphAutomaticUpdateModeAutoInstallAndRebootWithoutEndUserControl;
    });
    return _autoInstallAndRebootWithoutEndUserControl;
}

+ (MSGraphAutomaticUpdateMode*) UnknownEnumValue {
    static MSGraphAutomaticUpdateMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAutomaticUpdateMode alloc] init];
        _unknownValue.enumValue = MSGraphAutomaticUpdateModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAutomaticUpdateMode*) automaticUpdateModeWithEnumValue:(MSGraphAutomaticUpdateModeValue)val {

    switch(val)
    {
        case MSGraphAutomaticUpdateModeUserDefined:
            return [MSGraphAutomaticUpdateMode userDefined];
        case MSGraphAutomaticUpdateModeNotifyDownload:
            return [MSGraphAutomaticUpdateMode notifyDownload];
        case MSGraphAutomaticUpdateModeAutoInstallAtMaintenanceTime:
            return [MSGraphAutomaticUpdateMode autoInstallAtMaintenanceTime];
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootAtMaintenanceTime:
            return [MSGraphAutomaticUpdateMode autoInstallAndRebootAtMaintenanceTime];
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootAtScheduledTime:
            return [MSGraphAutomaticUpdateMode autoInstallAndRebootAtScheduledTime];
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootWithoutEndUserControl:
            return [MSGraphAutomaticUpdateMode autoInstallAndRebootWithoutEndUserControl];
        case MSGraphAutomaticUpdateModeEndOfEnum:
        default:
            return [MSGraphAutomaticUpdateMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAutomaticUpdateModeUserDefined:
            return @"userDefined";
        case MSGraphAutomaticUpdateModeNotifyDownload:
            return @"notifyDownload";
        case MSGraphAutomaticUpdateModeAutoInstallAtMaintenanceTime:
            return @"autoInstallAtMaintenanceTime";
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootAtMaintenanceTime:
            return @"autoInstallAndRebootAtMaintenanceTime";
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootAtScheduledTime:
            return @"autoInstallAndRebootAtScheduledTime";
        case MSGraphAutomaticUpdateModeAutoInstallAndRebootWithoutEndUserControl:
            return @"autoInstallAndRebootWithoutEndUserControl";
        case MSGraphAutomaticUpdateModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAutomaticUpdateModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAutomaticUpdateMode)

- (MSGraphAutomaticUpdateMode*) toMSGraphAutomaticUpdateMode{

    if([self isEqualToString:@"userDefined"])
    {
          return [MSGraphAutomaticUpdateMode userDefined];
    }
    else if([self isEqualToString:@"notifyDownload"])
    {
          return [MSGraphAutomaticUpdateMode notifyDownload];
    }
    else if([self isEqualToString:@"autoInstallAtMaintenanceTime"])
    {
          return [MSGraphAutomaticUpdateMode autoInstallAtMaintenanceTime];
    }
    else if([self isEqualToString:@"autoInstallAndRebootAtMaintenanceTime"])
    {
          return [MSGraphAutomaticUpdateMode autoInstallAndRebootAtMaintenanceTime];
    }
    else if([self isEqualToString:@"autoInstallAndRebootAtScheduledTime"])
    {
          return [MSGraphAutomaticUpdateMode autoInstallAndRebootAtScheduledTime];
    }
    else if([self isEqualToString:@"autoInstallAndRebootWithoutEndUserControl"])
    {
          return [MSGraphAutomaticUpdateMode autoInstallAndRebootWithoutEndUserControl];
    }
    else {
        return [MSGraphAutomaticUpdateMode UnknownEnumValue];
    }
}

@end
