// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConnectionDirection.h"

@interface MSGraphConnectionDirection () {
    MSGraphConnectionDirectionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConnectionDirectionValue enumValue;
@end

@implementation MSGraphConnectionDirection

+ (MSGraphConnectionDirection*) unknown {
    static MSGraphConnectionDirection *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphConnectionDirection alloc] init];
        _unknown.enumValue = MSGraphConnectionDirectionUnknown;
    });
    return _unknown;
}
+ (MSGraphConnectionDirection*) inbound {
    static MSGraphConnectionDirection *_inbound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _inbound = [[MSGraphConnectionDirection alloc] init];
        _inbound.enumValue = MSGraphConnectionDirectionInbound;
    });
    return _inbound;
}
+ (MSGraphConnectionDirection*) outbound {
    static MSGraphConnectionDirection *_outbound;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outbound = [[MSGraphConnectionDirection alloc] init];
        _outbound.enumValue = MSGraphConnectionDirectionOutbound;
    });
    return _outbound;
}
+ (MSGraphConnectionDirection*) unknownFutureValue {
    static MSGraphConnectionDirection *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConnectionDirection alloc] init];
        _unknownFutureValue.enumValue = MSGraphConnectionDirectionUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConnectionDirection*) UnknownEnumValue {
    static MSGraphConnectionDirection *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConnectionDirection alloc] init];
        _unknownValue.enumValue = MSGraphConnectionDirectionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConnectionDirection*) connectionDirectionWithEnumValue:(MSGraphConnectionDirectionValue)val {

    switch(val)
    {
        case MSGraphConnectionDirectionUnknown:
            return [MSGraphConnectionDirection unknown];
        case MSGraphConnectionDirectionInbound:
            return [MSGraphConnectionDirection inbound];
        case MSGraphConnectionDirectionOutbound:
            return [MSGraphConnectionDirection outbound];
        case MSGraphConnectionDirectionUnknownFutureValue:
            return [MSGraphConnectionDirection unknownFutureValue];
        case MSGraphConnectionDirectionEndOfEnum:
        default:
            return [MSGraphConnectionDirection UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConnectionDirectionUnknown:
            return @"unknown";
        case MSGraphConnectionDirectionInbound:
            return @"inbound";
        case MSGraphConnectionDirectionOutbound:
            return @"outbound";
        case MSGraphConnectionDirectionUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConnectionDirectionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConnectionDirectionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConnectionDirection)

- (MSGraphConnectionDirection*) toMSGraphConnectionDirection{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphConnectionDirection unknown];
    }
    else if([self isEqualToString:@"inbound"])
    {
          return [MSGraphConnectionDirection inbound];
    }
    else if([self isEqualToString:@"outbound"])
    {
          return [MSGraphConnectionDirection outbound];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConnectionDirection unknownFutureValue];
    }
    else {
        return [MSGraphConnectionDirection UnknownEnumValue];
    }
}

@end
