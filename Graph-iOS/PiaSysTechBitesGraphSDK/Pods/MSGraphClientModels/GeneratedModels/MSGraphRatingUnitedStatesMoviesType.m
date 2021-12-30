// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedStatesMoviesType.h"

@interface MSGraphRatingUnitedStatesMoviesType () {
    MSGraphRatingUnitedStatesMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingUnitedStatesMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingUnitedStatesMoviesType

+ (MSGraphRatingUnitedStatesMoviesType*) allAllowed {
    static MSGraphRatingUnitedStatesMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingUnitedStatesMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingUnitedStatesMoviesType*) allBlocked {
    static MSGraphRatingUnitedStatesMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingUnitedStatesMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingUnitedStatesMoviesType*) general {
    static MSGraphRatingUnitedStatesMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _general.enumValue = MSGraphRatingUnitedStatesMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingUnitedStatesMoviesType*) parentalGuidance {
    static MSGraphRatingUnitedStatesMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingUnitedStatesMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingUnitedStatesMoviesType*) parentalGuidance13 {
    static MSGraphRatingUnitedStatesMoviesType *_parentalGuidance13;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance13 = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _parentalGuidance13.enumValue = MSGraphRatingUnitedStatesMoviesTypeParentalGuidance13;
    });
    return _parentalGuidance13;
}
+ (MSGraphRatingUnitedStatesMoviesType*) restricted {
    static MSGraphRatingUnitedStatesMoviesType *_restricted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restricted = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _restricted.enumValue = MSGraphRatingUnitedStatesMoviesTypeRestricted;
    });
    return _restricted;
}
+ (MSGraphRatingUnitedStatesMoviesType*) adults {
    static MSGraphRatingUnitedStatesMoviesType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _adults.enumValue = MSGraphRatingUnitedStatesMoviesTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingUnitedStatesMoviesType*) UnknownEnumValue {
    static MSGraphRatingUnitedStatesMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingUnitedStatesMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingUnitedStatesMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingUnitedStatesMoviesType*) ratingUnitedStatesMoviesTypeWithEnumValue:(MSGraphRatingUnitedStatesMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingUnitedStatesMoviesTypeAllAllowed:
            return [MSGraphRatingUnitedStatesMoviesType allAllowed];
        case MSGraphRatingUnitedStatesMoviesTypeAllBlocked:
            return [MSGraphRatingUnitedStatesMoviesType allBlocked];
        case MSGraphRatingUnitedStatesMoviesTypeGeneral:
            return [MSGraphRatingUnitedStatesMoviesType general];
        case MSGraphRatingUnitedStatesMoviesTypeParentalGuidance:
            return [MSGraphRatingUnitedStatesMoviesType parentalGuidance];
        case MSGraphRatingUnitedStatesMoviesTypeParentalGuidance13:
            return [MSGraphRatingUnitedStatesMoviesType parentalGuidance13];
        case MSGraphRatingUnitedStatesMoviesTypeRestricted:
            return [MSGraphRatingUnitedStatesMoviesType restricted];
        case MSGraphRatingUnitedStatesMoviesTypeAdults:
            return [MSGraphRatingUnitedStatesMoviesType adults];
        case MSGraphRatingUnitedStatesMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingUnitedStatesMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingUnitedStatesMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingUnitedStatesMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingUnitedStatesMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingUnitedStatesMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingUnitedStatesMoviesTypeParentalGuidance13:
            return @"parentalGuidance13";
        case MSGraphRatingUnitedStatesMoviesTypeRestricted:
            return @"restricted";
        case MSGraphRatingUnitedStatesMoviesTypeAdults:
            return @"adults";
        case MSGraphRatingUnitedStatesMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingUnitedStatesMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingUnitedStatesMoviesType)

- (MSGraphRatingUnitedStatesMoviesType*) toMSGraphRatingUnitedStatesMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingUnitedStatesMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingUnitedStatesMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingUnitedStatesMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingUnitedStatesMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"parentalGuidance13"])
    {
          return [MSGraphRatingUnitedStatesMoviesType parentalGuidance13];
    }
    else if([self isEqualToString:@"restricted"])
    {
          return [MSGraphRatingUnitedStatesMoviesType restricted];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingUnitedStatesMoviesType adults];
    }
    else {
        return [MSGraphRatingUnitedStatesMoviesType UnknownEnumValue];
    }
}

@end
