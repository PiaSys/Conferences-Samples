// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphVppTokenAccountType.h"

@interface MSGraphVppTokenAccountType () {
    MSGraphVppTokenAccountTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphVppTokenAccountTypeValue enumValue;
@end

@implementation MSGraphVppTokenAccountType

+ (MSGraphVppTokenAccountType*) business {
    static MSGraphVppTokenAccountType *_business;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _business = [[MSGraphVppTokenAccountType alloc] init];
        _business.enumValue = MSGraphVppTokenAccountTypeBusiness;
    });
    return _business;
}
+ (MSGraphVppTokenAccountType*) education {
    static MSGraphVppTokenAccountType *_education;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _education = [[MSGraphVppTokenAccountType alloc] init];
        _education.enumValue = MSGraphVppTokenAccountTypeEducation;
    });
    return _education;
}

+ (MSGraphVppTokenAccountType*) UnknownEnumValue {
    static MSGraphVppTokenAccountType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphVppTokenAccountType alloc] init];
        _unknownValue.enumValue = MSGraphVppTokenAccountTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphVppTokenAccountType*) vppTokenAccountTypeWithEnumValue:(MSGraphVppTokenAccountTypeValue)val {

    switch(val)
    {
        case MSGraphVppTokenAccountTypeBusiness:
            return [MSGraphVppTokenAccountType business];
        case MSGraphVppTokenAccountTypeEducation:
            return [MSGraphVppTokenAccountType education];
        case MSGraphVppTokenAccountTypeEndOfEnum:
        default:
            return [MSGraphVppTokenAccountType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphVppTokenAccountTypeBusiness:
            return @"business";
        case MSGraphVppTokenAccountTypeEducation:
            return @"education";
        case MSGraphVppTokenAccountTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphVppTokenAccountTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphVppTokenAccountType)

- (MSGraphVppTokenAccountType*) toMSGraphVppTokenAccountType{

    if([self isEqualToString:@"business"])
    {
          return [MSGraphVppTokenAccountType business];
    }
    else if([self isEqualToString:@"education"])
    {
          return [MSGraphVppTokenAccountType education];
    }
    else {
        return [MSGraphVppTokenAccountType UnknownEnumValue];
    }
}

@end
