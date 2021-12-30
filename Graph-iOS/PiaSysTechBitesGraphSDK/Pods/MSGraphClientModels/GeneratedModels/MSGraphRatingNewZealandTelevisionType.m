// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingNewZealandTelevisionType.h"

@interface MSGraphRatingNewZealandTelevisionType () {
    MSGraphRatingNewZealandTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingNewZealandTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingNewZealandTelevisionType

+ (MSGraphRatingNewZealandTelevisionType*) allAllowed {
    static MSGraphRatingNewZealandTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingNewZealandTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingNewZealandTelevisionType*) allBlocked {
    static MSGraphRatingNewZealandTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingNewZealandTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingNewZealandTelevisionType*) general {
    static MSGraphRatingNewZealandTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingNewZealandTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingNewZealandTelevisionType*) parentalGuidance {
    static MSGraphRatingNewZealandTelevisionType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingNewZealandTelevisionTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingNewZealandTelevisionType*) adults {
    static MSGraphRatingNewZealandTelevisionType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _adults.enumValue = MSGraphRatingNewZealandTelevisionTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingNewZealandTelevisionType*) UnknownEnumValue {
    static MSGraphRatingNewZealandTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingNewZealandTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingNewZealandTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingNewZealandTelevisionType*) ratingNewZealandTelevisionTypeWithEnumValue:(MSGraphRatingNewZealandTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingNewZealandTelevisionTypeAllAllowed:
            return [MSGraphRatingNewZealandTelevisionType allAllowed];
        case MSGraphRatingNewZealandTelevisionTypeAllBlocked:
            return [MSGraphRatingNewZealandTelevisionType allBlocked];
        case MSGraphRatingNewZealandTelevisionTypeGeneral:
            return [MSGraphRatingNewZealandTelevisionType general];
        case MSGraphRatingNewZealandTelevisionTypeParentalGuidance:
            return [MSGraphRatingNewZealandTelevisionType parentalGuidance];
        case MSGraphRatingNewZealandTelevisionTypeAdults:
            return [MSGraphRatingNewZealandTelevisionType adults];
        case MSGraphRatingNewZealandTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingNewZealandTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingNewZealandTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingNewZealandTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingNewZealandTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingNewZealandTelevisionTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingNewZealandTelevisionTypeAdults:
            return @"adults";
        case MSGraphRatingNewZealandTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingNewZealandTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingNewZealandTelevisionType)

- (MSGraphRatingNewZealandTelevisionType*) toMSGraphRatingNewZealandTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingNewZealandTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingNewZealandTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingNewZealandTelevisionType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingNewZealandTelevisionType parentalGuidance];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingNewZealandTelevisionType adults];
    }
    else {
        return [MSGraphRatingNewZealandTelevisionType UnknownEnumValue];
    }
}

@end
