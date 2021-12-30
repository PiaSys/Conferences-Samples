// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphMediaState.h"

@interface MSGraphMediaState () {
    MSGraphMediaStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphMediaStateValue enumValue;
@end

@implementation MSGraphMediaState

+ (MSGraphMediaState*) active {
    static MSGraphMediaState *_active;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _active = [[MSGraphMediaState alloc] init];
        _active.enumValue = MSGraphMediaStateActive;
    });
    return _active;
}
+ (MSGraphMediaState*) inactive {
    static MSGraphMediaState *_inactive;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inactive = [[MSGraphMediaState alloc] init];
        _inactive.enumValue = MSGraphMediaStateInactive;
    });
    return _inactive;
}
+ (MSGraphMediaState*) unknownFutureValue {
    static MSGraphMediaState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphMediaState alloc] init];
        _unknownFutureValue.enumValue = MSGraphMediaStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphMediaState*) UnknownEnumValue {
    static MSGraphMediaState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphMediaState alloc] init];
        _unknownValue.enumValue = MSGraphMediaStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphMediaState*) mediaStateWithEnumValue:(MSGraphMediaStateValue)val {

    switch(val)
    {
        case MSGraphMediaStateActive:
            return [MSGraphMediaState active];
        case MSGraphMediaStateInactive:
            return [MSGraphMediaState inactive];
        case MSGraphMediaStateUnknownFutureValue:
            return [MSGraphMediaState unknownFutureValue];
        case MSGraphMediaStateEndOfEnum:
        default:
            return [MSGraphMediaState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphMediaStateActive:
            return @"active";
        case MSGraphMediaStateInactive:
            return @"inactive";
        case MSGraphMediaStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphMediaStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphMediaStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphMediaState)

- (MSGraphMediaState*) toMSGraphMediaState{

    if([self isEqualToString:@"active"])
    {
          return [MSGraphMediaState active];
    }
    else if([self isEqualToString:@"inactive"])
    {
          return [MSGraphMediaState inactive];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphMediaState unknownFutureValue];
    }
    else {
        return [MSGraphMediaState UnknownEnumValue];
    }
}

@end
