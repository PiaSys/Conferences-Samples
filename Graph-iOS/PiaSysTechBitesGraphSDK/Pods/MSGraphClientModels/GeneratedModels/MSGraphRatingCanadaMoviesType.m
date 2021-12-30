// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingCanadaMoviesType.h"

@interface MSGraphRatingCanadaMoviesType () {
    MSGraphRatingCanadaMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingCanadaMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingCanadaMoviesType

+ (MSGraphRatingCanadaMoviesType*) allAllowed {
    static MSGraphRatingCanadaMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingCanadaMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingCanadaMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingCanadaMoviesType*) allBlocked {
    static MSGraphRatingCanadaMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingCanadaMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingCanadaMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingCanadaMoviesType*) general {
    static MSGraphRatingCanadaMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingCanadaMoviesType alloc] init];
        _general.enumValue = MSGraphRatingCanadaMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingCanadaMoviesType*) parentalGuidance {
    static MSGraphRatingCanadaMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingCanadaMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingCanadaMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingCanadaMoviesType*) agesAbove14 {
    static MSGraphRatingCanadaMoviesType *_agesAbove14;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove14 = [[MSGraphRatingCanadaMoviesType alloc] init];
        _agesAbove14.enumValue = MSGraphRatingCanadaMoviesTypeAgesAbove14;
    });
    return _agesAbove14;
}
+ (MSGraphRatingCanadaMoviesType*) agesAbove18 {
    static MSGraphRatingCanadaMoviesType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingCanadaMoviesType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingCanadaMoviesTypeAgesAbove18;
    });
    return _agesAbove18;
}
+ (MSGraphRatingCanadaMoviesType*) restricted {
    static MSGraphRatingCanadaMoviesType *_restricted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restricted = [[MSGraphRatingCanadaMoviesType alloc] init];
        _restricted.enumValue = MSGraphRatingCanadaMoviesTypeRestricted;
    });
    return _restricted;
}

+ (MSGraphRatingCanadaMoviesType*) UnknownEnumValue {
    static MSGraphRatingCanadaMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingCanadaMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingCanadaMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingCanadaMoviesType*) ratingCanadaMoviesTypeWithEnumValue:(MSGraphRatingCanadaMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingCanadaMoviesTypeAllAllowed:
            return [MSGraphRatingCanadaMoviesType allAllowed];
        case MSGraphRatingCanadaMoviesTypeAllBlocked:
            return [MSGraphRatingCanadaMoviesType allBlocked];
        case MSGraphRatingCanadaMoviesTypeGeneral:
            return [MSGraphRatingCanadaMoviesType general];
        case MSGraphRatingCanadaMoviesTypeParentalGuidance:
            return [MSGraphRatingCanadaMoviesType parentalGuidance];
        case MSGraphRatingCanadaMoviesTypeAgesAbove14:
            return [MSGraphRatingCanadaMoviesType agesAbove14];
        case MSGraphRatingCanadaMoviesTypeAgesAbove18:
            return [MSGraphRatingCanadaMoviesType agesAbove18];
        case MSGraphRatingCanadaMoviesTypeRestricted:
            return [MSGraphRatingCanadaMoviesType restricted];
        case MSGraphRatingCanadaMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingCanadaMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingCanadaMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingCanadaMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingCanadaMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingCanadaMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingCanadaMoviesTypeAgesAbove14:
            return @"agesAbove14";
        case MSGraphRatingCanadaMoviesTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingCanadaMoviesTypeRestricted:
            return @"restricted";
        case MSGraphRatingCanadaMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingCanadaMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingCanadaMoviesType)

- (MSGraphRatingCanadaMoviesType*) toMSGraphRatingCanadaMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingCanadaMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingCanadaMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingCanadaMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingCanadaMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"agesAbove14"])
    {
          return [MSGraphRatingCanadaMoviesType agesAbove14];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingCanadaMoviesType agesAbove18];
    }
    else if([self isEqualToString:@"restricted"])
    {
          return [MSGraphRatingCanadaMoviesType restricted];
    }
    else {
        return [MSGraphRatingCanadaMoviesType UnknownEnumValue];
    }
}

@end
