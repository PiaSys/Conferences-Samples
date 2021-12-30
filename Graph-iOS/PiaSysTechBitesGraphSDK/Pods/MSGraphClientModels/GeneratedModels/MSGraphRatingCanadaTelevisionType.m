// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingCanadaTelevisionType.h"

@interface MSGraphRatingCanadaTelevisionType () {
    MSGraphRatingCanadaTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingCanadaTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingCanadaTelevisionType

+ (MSGraphRatingCanadaTelevisionType*) allAllowed {
    static MSGraphRatingCanadaTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingCanadaTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingCanadaTelevisionType*) allBlocked {
    static MSGraphRatingCanadaTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingCanadaTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingCanadaTelevisionType*) children {
    static MSGraphRatingCanadaTelevisionType *_children;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _children = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _children.enumValue = MSGraphRatingCanadaTelevisionTypeChildren;
    });
    return _children;
}
+ (MSGraphRatingCanadaTelevisionType*) childrenAbove8 {
    static MSGraphRatingCanadaTelevisionType *_childrenAbove8;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _childrenAbove8 = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _childrenAbove8.enumValue = MSGraphRatingCanadaTelevisionTypeChildrenAbove8;
    });
    return _childrenAbove8;
}
+ (MSGraphRatingCanadaTelevisionType*) general {
    static MSGraphRatingCanadaTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingCanadaTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingCanadaTelevisionType*) parentalGuidance {
    static MSGraphRatingCanadaTelevisionType *_parentalGuidance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalGuidance = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _parentalGuidance.enumValue = MSGraphRatingCanadaTelevisionTypeParentalGuidance;
    });
    return _parentalGuidance;
}
+ (MSGraphRatingCanadaTelevisionType*) agesAbove14 {
    static MSGraphRatingCanadaTelevisionType *_agesAbove14;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove14 = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _agesAbove14.enumValue = MSGraphRatingCanadaTelevisionTypeAgesAbove14;
    });
    return _agesAbove14;
}
+ (MSGraphRatingCanadaTelevisionType*) agesAbove18 {
    static MSGraphRatingCanadaTelevisionType *_agesAbove18;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove18 = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _agesAbove18.enumValue = MSGraphRatingCanadaTelevisionTypeAgesAbove18;
    });
    return _agesAbove18;
}

+ (MSGraphRatingCanadaTelevisionType*) UnknownEnumValue {
    static MSGraphRatingCanadaTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingCanadaTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingCanadaTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingCanadaTelevisionType*) ratingCanadaTelevisionTypeWithEnumValue:(MSGraphRatingCanadaTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingCanadaTelevisionTypeAllAllowed:
            return [MSGraphRatingCanadaTelevisionType allAllowed];
        case MSGraphRatingCanadaTelevisionTypeAllBlocked:
            return [MSGraphRatingCanadaTelevisionType allBlocked];
        case MSGraphRatingCanadaTelevisionTypeChildren:
            return [MSGraphRatingCanadaTelevisionType children];
        case MSGraphRatingCanadaTelevisionTypeChildrenAbove8:
            return [MSGraphRatingCanadaTelevisionType childrenAbove8];
        case MSGraphRatingCanadaTelevisionTypeGeneral:
            return [MSGraphRatingCanadaTelevisionType general];
        case MSGraphRatingCanadaTelevisionTypeParentalGuidance:
            return [MSGraphRatingCanadaTelevisionType parentalGuidance];
        case MSGraphRatingCanadaTelevisionTypeAgesAbove14:
            return [MSGraphRatingCanadaTelevisionType agesAbove14];
        case MSGraphRatingCanadaTelevisionTypeAgesAbove18:
            return [MSGraphRatingCanadaTelevisionType agesAbove18];
        case MSGraphRatingCanadaTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingCanadaTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingCanadaTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingCanadaTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingCanadaTelevisionTypeChildren:
            return @"children";
        case MSGraphRatingCanadaTelevisionTypeChildrenAbove8:
            return @"childrenAbove8";
        case MSGraphRatingCanadaTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingCanadaTelevisionTypeParentalGuidance:
            return @"parentalGuidance";
        case MSGraphRatingCanadaTelevisionTypeAgesAbove14:
            return @"agesAbove14";
        case MSGraphRatingCanadaTelevisionTypeAgesAbove18:
            return @"agesAbove18";
        case MSGraphRatingCanadaTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingCanadaTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingCanadaTelevisionType)

- (MSGraphRatingCanadaTelevisionType*) toMSGraphRatingCanadaTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingCanadaTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingCanadaTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"children"])
    {
          return [MSGraphRatingCanadaTelevisionType children];
    }
    else if([self isEqualToString:@"childrenAbove8"])
    {
          return [MSGraphRatingCanadaTelevisionType childrenAbove8];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingCanadaTelevisionType general];
    }
    else if([self isEqualToString:@"parentalGuidance"])
    {
          return [MSGraphRatingCanadaTelevisionType parentalGuidance];
    }
    else if([self isEqualToString:@"agesAbove14"])
    {
          return [MSGraphRatingCanadaTelevisionType agesAbove14];
    }
    else if([self isEqualToString:@"agesAbove18"])
    {
          return [MSGraphRatingCanadaTelevisionType agesAbove18];
    }
    else {
        return [MSGraphRatingCanadaTelevisionType UnknownEnumValue];
    }
}

@end
