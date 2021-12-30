// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingAustraliaMoviesType.h"

@interface MSGraphRatingAustraliaMoviesType () {
    MSGraphRatingAustraliaMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingAustraliaMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingAustraliaMoviesType

+ (MSGraphRatingAustraliaMoviesType*) allAllowed {
    static MSGraphRatingAustraliaMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingAustraliaMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingAustraliaMoviesType*) allBlocked {
    static MSGraphRatingAustraliaMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingAustraliaMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingAustraliaMoviesType*) general {
    static MSGraphRatingAustraliaMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _general.enumValue = MSGraphRatingAustraliaMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingAustraliaMoviesType*) parentalGuidance {
    static MSGraphRatingAustraliaMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingAustraliaMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingAustraliaMoviesType*) mature {
    static MSGraphRatingAustraliaMoviesType *_mature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mature = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _mature.enumValue = MSGraphRatingAustraliaMoviesTypeMature;
    });
    return _mature;
}
+ (MSGraphRatingAustraliaMoviesType*) agesAbove15 {
    static MSGraphRatingAustraliaMoviesType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingAustraliaMoviesTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingAustraliaMoviesType*) agesAbove18 {
    static MSGraphRatingAustraliaMoviesType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingAustraliaMoviesTypeAgesAbove18;
    });
    return _agesAbove18;
}

+ (MSGraphRatingAustraliaMoviesType*) UnknownEnumValue {
    static MSGraphRatingAustraliaMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingAustraliaMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingAustraliaMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingAustraliaMoviesType*) ratingAustraliaMoviesTypeWithEnumValue:(MSGraphRatingAustraliaMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingAustraliaMoviesTypeAllAllowed:
            return [MSGraphRatingAustraliaMoviesType allAllowed];
        case MSGraphRatingAustraliaMoviesTypeAllBlocked:
            return [MSGraphRatingAustraliaMoviesType allBlocked];
        case MSGraphRatingAustraliaMoviesTypeGeneral:
            return [MSGraphRatingAustraliaMoviesType general];
        case MSGraphRatingAustraliaMoviesTypeParentalGuidance:
            return [MSGraphRatingAustraliaMoviesType parentalGuidance];
        case MSGraphRatingAustraliaMoviesTypeMature:
            return [MSGraphRatingAustraliaMoviesType mature];
        case MSGraphRatingAustraliaMoviesTypeAgesAbove15:
            return [MSGraphRatingAustraliaMoviesType agesAbove15];
        case MSGraphRatingAustraliaMoviesTypeAgesAbove18:
            return [MSGraphRatingAustraliaMoviesType agesAbove18];
        case MSGraphRatingAustraliaMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingAustraliaMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingAustraliaMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingAustraliaMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingAustraliaMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingAustraliaMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingAustraliaMoviesTypeMature:
            return @"mature";
        case MSGraphRatingAustraliaMoviesTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingAustraliaMoviesTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingAustraliaMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingAustraliaMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingAustraliaMoviesType)

- (MSGraphRatingAustraliaMoviesType*) toMSGraphRatingAustraliaMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingAustraliaMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingAustraliaMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingAustraliaMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingAustraliaMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"mature"])
    {
          return [MSGraphRatingAustraliaMoviesType mature];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingAustraliaMoviesType agesAbove15];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingAustraliaMoviesType agesAbove18];
    }
    else {
        return [MSGraphRatingAustraliaMoviesType UnknownEnumValue];
    }
}

@end
