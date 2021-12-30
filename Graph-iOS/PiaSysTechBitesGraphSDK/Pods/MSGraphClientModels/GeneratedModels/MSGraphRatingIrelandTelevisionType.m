// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingIrelandTelevisionType.h"

@interface MSGraphRatingIrelandTelevisionType () {
    MSGraphRatingIrelandTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingIrelandTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingIrelandTelevisionType

+ (MSGraphRatingIrelandTelevisionType*) allAllowed {
    static MSGraphRatingIrelandTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingIrelandTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingIrelandTelevisionType*) allBlocked {
    static MSGraphRatingIrelandTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingIrelandTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingIrelandTelevisionType*) general {
    static MSGraphRatingIrelandTelevisionType *_general;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _general = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _general.enumValue = MSGraphRatingIrelandTelevisionTypeGeneral;
    });
    return _general;
}
+ (MSGraphRatingIrelandTelevisionType*) children {
    static MSGraphRatingIrelandTelevisionType *_children;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _children = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _children.enumValue = MSGraphRatingIrelandTelevisionTypeChildren;
    });
    return _children;
}
+ (MSGraphRatingIrelandTelevisionType*) youngAdults {
    static MSGraphRatingIrelandTelevisionType *_youngAdults;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _youngAdults = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _youngAdults.enumValue = MSGraphRatingIrelandTelevisionTypeYoungAdults;
    });
    return _youngAdults;
}
+ (MSGraphRatingIrelandTelevisionType*) parentalSupervision {
    static MSGraphRatingIrelandTelevisionType *_parentalSupervision;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _parentalSupervision = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _parentalSupervision.enumValue = MSGraphRatingIrelandTelevisionTypeParentalSupervision;
    });
    return _parentalSupervision;
}
+ (MSGraphRatingIrelandTelevisionType*) mature {
    static MSGraphRatingIrelandTelevisionType *_mature;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mature = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _mature.enumValue = MSGraphRatingIrelandTelevisionTypeMature;
    });
    return _mature;
}

+ (MSGraphRatingIrelandTelevisionType*) UnknownEnumValue {
    static MSGraphRatingIrelandTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingIrelandTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingIrelandTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingIrelandTelevisionType*) ratingIrelandTelevisionTypeWithEnumValue:(MSGraphRatingIrelandTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingIrelandTelevisionTypeAllAllowed:
            return [MSGraphRatingIrelandTelevisionType allAllowed];
        case MSGraphRatingIrelandTelevisionTypeAllBlocked:
            return [MSGraphRatingIrelandTelevisionType allBlocked];
        case MSGraphRatingIrelandTelevisionTypeGeneral:
            return [MSGraphRatingIrelandTelevisionType general];
        case MSGraphRatingIrelandTelevisionTypeChildren:
            return [MSGraphRatingIrelandTelevisionType children];
        case MSGraphRatingIrelandTelevisionTypeYoungAdults:
            return [MSGraphRatingIrelandTelevisionType youngAdults];
        case MSGraphRatingIrelandTelevisionTypeParentalSupervision:
            return [MSGraphRatingIrelandTelevisionType parentalSupervision];
        case MSGraphRatingIrelandTelevisionTypeMature:
            return [MSGraphRatingIrelandTelevisionType mature];
        case MSGraphRatingIrelandTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingIrelandTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingIrelandTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingIrelandTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingIrelandTelevisionTypeGeneral:
            return @"general";
        case MSGraphRatingIrelandTelevisionTypeChildren:
            return @"children";
        case MSGraphRatingIrelandTelevisionTypeYoungAdults:
            return @"youngAdults";
        case MSGraphRatingIrelandTelevisionTypeParentalSupervision:
            return @"parentalSupervision";
        case MSGraphRatingIrelandTelevisionTypeMature:
            return @"mature";
        case MSGraphRatingIrelandTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingIrelandTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingIrelandTelevisionType)

- (MSGraphRatingIrelandTelevisionType*) toMSGraphRatingIrelandTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingIrelandTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingIrelandTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"general"])
    {
          return [MSGraphRatingIrelandTelevisionType general];
    }
    else if([self isEqualToString:@"children"])
    {
          return [MSGraphRatingIrelandTelevisionType children];
    }
    else if([self isEqualToString:@"youngAdults"])
    {
          return [MSGraphRatingIrelandTelevisionType youngAdults];
    }
    else if([self isEqualToString:@"parentalSupervision"])
    {
          return [MSGraphRatingIrelandTelevisionType parentalSupervision];
    }
    else if([self isEqualToString:@"mature"])
    {
          return [MSGraphRatingIrelandTelevisionType mature];
    }
    else {
        return [MSGraphRatingIrelandTelevisionType UnknownEnumValue];
    }
}

@end
