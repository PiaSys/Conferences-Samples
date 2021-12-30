// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallState.h"

@interface MSGraphCallState () {
    MSGraphCallStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallStateValue enumValue;
@end

@implementation MSGraphCallState

+ (MSGraphCallState*) incoming {
    static MSGraphCallState *_incoming;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _incoming = [[MSGraphCallState alloc] init];
        _incoming.enumValue = MSGraphCallStateIncoming;
    });
    return _incoming;
}
+ (MSGraphCallState*) establishing {
    static MSGraphCallState *_establishing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _establishing = [[MSGraphCallState alloc] init];
        _establishing.enumValue = MSGraphCallStateEstablishing;
    });
    return _establishing;
}
+ (MSGraphCallState*) established {
    static MSGraphCallState *_established;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _established = [[MSGraphCallState alloc] init];
        _established.enumValue = MSGraphCallStateEstablished;
    });
    return _established;
}
+ (MSGraphCallState*) hold {
    static MSGraphCallState *_hold;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hold = [[MSGraphCallState alloc] init];
        _hold.enumValue = MSGraphCallStateHold;
    });
    return _hold;
}
+ (MSGraphCallState*) transferring {
    static MSGraphCallState *_transferring;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _transferring = [[MSGraphCallState alloc] init];
        _transferring.enumValue = MSGraphCallStateTransferring;
    });
    return _transferring;
}
+ (MSGraphCallState*) transferAccepted {
    static MSGraphCallState *_transferAccepted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _transferAccepted = [[MSGraphCallState alloc] init];
        _transferAccepted.enumValue = MSGraphCallStateTransferAccepted;
    });
    return _transferAccepted;
}
+ (MSGraphCallState*) redirecting {
    static MSGraphCallState *_redirecting;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _redirecting = [[MSGraphCallState alloc] init];
        _redirecting.enumValue = MSGraphCallStateRedirecting;
    });
    return _redirecting;
}
+ (MSGraphCallState*) terminating {
    static MSGraphCallState *_terminating;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _terminating = [[MSGraphCallState alloc] init];
        _terminating.enumValue = MSGraphCallStateTerminating;
    });
    return _terminating;
}
+ (MSGraphCallState*) terminated {
    static MSGraphCallState *_terminated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _terminated = [[MSGraphCallState alloc] init];
        _terminated.enumValue = MSGraphCallStateTerminated;
    });
    return _terminated;
}
+ (MSGraphCallState*) unknownFutureValue {
    static MSGraphCallState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallState alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallState*) UnknownEnumValue {
    static MSGraphCallState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallState alloc] init];
        _unknownValue.enumValue = MSGraphCallStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallState*) callStateWithEnumValue:(MSGraphCallStateValue)val {

    switch(val)
    {
        case MSGraphCallStateIncoming:
            return [MSGraphCallState incoming];
        case MSGraphCallStateEstablishing:
            return [MSGraphCallState establishing];
        case MSGraphCallStateEstablished:
            return [MSGraphCallState established];
        case MSGraphCallStateHold:
            return [MSGraphCallState hold];
        case MSGraphCallStateTransferring:
            return [MSGraphCallState transferring];
        case MSGraphCallStateTransferAccepted:
            return [MSGraphCallState transferAccepted];
        case MSGraphCallStateRedirecting:
            return [MSGraphCallState redirecting];
        case MSGraphCallStateTerminating:
            return [MSGraphCallState terminating];
        case MSGraphCallStateTerminated:
            return [MSGraphCallState terminated];
        case MSGraphCallStateUnknownFutureValue:
            return [MSGraphCallState unknownFutureValue];
        case MSGraphCallStateEndOfEnum:
        default:
            return [MSGraphCallState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallStateIncoming:
            return @"incoming";
        case MSGraphCallStateEstablishing:
            return @"establishing";
        case MSGraphCallStateEstablished:
            return @"established";
        case MSGraphCallStateHold:
            return @"hold";
        case MSGraphCallStateTransferring:
            return @"transferring";
        case MSGraphCallStateTransferAccepted:
            return @"transferAccepted";
        case MSGraphCallStateRedirecting:
            return @"redirecting";
        case MSGraphCallStateTerminating:
            return @"terminating";
        case MSGraphCallStateTerminated:
            return @"terminated";
        case MSGraphCallStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallState)

- (MSGraphCallState*) toMSGraphCallState{

    if([self isEqualToString:@"incoming"])
    {
          return [MSGraphCallState incoming];
    }
    else if([self isEqualToString:@"establishing"])
    {
          return [MSGraphCallState establishing];
    }
    else if([self isEqualToString:@"established"])
    {
          return [MSGraphCallState established];
    }
    else if([self isEqualToString:@"hold"])
    {
          return [MSGraphCallState hold];
    }
    else if([self isEqualToString:@"transferring"])
    {
          return [MSGraphCallState transferring];
    }
    else if([self isEqualToString:@"transferAccepted"])
    {
          return [MSGraphCallState transferAccepted];
    }
    else if([self isEqualToString:@"redirecting"])
    {
          return [MSGraphCallState redirecting];
    }
    else if([self isEqualToString:@"terminating"])
    {
          return [MSGraphCallState terminating];
    }
    else if([self isEqualToString:@"terminated"])
    {
          return [MSGraphCallState terminated];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallState unknownFutureValue];
    }
    else {
        return [MSGraphCallState UnknownEnumValue];
    }
}

@end
