// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedStatesTelevisionType.h"

@interface MSGraphRatingUnitedStatesTelevisionType () {
    MSGraphRatingUnitedStatesTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingUnitedStatesTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingUnitedStatesTelevisionType

+ (MSGraphRatingUnitedStatesTelevisionType*) allAllowed {
    static MSGraphRatingUnitedStatesTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingUnitedStatesTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) allBlocked {
    static MSGraphRatingUnitedStatesTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingUnitedStatesTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) childrenAll {
    static MSGraphRatingUnitedStatesTelevisionType *_childrenAll;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _childrenAll = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _childrenAll.enumValue = MSGraphRatingUnitedStatesTelevisionTypeChildrenAll;
    });
    return _childrenAll;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) childrenAbove7 {
    static MSGraphRatingUnitedStatesTelevisionType *_childrenAbove7;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _childrenAbove7 = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _childrenAbove7.enumValue = MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove7;
    });
    return _childrenAbove7;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) general {
    static MSGraphRatingUnitedStatesTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingUnitedStatesTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) parentalGuidance {
    static MSGraphRatingUnitedStatesTelevisionType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingUnitedStatesTelevisionTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) childrenAbove14 {
    static MSGraphRatingUnitedStatesTelevisionType *_childrenAbove14;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _childrenAbove14 = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _childrenAbove14.enumValue = MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove14;
    });
    return _childrenAbove14;
}
+ (MSGraphRatingUnitedStatesTelevisionType*) adults {
    static MSGraphRatingUnitedStatesTelevisionType *_adults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _adults = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _adults.enumValue = MSGraphRatingUnitedStatesTelevisionTypeAdults;
    });
    return _adults;
}

+ (MSGraphRatingUnitedStatesTelevisionType*) UnknownEnumValue {
    static MSGraphRatingUnitedStatesTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingUnitedStatesTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingUnitedStatesTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingUnitedStatesTelevisionType*) ratingUnitedStatesTelevisionTypeWithEnumValue:(MSGraphRatingUnitedStatesTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingUnitedStatesTelevisionTypeAllAllowed:
            return [MSGraphRatingUnitedStatesTelevisionType allAllowed];
        case MSGraphRatingUnitedStatesTelevisionTypeAllBlocked:
            return [MSGraphRatingUnitedStatesTelevisionType allBlocked];
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAll:
            return [MSGraphRatingUnitedStatesTelevisionType childrenAll];
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove7:
            return [MSGraphRatingUnitedStatesTelevisionType childrenAbove7];
        case MSGraphRatingUnitedStatesTelevisionTypeGeneral:
            return [MSGraphRatingUnitedStatesTelevisionType general];
        case MSGraphRatingUnitedStatesTelevisionTypeParentalGuidance:
            return [MSGraphRatingUnitedStatesTelevisionType parentalGuidance];
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove14:
            return [MSGraphRatingUnitedStatesTelevisionType childrenAbove14];
        case MSGraphRatingUnitedStatesTelevisionTypeAdults:
            return [MSGraphRatingUnitedStatesTelevisionType adults];
        case MSGraphRatingUnitedStatesTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingUnitedStatesTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingUnitedStatesTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingUnitedStatesTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAll:
            return @"childrenAll";
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove7:
            return @"childrenAbove7";
        case MSGraphRatingUnitedStatesTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingUnitedStatesTelevisionTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingUnitedStatesTelevisionTypeChildrenAbove14:
            return @"childrenAbove14";
        case MSGraphRatingUnitedStatesTelevisionTypeAdults:
            return @"adults";
        case MSGraphRatingUnitedStatesTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingUnitedStatesTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingUnitedStatesTelevisionType)

- (MSGraphRatingUnitedStatesTelevisionType*) toMSGraphRatingUnitedStatesTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"childrenAll"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType childrenAll];
    }
    else if([self isEqualToString:@"childrenAbove7"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType childrenAbove7];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType parentalGuidance];
    }
    else if([self isEqualToString:@"childrenAbove14"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType childrenAbove14];
    }
    else if([self isEqualToString:@"adults"])
    {
          return [MSGraphRatingUnitedStatesTelevisionType adults];
    }
    else {
        return [MSGraphRatingUnitedStatesTelevisionType UnknownEnumValue];
    }
}

@end
