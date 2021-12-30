// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphActionState.h"

@interface MSGraphActionState () {
    MSGraphActionStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphActionStateValue enumValue;
@end

@implementation MSGraphActionState

+ (MSGraphActionState*) none {
    static MSGraphActionState *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphActionState alloc] init];
        _none.enumValue = MSGraphActionStateNone;
    });
    return _none;
}
+ (MSGraphActionState*) pending {
    static MSGraphActionState *_pending;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pending = [[MSGraphActionState alloc] init];
        _pending.enumValue = MSGraphActionStatePending;
    });
    return _pending;
}
+ (MSGraphActionState*) canceled {
    static MSGraphActionState *_canceled;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _canceled = [[MSGraphActionState alloc] init];
        _canceled.enumValue = MSGraphActionStateCanceled;
    });
    return _canceled;
}
+ (MSGraphActionState*) active {
    static MSGraphActionState *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphActionState alloc] init];
        _active.enumValue = MSGraphActionStateActive;
    });
    return _active;
}
+ (MSGraphActionState*) done {
    static MSGraphActionState *_done;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _done = [[MSGraphActionState alloc] init];
        _done.enumValue = MSGraphActionStateDone;
    });
    return _done;
}
+ (MSGraphActionState*) failed {
    static MSGraphActionState *_failed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _failed = [[MSGraphActionState alloc] init];
        _failed.enumValue = MSGraphActionStateFailed;
    });
    return _failed;
}
+ (MSGraphActionState*) notSupported {
    static MSGraphActionState *_notSupported;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notSupported = [[MSGraphActionState alloc] init];
        _notSupported.enumValue = MSGraphActionStateNotSupported;
    });
    return _notSupported;
}

+ (MSGraphActionState*) UnknownEnumValue {
    static MSGraphActionState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphActionState alloc] init];
        _unknownValue.enumValue = MSGraphActionStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphActionState*) actionStateWithEnumValue:(MSGraphActionStateValue)val {

    switch(val)
    {
        case MSGraphActionStateNone:
            return [MSGraphActionState none];
        case MSGraphActionStatePending:
            return [MSGraphActionState pending];
        case MSGraphActionStateCanceled:
            return [MSGraphActionState canceled];
        case MSGraphActionStateActive:
            return [MSGraphActionState active];
        case MSGraphActionStateDone:
            return [MSGraphActionState done];
        case MSGraphActionStateFailed:
            return [MSGraphActionState failed];
        case MSGraphActionStateNotSupported:
            return [MSGraphActionState notSupported];
        case MSGraphActionStateEndOfEnum:
        default:
            return [MSGraphActionState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphActionStateNone:
            return @"none";
        case MSGraphActionStatePending:
            return @"pending";
        case MSGraphActionStateCanceled:
            return @"canceled";
        case MSGraphActionStateActive:
            return @"active";
        case MSGraphActionStateDone:
            return @"done";
        case MSGraphActionStateFailed:
            return @"failed";
        case MSGraphActionStateNotSupported:
            return @"notSupported";
        case MSGraphActionStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphActionStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphActionState)

- (MSGraphActionState*) toMSGraphActionState{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphActionState none];
    }
    else if([self isEqualToString:@"pending"])
    {
          return [MSGraphActionState pending];
    }
    else if([self isEqualToString:@"canceled"])
    {
          return [MSGraphActionState canceled];
    }
    else if([self isEqualToString:@"active"])
    {
          return [MSGraphActionState active];
    }
    else if([self isEqualToString:@"done"])
    {
          return [MSGraphActionState done];
    }
    else if([self isEqualToString:@"failed"])
    {
          return [MSGraphActionState failed];
    }
    else if([self isEqualToString:@"notSupported"])
    {
          return [MSGraphActionState notSupported];
    }
    else {
        return [MSGraphActionState UnknownEnumValue];
    }
}

@end
