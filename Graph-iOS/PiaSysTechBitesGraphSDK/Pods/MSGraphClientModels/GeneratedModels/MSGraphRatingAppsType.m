// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphRatingAppsType.h"

@interface MSGraphRatingAppsType () {
    MSGraphRatingAppsTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphRatingAppsTypeValue enumValue;
@end

@implementation MSGraphRatingAppsType

+ (MSGraphRatingAppsType*) allAllowed {
    static MSGraphRatingAppsType *_allAllowed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allAllowed = [[MSGraphRatingAppsType alloc] init];
        _allAllowed.enumValue = MSGraphRatingAppsTypeAllAllowed;
    });
    return _allAllowed;
}
+ (MSGraphRatingAppsType*) allBlocked {
    static MSGraphRatingAppsType *_allBlocked;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _allBlocked = [[MSGraphRatingAppsType alloc] init];
        _allBlocked.enumValue = MSGraphRatingAppsTypeAllBlocked;
    });
    return _allBlocked;
}
+ (MSGraphRatingAppsType*) agesAbove4 {
    static MSGraphRatingAppsType *_agesAbove4;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove4 = [[MSGraphRatingAppsType alloc] init];
        _agesAbove4.enumValue = MSGraphRatingAppsTypeAgesAbove4;
    });
    return _agesAbove4;
}
+ (MSGraphRatingAppsType*) agesAbove9 {
    static MSGraphRatingAppsType *_agesAbove9;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove9 = [[MSGraphRatingAppsType alloc] init];
        _agesAbove9.enumValue = MSGraphRatingAppsTypeAgesAbove9;
    });
    return _agesAbove9;
}
+ (MSGraphRatingAppsType*) agesAbove12 {
    static MSGraphRatingAppsType *_agesAbove12;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove12 = [[MSGraphRatingAppsType alloc] init];
        _agesAbove12.enumValue = MSGraphRatingAppsTypeAgesAbove12;
    });
    return _agesAbove12;
}
+ (MSGraphRatingAppsType*) agesAbove17 {
    static MSGraphRatingAppsType *_agesAbove17;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _agesAbove17 = [[MSGraphRatingAppsType alloc] init];
        _agesAbove17.enumValue = MSGraphRatingAppsTypeAgesAbove17;
    });
    return _agesAbove17;
}

+ (MSGraphRatingAppsType*) UnknownEnumValue {
    static MSGraphRatingAppsType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphRatingAppsType alloc] init];
        _unknownValue.enumValue = MSGraphRatingAppsTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphRatingAppsType*) ratingAppsTypeWithEnumValue:(MSGraphRatingAppsTypeValue)val {

    switch(val)
    {
        case MSGraphRatingAppsTypeAllAllowed:
            return [MSGraphRatingAppsType allAllowed];
        case MSGraphRatingAppsTypeAllBlocked:
            return [MSGraphRatingAppsType allBlocked];
        case MSGraphRatingAppsTypeAgesAbove4:
            return [MSGraphRatingAppsType agesAbove4];
        case MSGraphRatingAppsTypeAgesAbove9:
            return [MSGraphRatingAppsType agesAbove9];
        case MSGraphRatingAppsTypeAgesAbove12:
            return [MSGraphRatingAppsType agesAbove12];
        case MSGraphRatingAppsTypeAgesAbove17:
            return [MSGraphRatingAppsType agesAbove17];
        case MSGraphRatingAppsTypeEndOfEnum:
        default:
            return [MSGraphRatingAppsType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphRatingAppsTypeAllAllowed:
            return @"allAllowed";
        case MSGraphRatingAppsTypeAllBlocked:
            return @"allBlocked";
        case MSGraphRatingAppsTypeAgesAbove4:
            return @"agesAbove4";
        case MSGraphRatingAppsTypeAgesAbove9:
            return @"agesAbove9";
        case MSGraphRatingAppsTypeAgesAbove12:
            return @"agesAbove12";
        case MSGraphRatingAppsTypeAgesAbove17:
            return @"agesAbove17";
        case MSGraphRatingAppsTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphRatingAppsTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphRatingAppsType)

- (MSGraphRatingAppsType*) toMSGraphRatingAppsType{

    if([self isEqualToString:@"allAllowed"])
    {
          return [MSGraphRatingAppsType allAllowed];
    }
    else if([self isEqualToString:@"allBlocked"])
    {
          return [MSGraphRatingAppsType allBlocked];
    }
    else if([self isEqualToString:@"agesAbove4"])
    {
          return [MSGraphRatingAppsType agesAbove4];
    }
    else if([self isEqualToString:@"agesAbove9"])
    {
          return [MSGraphRatingAppsType agesAbove9];
    }
    else if([self isEqualToString:@"agesAbove12"])
    {
          return [MSGraphRatingAppsType agesAbove12];
    }
    else if([self isEqualToString:@"agesAbove17"])
    {
          return [MSGraphRatingAppsType agesAbove17];
    }
    else {
        return [MSGraphRatingAppsType UnknownEnumValue];
    }
}

@end
