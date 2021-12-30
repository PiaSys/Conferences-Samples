// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingNewZealandMoviesType.h"

@interface MSGraphRatingNewZealandMoviesType () {
    MSGraphRatingNewZealandMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingNewZealandMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingNewZealandMoviesType

+ (MSGraphRatingNewZealandMoviesType*) allAllowed {
    static MSGraphRatingNewZealandMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingNewZealandMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingNewZealandMoviesType*) allBlocked {
    static MSGraphRatingNewZealandMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingNewZealandMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingNewZealandMoviesType*) general {
    static MSGraphRatingNewZealandMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _general.enumValue = MSGraphRatingNewZealandMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingNewZealandMoviesType*) parentalGuidance {
    static MSGraphRatingNewZealandMoviesType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingNewZealandMoviesTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingNewZealandMoviesType*) mature {
    static MSGraphRatingNewZealandMoviesType *_mature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mature = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _mature.enumValue = MSGraphRatingNewZealandMoviesTypeMature;
    });
    return _mature;
}
+ (MSGraphRatingNewZealandMoviesType*) agesAbove13 {
    static MSGraphRatingNewZealandMoviesType *_agesAbove13;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove13 = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _agesAbove13.enumValue = MSGraphRatingNewZealandMoviesTypeAgesAbove13;
    });
    return _agesAbove13;
}
+ (MSGraphRatingNewZealandMoviesType*) agesAbove15 {
    static MSGraphRatingNewZealandMoviesType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingNewZealandMoviesTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingNewZealandMoviesType*) agesAbove16 {
    static MSGraphRatingNewZealandMoviesType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingNewZealandMoviesTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingNewZealandMoviesType*) agesAbove18 {
    static MSGraphRatingNewZealandMoviesType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingNewZealandMoviesTypeAgesAbove18;
    });
    return _agesAbove18;
}
+ (MSGraphRatingNewZealandMoviesType*) restricted {
    static MSGraphRatingNewZealandMoviesType *_restricted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _restricted = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _restricted.enumValue = MSGraphRatingNewZealandMoviesTypeRestricted;
    });
    return _restricted;
}
+ (MSGraphRatingNewZealandMoviesType*) agesAbove16Restricted {
    static MSGraphRatingNewZealandMoviesType *_agesAbove16Restricted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16Restricted = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _agesAbove16Restricted.enumValue = MSGraphRatingNewZealandMoviesTypeAgesAbove16Restricted;
    });
    return _agesAbove16Restricted;
}

+ (MSGraphRatingNewZealandMoviesType*) UnknownEnumValue {
    static MSGraphRatingNewZealandMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingNewZealandMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingNewZealandMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingNewZealandMoviesType*) ratingNewZealandMoviesTypeWithEnumValue:(MSGraphRatingNewZealandMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingNewZealandMoviesTypeAllAllowed:
            return [MSGraphRatingNewZealandMoviesType allAllowed];
        case MSGraphRatingNewZealandMoviesTypeAllBlocked:
            return [MSGraphRatingNewZealandMoviesType allBlocked];
        case MSGraphRatingNewZealandMoviesTypeGeneral:
            return [MSGraphRatingNewZealandMoviesType general];
        case MSGraphRatingNewZealandMoviesTypeParentalGuidance:
            return [MSGraphRatingNewZealandMoviesType parentalGuidance];
        case MSGraphRatingNewZealandMoviesTypeMature:
            return [MSGraphRatingNewZealandMoviesType mature];
        case MSGraphRatingNewZealandMoviesTypeAgesAbove13:
            return [MSGraphRatingNewZealandMoviesType agesAbove13];
        case MSGraphRatingNewZealandMoviesTypeAgesAbove15:
            return [MSGraphRatingNewZealandMoviesType agesAbove15];
        case MSGraphRatingNewZealandMoviesTypeAgesAbove16:
            return [MSGraphRatingNewZealandMoviesType agesAbove16];
        case MSGraphRatingNewZealandMoviesTypeAgesAbove18:
            return [MSGraphRatingNewZealandMoviesType agesAbove18];
        case MSGraphRatingNewZealandMoviesTypeRestricted:
            return [MSGraphRatingNewZealandMoviesType restricted];
        case MSGraphRatingNewZealandMoviesTypeAgesAbove16Restricted:
            return [MSGraphRatingNewZealandMoviesType agesAbove16Restricted];
        case MSGraphRatingNewZealandMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingNewZealandMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingNewZealandMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingNewZealandMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingNewZealandMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingNewZealandMoviesTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingNewZealandMoviesTypeMature:
            return @"mature";
        case MSGraphRatingNewZealandMoviesTypeAgesAbove13:
            return @"agesAbove13";
        case MSGraphRatingNewZealandMoviesTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingNewZealandMoviesTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingNewZealandMoviesTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingNewZealandMoviesTypeRestricted:
            return @"restricted";
        case MSGraphRatingNewZealandMoviesTypeAgesAbove16Restricted:
            return @"agesAbove16Restricted";
        case MSGraphRatingNewZealandMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingNewZealandMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingNewZealandMoviesType)

- (MSGraphRatingNewZealandMoviesType*) toMSGraphRatingNewZealandMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingNewZealandMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingNewZealandMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingNewZealandMoviesType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingNewZealandMoviesType parentalGuidance];
    }
    else if([self isEqualToString:@"mature"])
    {
          return [MSGraphRatingNewZealandMoviesType mature];
    }
    else if([self isEqualToString:@"agesAbove13"])
    {
          return [MSGraphRatingNewZealandMoviesType agesAbove13];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingNewZealandMoviesType agesAbove15];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingNewZealandMoviesType agesAbove16];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingNewZealandMoviesType agesAbove18];
    }
    else if([self isEqualToString:@"restricted"])
    {
          return [MSGraphRatingNewZealandMoviesType restricted];
    }
    else if([self isEqualToString:@"agesAbove16Restricted"])
    {
          return [MSGraphRatingNewZealandMoviesType agesAbove16Restricted];
    }
    else {
        return [MSGraphRatingNewZealandMoviesType UnknownEnumValue];
    }
}

@end
