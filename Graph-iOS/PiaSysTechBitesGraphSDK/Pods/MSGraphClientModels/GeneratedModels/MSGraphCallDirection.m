// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallDirection.h"

@interface MSGraphCallDirection () {
    MSGraphCallDirectionValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallDirectionValue enumValue;
@end

@implementation MSGraphCallDirection

+ (MSGraphCallDirection*) incoming {
    static MSGraphCallDirection *_incoming;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _incoming = [[MSGraphCallDirection alloc] init];
        _incoming.enumValue = MSGraphCallDirectionIncoming;
    });
    return _incoming;
}
+ (MSGraphCallDirection*) outgoing {
    static MSGraphCallDirection *_outgoing;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _outgoing = [[MSGraphCallDirection alloc] init];
        _outgoing.enumValue = MSGraphCallDirectionOutgoing;
    });
    return _outgoing;
}

+ (MSGraphCallDirection*) UnknownEnumValue {
    static MSGraphCallDirection *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallDirection alloc] init];
        _unknownValue.enumValue = MSGraphCallDirectionEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallDirection*) callDirectionWithEnumValue:(MSGraphCallDirectionValue)val {

    switch(val)
    {
        case MSGraphCallDirectionIncoming:
            return [MSGraphCallDirection incoming];
        case MSGraphCallDirectionOutgoing:
            return [MSGraphCallDirection outgoing];
        case MSGraphCallDirectionEndOfEnum:
        default:
            return [MSGraphCallDirection UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallDirectionIncoming:
            return @"incoming";
        case MSGraphCallDirectionOutgoing:
            return @"outgoing";
        case MSGraphCallDirectionEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallDirectionValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallDirection)

- (MSGraphCallDirection*) toMSGraphCallDirection{

    if([self isEqualToString:@"incoming"])
    {
          return [MSGraphCallDirection incoming];
    }
    else if([self isEqualToString:@"outgoing"])
    {
          return [MSGraphCallDirection outgoing];
    }
    else {
        return [MSGraphCallDirection UnknownEnumValue];
    }
}

@end
