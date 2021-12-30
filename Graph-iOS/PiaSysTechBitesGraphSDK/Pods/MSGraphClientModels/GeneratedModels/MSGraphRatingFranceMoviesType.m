// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingFranceMoviesType.h"

@interface MSGraphRatingFranceMoviesType () {
    MSGraphRatingFranceMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingFranceMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingFranceMoviesType

+ (MSGraphRatingFranceMoviesType*) allAllowed {
    static MSGraphRatingFranceMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingFranceMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingFranceMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingFranceMoviesType*) allBlocked {
    static MSGraphRatingFranceMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingFranceMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingFranceMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingFranceMoviesType*) agesAbove10 {
    static MSGraphRatingFranceMoviesType *_agesAbove10;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove10 = [[MSGraphRatingFranceMoviesType alloc] init];
        _agesAbove10.enumValue = MSGraphRatingFranceMoviesTypeAgesAbove10;
    });
    return _agesAbove10;
}
+ (MSGraphRatingFranceMoviesType*) agesAbove12 {
    static MSGraphRatingFranceMoviesType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingFranceMoviesType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingFranceMoviesTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingFranceMoviesType*) agesAbove16 {
    static MSGraphRatingFranceMoviesType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingFranceMoviesType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingFranceMoviesTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingFranceMoviesType*) agesAbove18 {
    static MSGraphRatingFranceMoviesType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingFranceMoviesType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingFranceMoviesTypeAgesAbove18;
    });
    return _agesAbove18;
}

+ (MSGraphRatingFranceMoviesType*) UnknownEnumValue {
    static MSGraphRatingFranceMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingFranceMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingFranceMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingFranceMoviesType*) ratingFranceMoviesTypeWithEnumValue:(MSGraphRatingFranceMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingFranceMoviesTypeAllAllowed:
            return [MSGraphRatingFranceMoviesType allAllowed];
        case MSGraphRatingFranceMoviesTypeAllBlocked:
            return [MSGraphRatingFranceMoviesType allBlocked];
        case MSGraphRatingFranceMoviesTypeAgesAbove10:
            return [MSGraphRatingFranceMoviesType agesAbove10];
        case MSGraphRatingFranceMoviesTypeAgesAbove12:
            return [MSGraphRatingFranceMoviesType agesAbove12];
        case MSGraphRatingFranceMoviesTypeAgesAbove16:
            return [MSGraphRatingFranceMoviesType agesAbove16];
        case MSGraphRatingFranceMoviesTypeAgesAbove18:
            return [MSGraphRatingFranceMoviesType agesAbove18];
        case MSGraphRatingFranceMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingFranceMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingFranceMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingFranceMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingFranceMoviesTypeAgesAbove10:
            return @"agesAbove10";
        case MSGraphRatingFranceMoviesTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingFranceMoviesTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingFranceMoviesTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingFranceMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingFranceMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingFranceMoviesType)

- (MSGraphRatingFranceMoviesType*) toMSGraphRatingFranceMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingFranceMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingFranceMoviesType allBlocked];
    }
    else if([self isEqualToString:@"agesAbove10"])
    {
          return [MSGraphRatingFranceMoviesType agesAbove10];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingFranceMoviesType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingFranceMoviesType agesAbove16];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingFranceMoviesType agesAbove18];
    }
    else {
        return [MSGraphRatingFranceMoviesType UnknownEnumValue];
    }
}

@end
