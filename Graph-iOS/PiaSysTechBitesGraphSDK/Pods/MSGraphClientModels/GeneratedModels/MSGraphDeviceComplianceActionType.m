// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceComplianceActionType.h"

@interface MSGraphDeviceComplianceActionType () {
    MSGraphDeviceComplianceActionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceComplianceActionTypeValue enumValue;
@end

@implementation MSGraphDeviceComplianceActionType

+ (MSGraphDeviceComplianceActionType*) noAction {
    static MSGraphDeviceComplianceActionType *_noAction;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noAction = [[MSGraphDeviceComplianceActionType alloc] init];
        _noAction.enumValue = MSGraphDeviceComplianceActionTypeNoAction;
    });
    return _noAction;
}
+ (MSGraphDeviceComplianceActionType*) notification {
    static MSGraphDeviceComplianceActionType *_notification;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notification = [[MSGraphDeviceComplianceActionType alloc] init];
        _notification.enumValue = MSGraphDeviceComplianceActionTypeNotification;
    });
    return _notification;
}
+ (MSGraphDeviceComplianceActionType*) block {
    static MSGraphDeviceComplianceActionType *_block;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _block = [[MSGraphDeviceComplianceActionType alloc] init];
        _block.enumValue = MSGraphDeviceComplianceActionTypeBlock;
    });
    return _block;
}
+ (MSGraphDeviceComplianceActionType*) retire {
    static MSGraphDeviceComplianceActionType *_retire;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _retire = [[MSGraphDeviceComplianceActionType alloc] init];
        _retire.enumValue = MSGraphDeviceComplianceActionTypeRetire;
    });
    return _retire;
}
+ (MSGraphDeviceComplianceActionType*) wipe {
    static MSGraphDeviceComplianceActionType *_wipe;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wipe = [[MSGraphDeviceComplianceActionType alloc] init];
        _wipe.enumValue = MSGraphDeviceComplianceActionTypeWipe;
    });
    return _wipe;
}
+ (MSGraphDeviceComplianceActionType*) removeResourceAccessProfiles {
    static MSGraphDeviceComplianceActionType *_removeResourceAccessProfiles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _removeResourceAccessProfiles = [[MSGraphDeviceComplianceActionType alloc] init];
        _removeResourceAccessProfiles.enumValue = MSGraphDeviceComplianceActionTypeRemoveResourceAccessProfiles;
    });
    return _removeResourceAccessProfiles;
}
+ (MSGraphDeviceComplianceActionType*) pushNotification {
    static MSGraphDeviceComplianceActionType *_pushNotification;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pushNotification = [[MSGraphDeviceComplianceActionType alloc] init];
        _pushNotification.enumValue = MSGraphDeviceComplianceActionTypePushNotification;
    });
    return _pushNotification;
}

+ (MSGraphDeviceComplianceActionType*) UnknownEnumValue {
    static MSGraphDeviceComplianceActionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceComplianceActionType alloc] init];
        _unknownValue.enumValue = MSGraphDeviceComplianceActionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceComplianceActionType*) deviceComplianceActionTypeWithEnumValue:(MSGraphDeviceComplianceActionTypeValue)val {

    switch(val)
    {
        case MSGraphDeviceComplianceActionTypeNoAction:
            return [MSGraphDeviceComplianceActionType noAction];
        case MSGraphDeviceComplianceActionTypeNotification:
            return [MSGraphDeviceComplianceActionType notification];
        case MSGraphDeviceComplianceActionTypeBlock:
            return [MSGraphDeviceComplianceActionType block];
        case MSGraphDeviceComplianceActionTypeRetire:
            return [MSGraphDeviceComplianceActionType retire];
        case MSGraphDeviceComplianceActionTypeWipe:
            return [MSGraphDeviceComplianceActionType wipe];
        case MSGraphDeviceComplianceActionTypeRemoveResourceAccessProfiles:
            return [MSGraphDeviceComplianceActionType removeResourceAccessProfiles];
        case MSGraphDeviceComplianceActionTypePushNotification:
            return [MSGraphDeviceComplianceActionType pushNotification];
        case MSGraphDeviceComplianceActionTypeEndOfEnum:
        default:
            return [MSGraphDeviceComplianceActionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceComplianceActionTypeNoAction:
            return @"noAction";
        case MSGraphDeviceComplianceActionTypeNotification:
            return @"notification";
        case MSGraphDeviceComplianceActionTypeBlock:
            return @"block";
        case MSGraphDeviceComplianceActionTypeRetire:
            return @"retire";
        case MSGraphDeviceComplianceActionTypeWipe:
            return @"wipe";
        case MSGraphDeviceComplianceActionTypeRemoveResourceAccessProfiles:
            return @"removeResourceAccessProfiles";
        case MSGraphDeviceComplianceActionTypePushNotification:
            return @"pushNotification";
        case MSGraphDeviceComplianceActionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceComplianceActionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceComplianceActionType)

- (MSGraphDeviceComplianceActionType*) toMSGraphDeviceComplianceActionType{

    if([self isEqualToString:@"noAction"])
    {
          return [MSGraphDeviceComplianceActionType noAction];
    }
    else if([self isEqualToString:@"notification"])
    {
          return [MSGraphDeviceComplianceActionType notification];
    }
    else if([self isEqualToString:@"block"])
    {
          return [MSGraphDeviceComplianceActionType block];
    }
    else if([self isEqualToString:@"retire"])
    {
          return [MSGraphDeviceComplianceActionType retire];
    }
    else if([self isEqualToString:@"wipe"])
    {
          return [MSGraphDeviceComplianceActionType wipe];
    }
    else if([self isEqualToString:@"removeResourceAccessProfiles"])
    {
          return [MSGraphDeviceComplianceActionType removeResourceAccessProfiles];
    }
    else if([self isEqualToString:@"pushNotification"])
    {
          return [MSGraphDeviceComplianceActionType pushNotification];
    }
    else {
        return [MSGraphDeviceComplianceActionType UnknownEnumValue];
    }
}

@end
