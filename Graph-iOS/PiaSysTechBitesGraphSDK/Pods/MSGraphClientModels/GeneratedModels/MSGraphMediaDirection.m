// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMediaDirection.h"

@interface MSGraphMediaDirection () {
    MSGraphMediaDirectionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMediaDirectionValue enumValue;
@end

@implementation MSGraphMediaDirection

+ (MSGraphMediaDirection*) inactive {
    static MSGraphMediaDirection *_inactive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inactive = [[MSGraphMediaDirection alloc] init];
        _inactive.enumValue = MSGraphMediaDirectionInactive;
    });
    return _inactive;
}
+ (MSGraphMediaDirection*) sendOnly {
    static MSGraphMediaDirection *_sendOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendOnly = [[MSGraphMediaDirection alloc] init];
        _sendOnly.enumValue = MSGraphMediaDirectionSendOnly;
    });
    return _sendOnly;
}
+ (MSGraphMediaDirection*) receiveOnly {
    static MSGraphMediaDirection *_receiveOnly;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _receiveOnly = [[MSGraphMediaDirection alloc] init];
        _receiveOnly.enumValue = MSGraphMediaDirectionReceiveOnly;
    });
    return _receiveOnly;
}
+ (MSGraphMediaDirection*) sendReceive {
    static MSGraphMediaDirection *_sendReceive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sendReceive = [[MSGraphMediaDirection alloc] init];
        _sendReceive.enumValue = MSGraphMediaDirectionSendReceive;
    });
    return _sendReceive;
}

+ (MSGraphMediaDirection*) UnknownEnumValue {
    static MSGraphMediaDirection *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMediaDirection alloc] init];
        _unknownValue.enumValue = MSGraphMediaDirectionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMediaDirection*) mediaDirectionWithEnumValue:(MSGraphMediaDirectionValue)val {

    switch(val)
    {
        case MSGraphMediaDirectionInactive:
            return [MSGraphMediaDirection inactive];
        case MSGraphMediaDirectionSendOnly:
            return [MSGraphMediaDirection sendOnly];
        case MSGraphMediaDirectionReceiveOnly:
            return [MSGraphMediaDirection receiveOnly];
        case MSGraphMediaDirectionSendReceive:
            return [MSGraphMediaDirection sendReceive];
        case MSGraphMediaDirectionEndOfEnum:
        default:
            return [MSGraphMediaDirection UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMediaDirectionInactive:
            return @"inactive";
        case MSGraphMediaDirectionSendOnly:
            return @"sendOnly";
        case MSGraphMediaDirectionReceiveOnly:
            return @"receiveOnly";
        case MSGraphMediaDirectionSendReceive:
            return @"sendReceive";
        case MSGraphMediaDirectionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMediaDirectionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMediaDirection)

- (MSGraphMediaDirection*) toMSGraphMediaDirection{

    if([self isEqualToString:@"inactive"])
    {
          return [MSGraphMediaDirection inactive];
    }
    else if([self isEqualToString:@"sendOnly"])
    {
          return [MSGraphMediaDirection sendOnly];
    }
    else if([self isEqualToString:@"receiveOnly"])
    {
          return [MSGraphMediaDirection receiveOnly];
    }
    else if([self isEqualToString:@"sendReceive"])
    {
          return [MSGraphMediaDirection sendReceive];
    }
    else {
        return [MSGraphMediaDirection UnknownEnumValue];
    }
}

@end
