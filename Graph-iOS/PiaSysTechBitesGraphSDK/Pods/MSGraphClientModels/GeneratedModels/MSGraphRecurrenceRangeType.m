// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRecurrenceRangeType.h"

@interface MSGraphRecurrenceRangeType () {
    MSGraphRecurrenceRangeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRecurrenceRangeTypeValue enumValue;
@end

@implementation MSGraphRecurrenceRangeType

+ (MSGraphRecurrenceRangeType*) endDate {
    static MSGraphRecurrenceRangeType *_endDate;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _endDate = [[MSGraphRecurrenceRangeType alloc] init];
        _endDate.enumValue = MSGraphRecurrenceRangeTypeEndDate;
    });
    return _endDate;
}
+ (MSGraphRecurrenceRangeType*) noEnd {
    static MSGraphRecurrenceRangeType *_noEnd;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _noEnd = [[MSGraphRecurrenceRangeType alloc] init];
        _noEnd.enumValue = MSGraphRecurrenceRangeTypeNoEnd;
    });
    return _noEnd;
}
+ (MSGraphRecurrenceRangeType*) numbered {
    static MSGraphRecurrenceRangeType *_numbered;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _numbered = [[MSGraphRecurrenceRangeType alloc] init];
        _numbered.enumValue = MSGraphRecurrenceRangeTypeNumbered;
    });
    return _numbered;
}

+ (MSGraphRecurrenceRangeType*) UnknownEnumValue {
    static MSGraphRecurrenceRangeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRecurrenceRangeType alloc] init];
        _unknownValue.enumValue = MSGraphRecurrenceRangeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRecurrenceRangeType*) recurrenceRangeTypeWithEnumValue:(MSGraphRecurrenceRangeTypeValue)val {

    switch(val)
    {
        case MSGraphRecurrenceRangeTypeEndDate:
            return [MSGraphRecurrenceRangeType endDate];
        case MSGraphRecurrenceRangeTypeNoEnd:
            return [MSGraphRecurrenceRangeType noEnd];
        case MSGraphRecurrenceRangeTypeNumbered:
            return [MSGraphRecurrenceRangeType numbered];
        case MSGraphRecurrenceRangeTypeEndOfEnum:
        default:
            return [MSGraphRecurrenceRangeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRecurrenceRangeTypeEndDate:
            return @"endDate";
        case MSGraphRecurrenceRangeTypeNoEnd:
            return @"noEnd";
        case MSGraphRecurrenceRangeTypeNumbered:
            return @"numbered";
        case MSGraphRecurrenceRangeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRecurrenceRangeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRecurrenceRangeType)

- (MSGraphRecurrenceRangeType*) toMSGraphRecurrenceRangeType{

    if([self isEqualToString:@"endDate"])
    {
          return [MSGraphRecurrenceRangeType endDate];
    }
    else if([self isEqualToString:@"noEnd"])
    {
          return [MSGraphRecurrenceRangeType noEnd];
    }
    else if([self isEqualToString:@"numbered"])
    {
          return [MSGraphRecurrenceRangeType numbered];
    }
    else {
        return [MSGraphRecurrenceRangeType UnknownEnumValue];
    }
}

@end
