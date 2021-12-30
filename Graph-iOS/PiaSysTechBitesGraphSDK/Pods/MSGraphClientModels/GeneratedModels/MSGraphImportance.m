// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphImportance.h"

@interface MSGraphImportance () {
    MSGraphImportanceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphImportanceValue enumValue;
@end

@implementation MSGraphImportance

+ (MSGraphImportance*) low {
    static MSGraphImportance *_low;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _low = [[MSGraphImportance alloc] init];
        _low.enumValue = MSGraphImportanceLow;
    });
    return _low;
}
+ (MSGraphImportance*) normal {
    static MSGraphImportance *_normal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _normal = [[MSGraphImportance alloc] init];
        _normal.enumValue = MSGraphImportanceNormal;
    });
    return _normal;
}
+ (MSGraphImportance*) high {
    static MSGraphImportance *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphImportance alloc] init];
        _high.enumValue = MSGraphImportanceHigh;
    });
    return _high;
}

+ (MSGraphImportance*) UnknownEnumValue {
    static MSGraphImportance *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphImportance alloc] init];
        _unknownValue.enumValue = MSGraphImportanceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphImportance*) importanceWithEnumValue:(MSGraphImportanceValue)val {

    switch(val)
    {
        case MSGraphImportanceLow:
            return [MSGraphImportance low];
        case MSGraphImportanceNormal:
            return [MSGraphImportance normal];
        case MSGraphImportanceHigh:
            return [MSGraphImportance high];
        case MSGraphImportanceEndOfEnum:
        default:
            return [MSGraphImportance UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphImportanceLow:
            return @"low";
        case MSGraphImportanceNormal:
            return @"normal";
        case MSGraphImportanceHigh:
            return @"high";
        case MSGraphImportanceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphImportanceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphImportance)

- (MSGraphImportance*) toMSGraphImportance{

    if([self isEqualToString:@"low"])
    {
          return [MSGraphImportance low];
    }
    else if([self isEqualToString:@"normal"])
    {
          return [MSGraphImportance normal];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphImportance high];
    }
    else {
        return [MSGraphImportance UnknownEnumValue];
    }
}

@end
