// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedAppDataEncryptionType.h"

@interface MSGraphManagedAppDataEncryptionType () {
    MSGraphManagedAppDataEncryptionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedAppDataEncryptionTypeValue enumValue;
@end

@implementation MSGraphManagedAppDataEncryptionType

+ (MSGraphManagedAppDataEncryptionType*) useDeviceSettings {
    static MSGraphManagedAppDataEncryptionType *_useDeviceSettings;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _useDeviceSettings = [[MSGraphManagedAppDataEncryptionType alloc] init];
        _useDeviceSettings.enumValue = MSGraphManagedAppDataEncryptionTypeUseDeviceSettings;
    });
    return _useDeviceSettings;
}
+ (MSGraphManagedAppDataEncryptionType*) afterDeviceRestart {
    static MSGraphManagedAppDataEncryptionType *_afterDeviceRestart;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _afterDeviceRestart = [[MSGraphManagedAppDataEncryptionType alloc] init];
        _afterDeviceRestart.enumValue = MSGraphManagedAppDataEncryptionTypeAfterDeviceRestart;
    });
    return _afterDeviceRestart;
}
+ (MSGraphManagedAppDataEncryptionType*) whenDeviceLockedExceptOpenFiles {
    static MSGraphManagedAppDataEncryptionType *_whenDeviceLockedExceptOpenFiles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _whenDeviceLockedExceptOpenFiles = [[MSGraphManagedAppDataEncryptionType alloc] init];
        _whenDeviceLockedExceptOpenFiles.enumValue = MSGraphManagedAppDataEncryptionTypeWhenDeviceLockedExceptOpenFiles;
    });
    return _whenDeviceLockedExceptOpenFiles;
}
+ (MSGraphManagedAppDataEncryptionType*) whenDeviceLocked {
    static MSGraphManagedAppDataEncryptionType *_whenDeviceLocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _whenDeviceLocked = [[MSGraphManagedAppDataEncryptionType alloc] init];
        _whenDeviceLocked.enumValue = MSGraphManagedAppDataEncryptionTypeWhenDeviceLocked;
    });
    return _whenDeviceLocked;
}

+ (MSGraphManagedAppDataEncryptionType*) UnknownEnumValue {
    static MSGraphManagedAppDataEncryptionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedAppDataEncryptionType alloc] init];
        _unknownValue.enumValue = MSGraphManagedAppDataEncryptionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedAppDataEncryptionType*) managedAppDataEncryptionTypeWithEnumValue:(MSGraphManagedAppDataEncryptionTypeValue)val {

    switch(val)
    {
        case MSGraphManagedAppDataEncryptionTypeUseDeviceSettings:
            return [MSGraphManagedAppDataEncryptionType useDeviceSettings];
        case MSGraphManagedAppDataEncryptionTypeAfterDeviceRestart:
            return [MSGraphManagedAppDataEncryptionType afterDeviceRestart];
        case MSGraphManagedAppDataEncryptionTypeWhenDeviceLockedExceptOpenFiles:
            return [MSGraphManagedAppDataEncryptionType whenDeviceLockedExceptOpenFiles];
        case MSGraphManagedAppDataEncryptionTypeWhenDeviceLocked:
            return [MSGraphManagedAppDataEncryptionType whenDeviceLocked];
        case MSGraphManagedAppDataEncryptionTypeEndOfEnum:
        default:
            return [MSGraphManagedAppDataEncryptionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedAppDataEncryptionTypeUseDeviceSettings:
            return @"useDeviceSettings";
        case MSGraphManagedAppDataEncryptionTypeAfterDeviceRestart:
            return @"afterDeviceRestart";
        case MSGraphManagedAppDataEncryptionTypeWhenDeviceLockedExceptOpenFiles:
            return @"whenDeviceLockedExceptOpenFiles";
        case MSGraphManagedAppDataEncryptionTypeWhenDeviceLocked:
            return @"whenDeviceLocked";
        case MSGraphManagedAppDataEncryptionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedAppDataEncryptionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedAppDataEncryptionType)

- (MSGraphManagedAppDataEncryptionType*) toMSGraphManagedAppDataEncryptionType{

    if([self isEqualToString:@"useDeviceSettings"])
    {
          return [MSGraphManagedAppDataEncryptionType useDeviceSettings];
    }
    else if([self isEqualToString:@"afterDeviceRestart"])
    {
          return [MSGraphManagedAppDataEncryptionType afterDeviceRestart];
    }
    else if([self isEqualToString:@"whenDeviceLockedExceptOpenFiles"])
    {
          return [MSGraphManagedAppDataEncryptionType whenDeviceLockedExceptOpenFiles];
    }
    else if([self isEqualToString:@"whenDeviceLocked"])
    {
          return [MSGraphManagedAppDataEncryptionType whenDeviceLocked];
    }
    else {
        return [MSGraphManagedAppDataEncryptionType UnknownEnumValue];
    }
}

@end
