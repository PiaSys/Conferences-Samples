// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAppLockerApplicationControlType.h"

@interface MSGraphAppLockerApplicationControlType () {
    MSGraphAppLockerApplicationControlTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAppLockerApplicationControlTypeValue enumValue;
@end

@implementation MSGraphAppLockerApplicationControlType

+ (MSGraphAppLockerApplicationControlType*) notConfigured {
    static MSGraphAppLockerApplicationControlType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphAppLockerApplicationControlType alloc] init];
        _notConfigured.enumValue = MSGraphAppLockerApplicationControlTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphAppLockerApplicationControlType*) enforceComponentsAndStoreApps {
    static MSGraphAppLockerApplicationControlType *_enforceComponentsAndStoreApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enforceComponentsAndStoreApps = [[MSGraphAppLockerApplicationControlType alloc] init];
        _enforceComponentsAndStoreApps.enumValue = MSGraphAppLockerApplicationControlTypeEnforceComponentsAndStoreApps;
    });
    return _enforceComponentsAndStoreApps;
}
+ (MSGraphAppLockerApplicationControlType*) auditComponentsAndStoreApps {
    static MSGraphAppLockerApplicationControlType *_auditComponentsAndStoreApps;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _auditComponentsAndStoreApps = [[MSGraphAppLockerApplicationControlType alloc] init];
        _auditComponentsAndStoreApps.enumValue = MSGraphAppLockerApplicationControlTypeAuditComponentsAndStoreApps;
    });
    return _auditComponentsAndStoreApps;
}
+ (MSGraphAppLockerApplicationControlType*) enforceComponentsStoreAppsAndSmartlocker {
    static MSGraphAppLockerApplicationControlType *_enforceComponentsStoreAppsAndSmartlocker;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _enforceComponentsStoreAppsAndSmartlocker = [[MSGraphAppLockerApplicationControlType alloc] init];
        _enforceComponentsStoreAppsAndSmartlocker.enumValue = MSGraphAppLockerApplicationControlTypeEnforceComponentsStoreAppsAndSmartlocker;
    });
    return _enforceComponentsStoreAppsAndSmartlocker;
}
+ (MSGraphAppLockerApplicationControlType*) auditComponentsStoreAppsAndSmartlocker {
    static MSGraphAppLockerApplicationControlType *_auditComponentsStoreAppsAndSmartlocker;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _auditComponentsStoreAppsAndSmartlocker = [[MSGraphAppLockerApplicationControlType alloc] init];
        _auditComponentsStoreAppsAndSmartlocker.enumValue = MSGraphAppLockerApplicationControlTypeAuditComponentsStoreAppsAndSmartlocker;
    });
    return _auditComponentsStoreAppsAndSmartlocker;
}

+ (MSGraphAppLockerApplicationControlType*) UnknownEnumValue {
    static MSGraphAppLockerApplicationControlType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAppLockerApplicationControlType alloc] init];
        _unknownValue.enumValue = MSGraphAppLockerApplicationControlTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAppLockerApplicationControlType*) appLockerApplicationControlTypeWithEnumValue:(MSGraphAppLockerApplicationControlTypeValue)val {

    switch(val)
    {
        case MSGraphAppLockerApplicationControlTypeNotConfigured:
            return [MSGraphAppLockerApplicationControlType notConfigured];
        case MSGraphAppLockerApplicationControlTypeEnforceComponentsAndStoreApps:
            return [MSGraphAppLockerApplicationControlType enforceComponentsAndStoreApps];
        case MSGraphAppLockerApplicationControlTypeAuditComponentsAndStoreApps:
            return [MSGraphAppLockerApplicationControlType auditComponentsAndStoreApps];
        case MSGraphAppLockerApplicationControlTypeEnforceComponentsStoreAppsAndSmartlocker:
            return [MSGraphAppLockerApplicationControlType enforceComponentsStoreAppsAndSmartlocker];
        case MSGraphAppLockerApplicationControlTypeAuditComponentsStoreAppsAndSmartlocker:
            return [MSGraphAppLockerApplicationControlType auditComponentsStoreAppsAndSmartlocker];
        case MSGraphAppLockerApplicationControlTypeEndOfEnum:
        default:
            return [MSGraphAppLockerApplicationControlType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAppLockerApplicationControlTypeNotConfigured:
            return @"notConfigured";
        case MSGraphAppLockerApplicationControlTypeEnforceComponentsAndStoreApps:
            return @"enforceComponentsAndStoreApps";
        case MSGraphAppLockerApplicationControlTypeAuditComponentsAndStoreApps:
            return @"auditComponentsAndStoreApps";
        case MSGraphAppLockerApplicationControlTypeEnforceComponentsStoreAppsAndSmartlocker:
            return @"enforceComponentsStoreAppsAndSmartlocker";
        case MSGraphAppLockerApplicationControlTypeAuditComponentsStoreAppsAndSmartlocker:
            return @"auditComponentsStoreAppsAndSmartlocker";
        case MSGraphAppLockerApplicationControlTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAppLockerApplicationControlTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAppLockerApplicationControlType)

- (MSGraphAppLockerApplicationControlType*) toMSGraphAppLockerApplicationControlType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphAppLockerApplicationControlType notConfigured];
    }
    else if([self isEqualToString:@"enforceComponentsAndStoreApps"])
    {
          return [MSGraphAppLockerApplicationControlType enforceComponentsAndStoreApps];
    }
    else if([self isEqualToString:@"auditComponentsAndStoreApps"])
    {
          return [MSGraphAppLockerApplicationControlType auditComponentsAndStoreApps];
    }
    else if([self isEqualToString:@"enforceComponentsStoreAppsAndSmartlocker"])
    {
          return [MSGraphAppLockerApplicationControlType enforceComponentsStoreAppsAndSmartlocker];
    }
    else if([self isEqualToString:@"auditComponentsStoreAppsAndSmartlocker"])
    {
          return [MSGraphAppLockerApplicationControlType auditComponentsStoreAppsAndSmartlocker];
    }
    else {
        return [MSGraphAppLockerApplicationControlType UnknownEnumValue];
    }
}

@end
