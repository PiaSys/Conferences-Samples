// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingJapanMoviesType.h"

@interface MSGraphRatingJapanMoviesType () {
    MSGraphRatingJapanMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingJapanMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingJapanMoviesType

+ (MSGraphRatingJapanMoviesType*) allAllowed {
    static MSGraphRatingJapanMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingJapanMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingJapanMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingJapanMoviesType*) allBlocked {
    static MSGraphRatingJapanMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingJapanMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingJapanMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingJapanMoviesType*) general {
    static MSGraphRatingJapanMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingJapanMoviesType alloc] init];
        _general.enumValue = MSGraphRatingJapanMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingJapanMoviesType*) parentalGuidance {
    static MSGraphRatingJapanMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingJapanMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingJapanMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingJapanMoviesType*) agesAbove15 {
    static MSGraphRatingJapanMoviesType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingJapanMoviesType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingJapanMoviesTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingJapanMoviesType*) agesAbove18 {
    static MSGraphRatingJapanMoviesType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingJapanMoviesType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingJapanMoviesTypeAgesAbove18;
    });
    return _agesAbove18;
}

+ (MSGraphRatingJapanMoviesType*) UnknownEnumValue {
    static MSGraphRatingJapanMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingJapanMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingJapanMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingJapanMoviesType*) ratingJapanMoviesTypeWithEnumValue:(MSGraphRatingJapanMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingJapanMoviesTypeAllAllowed:
            return [MSGraphRatingJapanMoviesType allAllowed];
        case MSGraphRatingJapanMoviesTypeAllBlocked:
            return [MSGraphRatingJapanMoviesType allBlocked];
        case MSGraphRatingJapanMoviesTypeGeneral:
            return [MSGraphRatingJapanMoviesType general];
        case MSGraphRatingJapanMoviesTypeParentalGuidance:
            return [MSGraphRatingJapanMoviesType parentalGuidance];
        case MSGraphRatingJapanMoviesTypeAgesAbove15:
            return [MSGraphRatingJapanMoviesType agesAbove15];
        case MSGraphRatingJapanMoviesTypeAgesAbove18:
            return [MSGraphRatingJapanMoviesType agesAbove18];
        case MSGraphRatingJapanMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingJapanMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingJapanMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingJapanMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingJapanMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingJapanMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingJapanMoviesTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingJapanMoviesTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingJapanMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingJapanMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingJapanMoviesType)

- (MSGraphRatingJapanMoviesType*) toMSGraphRatingJapanMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingJapanMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingJapanMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingJapanMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingJapanMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingJapanMoviesType agesAbove15];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingJapanMoviesType agesAbove18];
    }
    else {
        return [MSGraphRatingJapanMoviesType UnknownEnumValue];
    }
}

@end
