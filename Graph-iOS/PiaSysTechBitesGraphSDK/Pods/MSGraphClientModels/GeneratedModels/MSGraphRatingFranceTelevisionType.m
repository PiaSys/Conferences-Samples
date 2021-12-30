// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingFranceTelevisionType.h"

@interface MSGraphRatingFranceTelevisionType () {
    MSGraphRatingFranceTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingFranceTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingFranceTelevisionType

+ (MSGraphRatingFranceTelevisionType*) allAllowed {
    static MSGraphRatingFranceTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingFranceTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingFranceTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingFranceTelevisionType*) allBlocked {
    static MSGraphRatingFranceTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingFranceTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingFranceTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingFranceTelevisionType*) agesAbove10 {
    static MSGraphRatingFranceTelevisionType *_agesAbove10;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove10 = [[MSGraphRatingFranceTelevisionType alloc] init];
        _agesAbove10.enumValue = MSGraphRatingFranceTelevisionTypeAgesAbove10;
    });
    return _agesAbove10;
}
+ (MSGraphRatingFranceTelevisionType*) agesAbove12 {
    static MSGraphRatingFranceTelevisionType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingFranceTelevisionType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingFranceTelevisionTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingFranceTelevisionType*) agesAbove16 {
    static MSGraphRatingFranceTelevisionType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingFranceTelevisionType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingFranceTelevisionTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingFranceTelevisionType*) agesAbove18 {
    static MSGraphRatingFranceTelevisionType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingFranceTelevisionType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingFranceTelevisionTypeAgesAbove18;
    });
    return _agesAbove18;
}

+ (MSGraphRatingFranceTelevisionType*) UnknownEnumValue {
    static MSGraphRatingFranceTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingFranceTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingFranceTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingFranceTelevisionType*) ratingFranceTelevisionTypeWithEnumValue:(MSGraphRatingFranceTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingFranceTelevisionTypeAllAllowed:
            return [MSGraphRatingFranceTelevisionType allAllowed];
        case MSGraphRatingFranceTelevisionTypeAllBlocked:
            return [MSGraphRatingFranceTelevisionType allBlocked];
        case MSGraphRatingFranceTelevisionTypeAgesAbove10:
            return [MSGraphRatingFranceTelevisionType agesAbove10];
        case MSGraphRatingFranceTelevisionTypeAgesAbove12:
            return [MSGraphRatingFranceTelevisionType agesAbove12];
        case MSGraphRatingFranceTelevisionTypeAgesAbove16:
            return [MSGraphRatingFranceTelevisionType agesAbove16];
        case MSGraphRatingFranceTelevisionTypeAgesAbove18:
            return [MSGraphRatingFranceTelevisionType agesAbove18];
        case MSGraphRatingFranceTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingFranceTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingFranceTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingFranceTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingFranceTelevisionTypeAgesAbove10:
            return @"agesAbove10";
        case MSGraphRatingFranceTelevisionTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingFranceTelevisionTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingFranceTelevisionTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingFranceTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingFranceTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingFranceTelevisionType)

- (MSGraphRatingFranceTelevisionType*) toMSGraphRatingFranceTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingFranceTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingFranceTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"agesAbove10"])
    {
          return [MSGraphRatingFranceTelevisionType agesAbove10];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingFranceTelevisionType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingFranceTelevisionType agesAbove16];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingFranceTelevisionType agesAbove18];
    }
    else {
        return [MSGraphRatingFranceTelevisionType UnknownEnumValue];
    }
}

@end
