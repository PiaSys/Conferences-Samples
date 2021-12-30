// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingUnitedKingdomTelevisionType.h"

@interface MSGraphRatingUnitedKingdomTelevisionType () {
    MSGraphRatingUnitedKingdomTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingUnitedKingdomTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingUnitedKingdomTelevisionType

+ (MSGraphRatingUnitedKingdomTelevisionType*) allAllowed {
    static MSGraphRatingUnitedKingdomTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingUnitedKingdomTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingUnitedKingdomTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingUnitedKingdomTelevisionType*) allBlocked {
    static MSGraphRatingUnitedKingdomTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingUnitedKingdomTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingUnitedKingdomTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingUnitedKingdomTelevisionType*) caution {
    static MSGraphRatingUnitedKingdomTelevisionType *_caution;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _caution = [[MSGraphRatingUnitedKingdomTelevisionType alloc] init];
        _caution.enumValue = MSGraphRatingUnitedKingdomTelevisionTypeCaution;
    });
    return _caution;
}

+ (MSGraphRatingUnitedKingdomTelevisionType*) UnknownEnumValue {
    static MSGraphRatingUnitedKingdomTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingUnitedKingdomTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingUnitedKingdomTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingUnitedKingdomTelevisionType*) ratingUnitedKingdomTelevisionTypeWithEnumValue:(MSGraphRatingUnitedKingdomTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingUnitedKingdomTelevisionTypeAllAllowed:
            return [MSGraphRatingUnitedKingdomTelevisionType allAllowed];
        case MSGraphRatingUnitedKingdomTelevisionTypeAllBlocked:
            return [MSGraphRatingUnitedKingdomTelevisionType allBlocked];
        case MSGraphRatingUnitedKingdomTelevisionTypeCaution:
            return [MSGraphRatingUnitedKingdomTelevisionType caution];
        case MSGraphRatingUnitedKingdomTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingUnitedKingdomTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingUnitedKingdomTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingUnitedKingdomTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingUnitedKingdomTelevisionTypeCaution:
            return @"caution";
        case MSGraphRatingUnitedKingdomTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingUnitedKingdomTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingUnitedKingdomTelevisionType)

- (MSGraphRatingUnitedKingdomTelevisionType*) toMSGraphRatingUnitedKingdomTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingUnitedKingdomTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingUnitedKingdomTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"caution"])
    {
          return [MSGraphRatingUnitedKingdomTelevisionType caution];
    }
    else {
        return [MSGraphRatingUnitedKingdomTelevisionType UnknownEnumValue];
    }
}

@end
