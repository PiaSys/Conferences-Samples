// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationGender.h"

@interface MSGraphEducationGender () {
    MSGraphEducationGenderValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationGenderValue enumValue;
@end

@implementation MSGraphEducationGender

+ (MSGraphEducationGender*) female {
    static MSGraphEducationGender *_female;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _female = [[MSGraphEducationGender alloc] init];
        _female.enumValue = MSGraphEducationGenderFemale;
    });
    return _female;
}
+ (MSGraphEducationGender*) male {
    static MSGraphEducationGender *_male;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _male = [[MSGraphEducationGender alloc] init];
        _male.enumValue = MSGraphEducationGenderMale;
    });
    return _male;
}
+ (MSGraphEducationGender*) other {
    static MSGraphEducationGender *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphEducationGender alloc] init];
        _other.enumValue = MSGraphEducationGenderOther;
    });
    return _other;
}
+ (MSGraphEducationGender*) unknownFutureValue {
    static MSGraphEducationGender *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationGender alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationGenderUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationGender*) UnknownEnumValue {
    static MSGraphEducationGender *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationGender alloc] init];
        _unknownValue.enumValue = MSGraphEducationGenderEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationGender*) educationGenderWithEnumValue:(MSGraphEducationGenderValue)val {

    switch(val)
    {
        case MSGraphEducationGenderFemale:
            return [MSGraphEducationGender female];
        case MSGraphEducationGenderMale:
            return [MSGraphEducationGender male];
        case MSGraphEducationGenderOther:
            return [MSGraphEducationGender other];
        case MSGraphEducationGenderUnknownFutureValue:
            return [MSGraphEducationGender unknownFutureValue];
        case MSGraphEducationGenderEndOfEnum:
        default:
            return [MSGraphEducationGender UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationGenderFemale:
            return @"female";
        case MSGraphEducationGenderMale:
            return @"male";
        case MSGraphEducationGenderOther:
            return @"other";
        case MSGraphEducationGenderUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationGenderEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationGenderValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationGender)

- (MSGraphEducationGender*) toMSGraphEducationGender{

    if([self isEqualToString:@"female"])
    {
          return [MSGraphEducationGender female];
    }
    else if([self isEqualToString:@"male"])
    {
          return [MSGraphEducationGender male];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphEducationGender other];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationGender unknownFutureValue];
    }
    else {
        return [MSGraphEducationGender UnknownEnumValue];
    }
}

@end
