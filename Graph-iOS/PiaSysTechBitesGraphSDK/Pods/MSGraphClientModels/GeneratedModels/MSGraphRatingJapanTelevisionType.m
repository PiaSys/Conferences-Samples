// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingJapanTelevisionType.h"

@interface MSGraphRatingJapanTelevisionType () {
    MSGraphRatingJapanTelevisionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingJapanTelevisionTypeValue enumValue;
@end

@implementation MSGraphRatingJapanTelevisionType

+ (MSGraphRatingJapanTelevisionType*) allAllowed {
    static MSGraphRatingJapanTelevisionType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingJapanTelevisionType alloc] init];
        _allAllowed.enumValue = MSGraphRatingJapanTelevisionTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingJapanTelevisionType*) allBlocked {
    static MSGraphRatingJapanTelevisionType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingJapanTelevisionType alloc] init];
        _allBlocked.enumValue = MSGraphRatingJapanTelevisionTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingJapanTelevisionType*) explicitAllowed {
    static MSGraphRatingJapanTelevisionType *_explicitAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _explicitAllowed = [[MSGraphRatingJapanTelevisionType alloc] init];
        _explicitAllowed.enumValue = MSGraphRatingJapanTelevisionTypeExplicitAllowed;
    });
    return _explicitAllowed;
}

+ (MSGraphRatingJapanTelevisionType*) UnknownEnumValue {
    static MSGraphRatingJapanTelevisionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingJapanTelevisionType alloc] init];
        _unknownValue.enumValue = MSGraphRatingJapanTelevisionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingJapanTelevisionType*) ratingJapanTelevisionTypeWithEnumValue:(MSGraphRatingJapanTelevisionTypeValue)val {

    switch(val)
    {
        case MSGraphRatingJapanTelevisionTypeAllAllowed:
            return [MSGraphRatingJapanTelevisionType allAllowed];
        case MSGraphRatingJapanTelevisionTypeAllBlocked:
            return [MSGraphRatingJapanTelevisionType allBlocked];
        case MSGraphRatingJapanTelevisionTypeExplicitAllowed:
            return [MSGraphRatingJapanTelevisionType explicitAllowed];
        case MSGraphRatingJapanTelevisionTypeEndOfEnum:
        default:
            return [MSGraphRatingJapanTelevisionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingJapanTelevisionTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingJapanTelevisionTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingJapanTelevisionTypeExplicitAllowed:
            return @"explicitAllowed";
        case MSGraphRatingJapanTelevisionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingJapanTelevisionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingJapanTelevisionType)

- (MSGraphRatingJapanTelevisionType*) toMSGraphRatingJapanTelevisionType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingJapanTelevisionType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingJapanTelevisionType allBlocked];
    }
    else if([self isEqualToString:@"explicitAllowed"])
    {
          return [MSGraphRatingJapanTelevisionType explicitAllowed];
    }
    else {
        return [MSGraphRatingJapanTelevisionType UnknownEnumValue];
    }
}

@end
