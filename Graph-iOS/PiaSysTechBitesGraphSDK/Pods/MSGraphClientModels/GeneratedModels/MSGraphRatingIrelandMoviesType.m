// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingIrelandMoviesType.h"

@interface MSGraphRatingIrelandMoviesType () {
    MSGraphRatingIrelandMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingIrelandMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingIrelandMoviesType

+ (MSGraphRatingIrelandMoviesType*) allAllowed {
    static MSGraphRatingIrelandMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingIrelandMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingIrelandMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingIrelandMoviesType*) allBlocked {
    static MSGraphRatingIrelandMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingIrelandMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingIrelandMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingIrelandMoviesType*) general {
    static MSGraphRatingIrelandMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingIrelandMoviesType alloc] init];
        _general.enumValue = MSGraphRatingIrelandMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingIrelandMoviesType*) parentalGuidance {
    static MSGraphRatingIrelandMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingIrelandMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingIrelandMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingIrelandMoviesType*) agesAbove12 {
    static MSGraphRatingIrelandMoviesType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingIrelandMoviesType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingIrelandMoviesTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingIrelandMoviesType*) agesAbove15 {
    static MSGraphRatingIrelandMoviesType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingIrelandMoviesType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingIrelandMoviesTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingIrelandMoviesType*) agesAbove16 {
    static MSGraphRatingIrelandMoviesType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingIrelandMoviesType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingIrelandMoviesTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingIrelandMoviesType*) adults {
    static MSGraphRatingIrelandMoviesType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingIrelandMoviesType alloc] init];
        _adults.enumValue = MSGraphRatingIrelandMoviesTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingIrelandMoviesType*) UnknownEnumValue {
    static MSGraphRatingIrelandMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingIrelandMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingIrelandMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingIrelandMoviesType*) ratingIrelandMoviesTypeWithEnumValue:(MSGraphRatingIrelandMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingIrelandMoviesTypeAllAllowed:
            return [MSGraphRatingIrelandMoviesType allAllowed];
        case MSGraphRatingIrelandMoviesTypeAllBlocked:
            return [MSGraphRatingIrelandMoviesType allBlocked];
        case MSGraphRatingIrelandMoviesTypeGeneral:
            return [MSGraphRatingIrelandMoviesType general];
        case MSGraphRatingIrelandMoviesTypeParentalGuidance:
            return [MSGraphRatingIrelandMoviesType parentalGuidance];
        case MSGraphRatingIrelandMoviesTypeAgesAbove12:
            return [MSGraphRatingIrelandMoviesType agesAbove12];
        case MSGraphRatingIrelandMoviesTypeAgesAbove15:
            return [MSGraphRatingIrelandMoviesType agesAbove15];
        case MSGraphRatingIrelandMoviesTypeAgesAbove16:
            return [MSGraphRatingIrelandMoviesType agesAbove16];
        case MSGraphRatingIrelandMoviesTypeAdults:
            return [MSGraphRatingIrelandMoviesType adults];
        case MSGraphRatingIrelandMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingIrelandMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingIrelandMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingIrelandMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingIrelandMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingIrelandMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingIrelandMoviesTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingIrelandMoviesTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingIrelandMoviesTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingIrelandMoviesTypeAdults:
            return @"adults";
        case MSGraphRatingIrelandMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingIrelandMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingIrelandMoviesType)

- (MSGraphRatingIrelandMoviesType*) toMSGraphRatingIrelandMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingIrelandMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingIrelandMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingIrelandMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingIrelandMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingIrelandMoviesType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingIrelandMoviesType agesAbove15];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingIrelandMoviesType agesAbove16];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingIrelandMoviesType adults];
    }
    else {
        return [MSGraphRatingIrelandMoviesType UnknownEnumValue];
    }
}

@end
