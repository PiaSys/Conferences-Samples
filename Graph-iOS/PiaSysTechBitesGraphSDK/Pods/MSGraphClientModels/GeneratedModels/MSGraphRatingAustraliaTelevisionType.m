// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingAustraliaTelevisionType.h"

@interface MSGraphRatingAustraliaTelevisionType () {
    MSGraphRatingAustraliaTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingAustraliaTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingAustraliaTelevisionType

+ (MSGraphRatingAustraliaTelevisionType*) allAllowed {
    static MSGraphRatingAustraliaTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingAustraliaTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingAustraliaTelevisionType*) allBlocked {
    static MSGraphRatingAustraliaTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingAustraliaTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingAustraliaTelevisionType*) preschoolers {
    static MSGraphRatingAustraliaTelevisionType *_preschoolers;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preschoolers = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _preschoolers.enumValue = MSGraphRatingAustraliaTelevisionTypePreschoolers;
    });
    return _preschoolers;
}
+ (MSGraphRatingAustraliaTelevisionType*) children {
    static MSGraphRatingAustraliaTelevisionType *_children;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _children = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _children.enumValue = MSGraphRatingAustraliaTelevisionTypeChildren;
    });
    return _children;
}
+ (MSGraphRatingAustraliaTelevisionType*) general {
    static MSGraphRatingAustraliaTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingAustraliaTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingAustraliaTelevisionType*) parentalGuidance {
    static MSGraphRatingAustraliaTelevisionType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingAustraliaTelevisionTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingAustraliaTelevisionType*) mature {
    static MSGraphRatingAustraliaTelevisionType *_mature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mature = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _mature.enumValue = MSGraphRatingAustraliaTelevisionTypeMature;
    });
    return _mature;
}
+ (MSGraphRatingAustraliaTelevisionType*) agesAbove15 {
    static MSGraphRatingAustraliaTelevisionType *_agesAbove15;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15 = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _agesAbove15.enumValue = MSGraphRatingAustraliaTelevisionTypeAgesAbove15;
    });
    return _agesAbove15;
}
+ (MSGraphRatingAustraliaTelevisionType*) agesAbove15AdultViolence {
    static MSGraphRatingAustraliaTelevisionType *_agesAbove15AdultViolence;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove15AdultViolence = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _agesAbove15AdultViolence.enumValue = MSGraphRatingAustraliaTelevisionTypeAgesAbove15AdultViolence;
    });
    return _agesAbove15AdultViolence;
}

+ (MSGraphRatingAustraliaTelevisionType*) UnknownEnumValue {
    static MSGraphRatingAustraliaTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingAustraliaTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingAustraliaTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingAustraliaTelevisionType*) ratingAustraliaTelevisionTypeWithEnumValue:(MSGraphRatingAustraliaTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingAustraliaTelevisionTypeAllAllowed:
            return [MSGraphRatingAustraliaTelevisionType allAllowed];
        case MSGraphRatingAustraliaTelevisionTypeAllBlocked:
            return [MSGraphRatingAustraliaTelevisionType allBlocked];
        case MSGraphRatingAustraliaTelevisionTypePreschoolers:
            return [MSGraphRatingAustraliaTelevisionType preschoolers];
        case MSGraphRatingAustraliaTelevisionTypeChildren:
            return [MSGraphRatingAustraliaTelevisionType children];
        case MSGraphRatingAustraliaTelevisionTypeGeneral:
            return [MSGraphRatingAustraliaTelevisionType general];
        case MSGraphRatingAustraliaTelevisionTypeParentalGuidance:
            return [MSGraphRatingAustraliaTelevisionType parentalGuidance];
        case MSGraphRatingAustraliaTelevisionTypeMature:
            return [MSGraphRatingAustraliaTelevisionType mature];
        case MSGraphRatingAustraliaTelevisionTypeAgesAbove15:
            return [MSGraphRatingAustraliaTelevisionType agesAbove15];
        case MSGraphRatingAustraliaTelevisionTypeAgesAbove15AdultViolence:
            return [MSGraphRatingAustraliaTelevisionType agesAbove15AdultViolence];
        case MSGraphRatingAustraliaTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingAustraliaTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingAustraliaTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingAustraliaTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingAustraliaTelevisionTypePreschoolers:
            return @"preschoolers";
        case MSGraphRatingAustraliaTelevisionTypeChildren:
            return @"children";
        case MSGraphRatingAustraliaTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingAustraliaTelevisionTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingAustraliaTelevisionTypeMature:
            return @"mature";
        case MSGraphRatingAustraliaTelevisionTypeAgesAbove15:
            return @"agesAbove15";
        case MSGraphRatingAustraliaTelevisionTypeAgesAbove15AdultViolence:
            return @"agesAbove15AdultViolence";
        case MSGraphRatingAustraliaTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingAustraliaTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingAustraliaTelevisionType)

- (MSGraphRatingAustraliaTelevisionType*) toMSGraphRatingAustraliaTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingAustraliaTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingAustraliaTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"preschoolers"])
    {
          return [MSGraphRatingAustraliaTelevisionType preschoolers];
    }
    else if([self isEqualToString:@"children"])
    {
          return [MSGraphRatingAustraliaTelevisionType children];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingAustraliaTelevisionType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingAustraliaTelevisionType parentalGuidance];
    }
    else if([self isEqualToString:@"mature"])
    {
          return [MSGraphRatingAustraliaTelevisionType mature];
    }
    else if([self isEqualToString:@"agesAbove15"])
    {
          return [MSGraphRatingAustraliaTelevisionType agesAbove15];
    }
    else if([self isEqualToString:@"agesAbove15AdultViolence"])
    {
          return [MSGraphRatingAustraliaTelevisionType agesAbove15AdultViolence];
    }
    else {
        return [MSGraphRatingAustraliaTelevisionType UnknownEnumValue];
    }
}

@end
