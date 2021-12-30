// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedKingdomMoviesType.h"

@interface MSGraphRatingUnitedKingdomMoviesType () {
    MSGraphRatingUnitedKingdomMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingUnitedKingdomMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingUnitedKingdomMoviesType

+ (MSGraphRatingUnitedKingdomMoviesType*) allAllowed {
    static MSGraphRatingUnitedKingdomMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) allBlocked {
    static MSGraphRatingUnitedKingdomMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) general {
    static MSGraphRatingUnitedKingdomMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _general.enumValue = MSGraphRatingUnitedKingdomMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) universalChildren {
    static MSGraphRatingUnitedKingdomMoviesType *_universalChildren;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _universalChildren = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _universalChildren.enumValue = MSGraphRatingUnitedKingdomMoviesTypeUniversalChildren;
    });
    return _universalChildren;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) parentalGuidance {
    static MSGraphRatingUnitedKingdomMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingUnitedKingdomMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) agesAbove12Video {
    static MSGraphRatingUnitedKingdomMoviesType *_agesAbove12Video;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12Video = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _agesAbove12Video.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Video;
    });
    return _agesAbove12Video;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) agesAbove12Cinema {
    static MSGraphRatingUnitedKingdomMoviesType *_agesAbove12Cinema;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12Cinema = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _agesAbove12Cinema.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Cinema;
    });
    return _agesAbove12Cinema;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) agesAbove15 {
    static MSGraphRatingUnitedKingdomMoviesType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingUnitedKingdomMoviesType*) adults {
    static MSGraphRatingUnitedKingdomMoviesType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _adults.enumValue = MSGraphRatingUnitedKingdomMoviesTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingUnitedKingdomMoviesType*) UnknownEnumValue {
    static MSGraphRatingUnitedKingdomMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingUnitedKingdomMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingUnitedKingdomMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingUnitedKingdomMoviesType*) ratingUnitedKingdomMoviesTypeWithEnumValue:(MSGraphRatingUnitedKingdomMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingUnitedKingdomMoviesTypeAllAllowed:
            return [MSGraphRatingUnitedKingdomMoviesType allAllowed];
        case MSGraphRatingUnitedKingdomMoviesTypeAllBlocked:
            return [MSGraphRatingUnitedKingdomMoviesType allBlocked];
        case MSGraphRatingUnitedKingdomMoviesTypeGeneral:
            return [MSGraphRatingUnitedKingdomMoviesType general];
        case MSGraphRatingUnitedKingdomMoviesTypeUniversalChildren:
            return [MSGraphRatingUnitedKingdomMoviesType universalChildren];
        case MSGraphRatingUnitedKingdomMoviesTypeParentalGuidance:
            return [MSGraphRatingUnitedKingdomMoviesType parentalGuidance];
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Video:
            return [MSGraphRatingUnitedKingdomMoviesType agesAbove12Video];
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Cinema:
            return [MSGraphRatingUnitedKingdomMoviesType agesAbove12Cinema];
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove15:
            return [MSGraphRatingUnitedKingdomMoviesType agesAbove15];
        case MSGraphRatingUnitedKingdomMoviesTypeAdults:
            return [MSGraphRatingUnitedKingdomMoviesType adults];
        case MSGraphRatingUnitedKingdomMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingUnitedKingdomMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingUnitedKingdomMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingUnitedKingdomMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingUnitedKingdomMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingUnitedKingdomMoviesTypeUniversalChildren:
            return @"universalChildren";
        case MSGraphRatingUnitedKingdomMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Video:
            return @"agesAbove12Video";
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove12Cinema:
            return @"agesAbove12Cinema";
        case MSGraphRatingUnitedKingdomMoviesTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingUnitedKingdomMoviesTypeAdults:
            return @"adults";
        case MSGraphRatingUnitedKingdomMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingUnitedKingdomMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingUnitedKingdomMoviesType)

- (MSGraphRatingUnitedKingdomMoviesType*) toMSGraphRatingUnitedKingdomMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType general];
    }
    else if([self isEqualToString:@"universalChildren"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType universalChildren];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"agesAbove12Video"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType agesAbove12Video];
    }
    else if([self isEqualToString:@"agesAbove12Cinema"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType agesAbove12Cinema];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType agesAbove15];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingUnitedKingdomMoviesType adults];
    }
    else {
        return [MSGraphRatingUnitedKingdomMoviesType UnknownEnumValue];
    }
}

@end
