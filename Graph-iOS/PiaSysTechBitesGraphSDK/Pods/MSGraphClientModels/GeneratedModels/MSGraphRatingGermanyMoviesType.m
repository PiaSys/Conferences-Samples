// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingGermanyMoviesType.h"

@interface MSGraphRatingGermanyMoviesType () {
    MSGraphRatingGermanyMoviesTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingGermanyMoviesTypeValue enumValue;
@end

@implementation MSGraphRatingGermanyMoviesType

+ (MSGraphRatingGermanyMoviesType*) allAllowed {
    static MSGraphRatingGermanyMoviesType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingGermanyMoviesType alloc] init];
        _allAllowed.enumValue = MSGraphRatingGermanyMoviesTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingGermanyMoviesType*) allBlocked {
    static MSGraphRatingGermanyMoviesType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingGermanyMoviesType alloc] init];
        _allBlocked.enumValue = MSGraphRatingGermanyMoviesTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingGermanyMoviesType*) general {
    static MSGraphRatingGermanyMoviesType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingGermanyMoviesType alloc] init];
        _general.enumValue = MSGraphRatingGermanyMoviesTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingGermanyMoviesType*) agesAbove6 {
    static MSGraphRatingGermanyMoviesType *_agesAbove6;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove6 = [[MSGraphRatingGermanyMoviesType alloc] init];
        _agesAbove6.enumValue = MSGraphRatingGermanyMoviesTypeAgesAbove6;
    });
    return _agesAbove6;
}
+ (MSGraphRatingGermanyMoviesType*) agesAbove12 {
    static MSGraphRatingGermanyMoviesType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingGermanyMoviesType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingGermanyMoviesTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingGermanyMoviesType*) agesAbove16 {
    static MSGraphRatingGermanyMoviesType *_agesAbove16;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove16 = [[MSGraphRatingGermanyMoviesType alloc] init];
        _agesAbove16.enumValue = MSGraphRatingGermanyMoviesTypeAgesAbove16;
    });
    return _agesAbove16;
}
+ (MSGraphRatingGermanyMoviesType*) adults {
    static MSGraphRatingGermanyMoviesType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingGermanyMoviesType alloc] init];
        _adults.enumValue = MSGraphRatingGermanyMoviesTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingGermanyMoviesType*) UnknownEnumValue {
    static MSGraphRatingGermanyMoviesType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingGermanyMoviesType alloc] init];
        _unknownValue.enumValue = MSGraphRatingGermanyMoviesTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingGermanyMoviesType*) ratingGermanyMoviesTypeWithEnumValue:(MSGraphRatingGermanyMoviesTypeValue)val {

    switch(val)
    {
        case MSGraphRatingGermanyMoviesTypeAllAllowed:
            return [MSGraphRatingGermanyMoviesType allAllowed];
        case MSGraphRatingGermanyMoviesTypeAllBlocked:
            return [MSGraphRatingGermanyMoviesType allBlocked];
        case MSGraphRatingGermanyMoviesTypeGeneral:
            return [MSGraphRatingGermanyMoviesType general];
        case MSGraphRatingGermanyMoviesTypeAgesAbove6:
            return [MSGraphRatingGermanyMoviesType agesAbove6];
        case MSGraphRatingGermanyMoviesTypeAgesAbove12:
            return [MSGraphRatingGermanyMoviesType agesAbove12];
        case MSGraphRatingGermanyMoviesTypeAgesAbove16:
            return [MSGraphRatingGermanyMoviesType agesAbove16];
        case MSGraphRatingGermanyMoviesTypeAdults:
            return [MSGraphRatingGermanyMoviesType adults];
        case MSGraphRatingGermanyMoviesTypeEndOfEnum:
        default:
            return [MSGraphRatingGermanyMoviesType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingGermanyMoviesTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingGermanyMoviesTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingGermanyMoviesTypeGeneral:
            return @"general";
        case MSGraphRatingGermanyMoviesTypeAgesAbove6:
            return @"agesAbove6";
        case MSGraphRatingGermanyMoviesTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingGermanyMoviesTypeAgesAbove16:
            return @"agesAbove16";
        case MSGraphRatingGermanyMoviesTypeAdults:
            return @"adults";
        case MSGraphRatingGermanyMoviesTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingGermanyMoviesTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingGermanyMoviesType)

- (MSGraphRatingGermanyMoviesType*) toMSGraphRatingGermanyMoviesType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingGermanyMoviesType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingGermanyMoviesType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingGermanyMoviesType general];
    }
    else if([self isEqualToString:@"agesAbove6"])
    {
          return [MSGraphRatingGermanyMoviesType agesAbove6];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingGermanyMoviesType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove16"])
    {
          return [MSGraphRatingGermanyMoviesType agesAbove16];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingGermanyMoviesType adults];
    }
    else {
        return [MSGraphRatingGermanyMoviesType UnknownEnumValue];
    }
}

@end
