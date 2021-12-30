// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRegistryHive.h"

@interface MSGraphRegistryHive () {
    MSGraphRegistryHiveValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRegistryHiveValue enumValue;
@end

@implementation MSGraphRegistryHive

+ (MSGraphRegistryHive*) unknown {
    static MSGraphRegistryHive *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphRegistryHive alloc] init];
        _unknown.enumValue = MSGraphRegistryHiveUnknown;
    });
    return _unknown;
}
+ (MSGraphRegistryHive*) currentConfig {
    static MSGraphRegistryHive *_currentConfig;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _currentConfig = [[MSGraphRegistryHive alloc] init];
        _currentConfig.enumValue = MSGraphRegistryHiveCurrentConfig;
    });
    return _currentConfig;
}
+ (MSGraphRegistryHive*) currentUser {
    static MSGraphRegistryHive *_currentUser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _currentUser = [[MSGraphRegistryHive alloc] init];
        _currentUser.enumValue = MSGraphRegistryHiveCurrentUser;
    });
    return _currentUser;
}
+ (MSGraphRegistryHive*) localMachineSam {
    static MSGraphRegistryHive *_localMachineSam;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localMachineSam = [[MSGraphRegistryHive alloc] init];
        _localMachineSam.enumValue = MSGraphRegistryHiveLocalMachineSam;
    });
    return _localMachineSam;
}
+ (MSGraphRegistryHive*) localMachineSecurity {
    static MSGraphRegistryHive *_localMachineSecurity;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localMachineSecurity = [[MSGraphRegistryHive alloc] init];
        _localMachineSecurity.enumValue = MSGraphRegistryHiveLocalMachineSecurity;
    });
    return _localMachineSecurity;
}
+ (MSGraphRegistryHive*) localMachineSoftware {
    static MSGraphRegistryHive *_localMachineSoftware;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localMachineSoftware = [[MSGraphRegistryHive alloc] init];
        _localMachineSoftware.enumValue = MSGraphRegistryHiveLocalMachineSoftware;
    });
    return _localMachineSoftware;
}
+ (MSGraphRegistryHive*) localMachineSystem {
    static MSGraphRegistryHive *_localMachineSystem;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _localMachineSystem = [[MSGraphRegistryHive alloc] init];
        _localMachineSystem.enumValue = MSGraphRegistryHiveLocalMachineSystem;
    });
    return _localMachineSystem;
}
+ (MSGraphRegistryHive*) usersDefault {
    static MSGraphRegistryHive *_usersDefault;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _usersDefault = [[MSGraphRegistryHive alloc] init];
        _usersDefault.enumValue = MSGraphRegistryHiveUsersDefault;
    });
    return _usersDefault;
}
+ (MSGraphRegistryHive*) unknownFutureValue {
    static MSGraphRegistryHive *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphRegistryHive alloc] init];
        _unknownFutureValue.enumValue = MSGraphRegistryHiveUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphRegistryHive*) UnknownEnumValue {
    static MSGraphRegistryHive *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRegistryHive alloc] init];
        _unknownValue.enumValue = MSGraphRegistryHiveEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRegistryHive*) registryHiveWithEnumValue:(MSGraphRegistryHiveValue)val {

    switch(val)
    {
        case MSGraphRegistryHiveUnknown:
            return [MSGraphRegistryHive unknown];
        case MSGraphRegistryHiveCurrentConfig:
            return [MSGraphRegistryHive currentConfig];
        case MSGraphRegistryHiveCurrentUser:
            return [MSGraphRegistryHive currentUser];
        case MSGraphRegistryHiveLocalMachineSam:
            return [MSGraphRegistryHive localMachineSam];
        case MSGraphRegistryHiveLocalMachineSecurity:
            return [MSGraphRegistryHive localMachineSecurity];
        case MSGraphRegistryHiveLocalMachineSoftware:
            return [MSGraphRegistryHive localMachineSoftware];
        case MSGraphRegistryHiveLocalMachineSystem:
            return [MSGraphRegistryHive localMachineSystem];
        case MSGraphRegistryHiveUsersDefault:
            return [MSGraphRegistryHive usersDefault];
        case MSGraphRegistryHiveUnknownFutureValue:
            return [MSGraphRegistryHive unknownFutureValue];
        case MSGraphRegistryHiveEndOfEnum:
        default:
            return [MSGraphRegistryHive UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRegistryHiveUnknown:
            return @"unknown";
        case MSGraphRegistryHiveCurrentConfig:
            return @"currentConfig";
        case MSGraphRegistryHiveCurrentUser:
            return @"currentUser";
        case MSGraphRegistryHiveLocalMachineSam:
            return @"localMachineSam";
        case MSGraphRegistryHiveLocalMachineSecurity:
            return @"localMachineSecurity";
        case MSGraphRegistryHiveLocalMachineSoftware:
            return @"localMachineSoftware";
        case MSGraphRegistryHiveLocalMachineSystem:
            return @"localMachineSystem";
        case MSGraphRegistryHiveUsersDefault:
            return @"usersDefault";
        case MSGraphRegistryHiveUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphRegistryHiveEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRegistryHiveValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRegistryHive)

- (MSGraphRegistryHive*) toMSGraphRegistryHive{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphRegistryHive unknown];
    }
    else if([self isEqualToString:@"currentConfig"])
    {
          return [MSGraphRegistryHive currentConfig];
    }
    else if([self isEqualToString:@"currentUser"])
    {
          return [MSGraphRegistryHive currentUser];
    }
    else if([self isEqualToString:@"localMachineSam"])
    {
          return [MSGraphRegistryHive localMachineSam];
    }
    else if([self isEqualToString:@"localMachineSecurity"])
    {
          return [MSGraphRegistryHive localMachineSecurity];
    }
    else if([self isEqualToString:@"localMachineSoftware"])
    {
          return [MSGraphRegistryHive localMachineSoftware];
    }
    else if([self isEqualToString:@"localMachineSystem"])
    {
          return [MSGraphRegistryHive localMachineSystem];
    }
    else if([self isEqualToString:@"usersDefault"])
    {
          return [MSGraphRegistryHive usersDefault];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphRegistryHive unknownFutureValue];
    }
    else {
        return [MSGraphRegistryHive UnknownEnumValue];
    }
}

@end
