// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphDeviceManagementSubscriptionState.h"

@interface MSGraphDeviceManagementSubscriptionState () {
    MSGraphDeviceManagementSubscriptionStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphDeviceManagementSubscriptionStateValue enumValue;
@end

@implementation MSGraphDeviceManagementSubscriptionState

+ (MSGraphDeviceManagementSubscriptionState*) pending {
    static MSGraphDeviceManagementSubscriptionState *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _pending.enumValue = MSGraphDeviceManagementSubscriptionStatePending;
    });
    return _pending;
}
+ (MSGraphDeviceManagementSubscriptionState*) active {
    static MSGraphDeviceManagementSubscriptionState *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _active.enumValue = MSGraphDeviceManagementSubscriptionStateActive;
    });
    return _active;
}
+ (MSGraphDeviceManagementSubscriptionState*) warning {
    static MSGraphDeviceManagementSubscriptionState *_warning;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _warning = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _warning.enumValue = MSGraphDeviceManagementSubscriptionStateWarning;
    });
    return _warning;
}
+ (MSGraphDeviceManagementSubscriptionState*) disabled {
    static MSGraphDeviceManagementSubscriptionState *_disabled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _disabled = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _disabled.enumValue = MSGraphDeviceManagementSubscriptionStateDisabled;
    });
    return _disabled;
}
+ (MSGraphDeviceManagementSubscriptionState*) deleted {
    static MSGraphDeviceManagementSubscriptionState *_deleted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deleted = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _deleted.enumValue = MSGraphDeviceManagementSubscriptionStateDeleted;
    });
    return _deleted;
}
+ (MSGraphDeviceManagementSubscriptionState*) blocked {
    static MSGraphDeviceManagementSubscriptionState *_blocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _blocked = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _blocked.enumValue = MSGraphDeviceManagementSubscriptionStateBlocked;
    });
    return _blocked;
}
+ (MSGraphDeviceManagementSubscriptionState*) lockedOut {
    static MSGraphDeviceManagementSubscriptionState *_lockedOut;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lockedOut = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _lockedOut.enumValue = MSGraphDeviceManagementSubscriptionStateLockedOut;
    });
    return _lockedOut;
}

+ (MSGraphDeviceManagementSubscriptionState*) UnknownEnumValue {
    static MSGraphDeviceManagementSubscriptionState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphDeviceManagementSubscriptionState alloc] init];
        _unknownValue.enumValue = MSGraphDeviceManagementSubscriptionStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphDeviceManagementSubscriptionState*) deviceManagementSubscriptionStateWithEnumValue:(MSGraphDeviceManagementSubscriptionStateValue)val {

    switch(val)
    {
        case MSGraphDeviceManagementSubscriptionStatePending:
            return [MSGraphDeviceManagementSubscriptionState pending];
        case MSGraphDeviceManagementSubscriptionStateActive:
            return [MSGraphDeviceManagementSubscriptionState active];
        case MSGraphDeviceManagementSubscriptionStateWarning:
            return [MSGraphDeviceManagementSubscriptionState warning];
        case MSGraphDeviceManagementSubscriptionStateDisabled:
            return [MSGraphDeviceManagementSubscriptionState disabled];
        case MSGraphDeviceManagementSubscriptionStateDeleted:
            return [MSGraphDeviceManagementSubscriptionState deleted];
        case MSGraphDeviceManagementSubscriptionStateBlocked:
            return [MSGraphDeviceManagementSubscriptionState blocked];
        case MSGraphDeviceManagementSubscriptionStateLockedOut:
            return [MSGraphDeviceManagementSubscriptionState lockedOut];
        case MSGraphDeviceManagementSubscriptionStateEndOfEnum:
        default:
            return [MSGraphDeviceManagementSubscriptionState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphDeviceManagementSubscriptionStatePending:
            return @"pending";
        case MSGraphDeviceManagementSubscriptionStateActive:
            return @"active";
        case MSGraphDeviceManagementSubscriptionStateWarning:
            return @"warning";
        case MSGraphDeviceManagementSubscriptionStateDisabled:
            return @"disabled";
        case MSGraphDeviceManagementSubscriptionStateDeleted:
            return @"deleted";
        case MSGraphDeviceManagementSubscriptionStateBlocked:
            return @"blocked";
        case MSGraphDeviceManagementSubscriptionStateLockedOut:
            return @"lockedOut";
        case MSGraphDeviceManagementSubscriptionStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphDeviceManagementSubscriptionStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphDeviceManagementSubscriptionState)

- (MSGraphDeviceManagementSubscriptionState*) toMSGraphDeviceManagementSubscriptionState{

    if([self isEqualToString:@"pending"])
    {
          return [MSGraphDeviceManagementSubscriptionState pending];
    }
    else if([self isEqualToString:@"active"])
    {
          return [MSGraphDeviceManagementSubscriptionState active];
    }
    else if([self isEqualToString:@"warning"])
    {
          return [MSGraphDeviceManagementSubscriptionState warning];
    }
    else if([self isEqualToString:@"disabled"])
    {
          return [MSGraphDeviceManagementSubscriptionState disabled];
    }
    else if([self isEqualToString:@"deleted"])
    {
          return [MSGraphDeviceManagementSubscriptionState deleted];
    }
    else if([self isEqualToString:@"blocked"])
    {
          return [MSGraphDeviceManagementSubscriptionState blocked];
    }
    else if([self isEqualToString:@"lockedOut"])
    {
          return [MSGraphDeviceManagementSubscriptionState lockedOut];
    }
    else {
        return [MSGraphDeviceManagementSubscriptionState UnknownEnumValue];
    }
}

@end
