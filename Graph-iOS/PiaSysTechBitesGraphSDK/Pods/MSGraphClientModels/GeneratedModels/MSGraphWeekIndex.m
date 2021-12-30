// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWeekIndex.h"

@interface MSGraphWeekIndex () {
    MSGraphWeekIndexValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWeekIndexValue enumValue;
@end

@implementation MSGraphWeekIndex

+ (MSGraphWeekIndex*) first {
    static MSGraphWeekIndex *_first;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _first = [[MSGraphWeekIndex alloc] init];
        _first.enumValue = MSGraphWeekIndexFirst;
    });
    return _first;
}
+ (MSGraphWeekIndex*) second {
    static MSGraphWeekIndex *_second;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _second = [[MSGraphWeekIndex alloc] init];
        _second.enumValue = MSGraphWeekIndexSecond;
    });
    return _second;
}
+ (MSGraphWeekIndex*) third {
    static MSGraphWeekIndex *_third;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _third = [[MSGraphWeekIndex alloc] init];
        _third.enumValue = MSGraphWeekIndexThird;
    });
    return _third;
}
+ (MSGraphWeekIndex*) fourth {
    static MSGraphWeekIndex *_fourth;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fourth = [[MSGraphWeekIndex alloc] init];
        _fourth.enumValue = MSGraphWeekIndexFourth;
    });
    return _fourth;
}
+ (MSGraphWeekIndex*) last {
    static MSGraphWeekIndex *_last;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _last = [[MSGraphWeekIndex alloc] init];
        _last.enumValue = MSGraphWeekIndexLast;
    });
    return _last;
}

+ (MSGraphWeekIndex*) UnknownEnumValue {
    static MSGraphWeekIndex *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWeekIndex alloc] init];
        _unknownValue.enumValue = MSGraphWeekIndexEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWeekIndex*) weekIndexWithEnumValue:(MSGraphWeekIndexValue)val {

    switch(val)
    {
        case MSGraphWeekIndexFirst:
            return [MSGraphWeekIndex first];
        case MSGraphWeekIndexSecond:
            return [MSGraphWeekIndex second];
        case MSGraphWeekIndexThird:
            return [MSGraphWeekIndex third];
        case MSGraphWeekIndexFourth:
            return [MSGraphWeekIndex fourth];
        case MSGraphWeekIndexLast:
            return [MSGraphWeekIndex last];
        case MSGraphWeekIndexEndOfEnum:
        default:
            return [MSGraphWeekIndex UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWeekIndexFirst:
            return @"first";
        case MSGraphWeekIndexSecond:
            return @"second";
        case MSGraphWeekIndexThird:
            return @"third";
        case MSGraphWeekIndexFourth:
            return @"fourth";
        case MSGraphWeekIndexLast:
            return @"last";
        case MSGraphWeekIndexEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWeekIndexValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWeekIndex)

- (MSGraphWeekIndex*) toMSGraphWeekIndex{

    if([self isEqualToString:@"first"])
    {
          return [MSGraphWeekIndex first];
    }
    else if([self isEqualToString:@"second"])
    {
          return [MSGraphWeekIndex second];
    }
    else if([self isEqualToString:@"third"])
    {
          return [MSGraphWeekIndex third];
    }
    else if([self isEqualToString:@"fourth"])
    {
          return [MSGraphWeekIndex fourth];
    }
    else if([self isEqualToString:@"last"])
    {
          return [MSGraphWeekIndex last];
    }
    else {
        return [MSGraphWeekIndex UnknownEnumValue];
    }
}

@end
