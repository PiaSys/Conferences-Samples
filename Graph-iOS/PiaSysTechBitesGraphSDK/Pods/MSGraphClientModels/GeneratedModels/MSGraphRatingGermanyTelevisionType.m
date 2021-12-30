// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingGermanyTelevisionType.h"

@interface MSGraphRatingGermanyTelevisionType () {
    MSGraphRatingGermanyTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingGermanyTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingGermanyTelevisionType

+ (MSGraphRatingGermanyTelevisionType*) allAllowed {
    static MSGraphRatingGermanyTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingGermanyTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingGermanyTelevisionType*) allBlocked {
    static MSGraphRatingGermanyTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingGermanyTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingGermanyTelevisionType*) general {
    static MSGraphRatingGermanyTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingGermanyTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingGermanyTelevisionType*) agesAbove6 {
    static MSGraphRatingGermanyTelevisionType *_agesAbove6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove6 = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _agesAbove6.enumValue = MSGraphRatingGermanyTelevisionTypeAgesAbove6;
    });
    return _agesAbove6;
}
+ (MSGraphRatingGermanyTelevisionType*) agesAbove12 {
    static MSGraphRatingGermanyTelevisionType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingGermanyTelevisionTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingGermanyTelevisionType*) agesAbove16 {
    static MSGraphRatingGermanyTelevisionType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingGermanyTelevisionTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingGermanyTelevisionType*) adults {
    static MSGraphRatingGermanyTelevisionType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _adults.enumValue = MSGraphRatingGermanyTelevisionTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingGermanyTelevisionType*) UnknownEnumValue {
    static MSGraphRatingGermanyTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingGermanyTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingGermanyTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingGermanyTelevisionType*) ratingGermanyTelevisionTypeWithEnumValue:(MSGraphRatingGermanyTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingGermanyTelevisionTypeAllAllowed:
            return [MSGraphRatingGermanyTelevisionType allAllowed];
        case MSGraphRatingGermanyTelevisionTypeAllBlocked:
            return [MSGraphRatingGermanyTelevisionType allBlocked];
        case MSGraphRatingGermanyTelevisionTypeGeneral:
            return [MSGraphRatingGermanyTelevisionType general];
        case MSGraphRatingGermanyTelevisionTypeAgesAbove6:
            return [MSGraphRatingGermanyTelevisionType agesAbove6];
        case MSGraphRatingGermanyTelevisionTypeAgesAbove12:
            return [MSGraphRatingGermanyTelevisionType agesAbove12];
        case MSGraphRatingGermanyTelevisionTypeAgesAbove16:
            return [MSGraphRatingGermanyTelevisionType agesAbove16];
        case MSGraphRatingGermanyTelevisionTypeAdults:
            return [MSGraphRatingGermanyTelevisionType adults];
        case MSGraphRatingGermanyTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingGermanyTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingGermanyTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingGermanyTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingGermanyTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingGermanyTelevisionTypeAgesAbove6:
            return @"agesAbove6";
        case MSGraphRatingGermanyTelevisionTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingGermanyTelevisionTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingGermanyTelevisionTypeAdults:
            return @"adults";
        case MSGraphRatingGermanyTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingGermanyTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingGermanyTelevisionType)

- (MSGraphRatingGermanyTelevisionType*) toMSGraphRatingGermanyTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingGermanyTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingGermanyTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingGermanyTelevisionType general];
    }
    else if([self isEqualToString:@"agesAbove6"])
    {
          return [MSGraphRatingGermanyTelevisionType agesAbove6];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingGermanyTelevisionType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingGermanyTelevisionType agesAbove16];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingGermanyTelevisionType adults];
    }
    else {
        return [MSGraphRatingGermanyTelevisionType UnknownEnumValue];
    }
}

@end
