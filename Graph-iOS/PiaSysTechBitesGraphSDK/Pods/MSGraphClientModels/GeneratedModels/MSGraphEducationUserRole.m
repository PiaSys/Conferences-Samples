// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEducationUserRole.h"

@interface MSGraphEducationUserRole () {
    MSGraphEducationUserRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEducationUserRoleValue enumValue;
@end

@implementation MSGraphEducationUserRole

+ (MSGraphEducationUserRole*) student {
    static MSGraphEducationUserRole *_student;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _student = [[MSGraphEducationUserRole alloc] init];
        _student.enumValue = MSGraphEducationUserRoleStudent;
    });
    return _student;
}
+ (MSGraphEducationUserRole*) teacher {
    static MSGraphEducationUserRole *_teacher;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _teacher = [[MSGraphEducationUserRole alloc] init];
        _teacher.enumValue = MSGraphEducationUserRoleTeacher;
    });
    return _teacher;
}
+ (MSGraphEducationUserRole*) none {
    static MSGraphEducationUserRole *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphEducationUserRole alloc] init];
        _none.enumValue = MSGraphEducationUserRoleNone;
    });
    return _none;
}
+ (MSGraphEducationUserRole*) unknownFutureValue {
    static MSGraphEducationUserRole *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEducationUserRole alloc] init];
        _unknownFutureValue.enumValue = MSGraphEducationUserRoleUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEducationUserRole*) UnknownEnumValue {
    static MSGraphEducationUserRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEducationUserRole alloc] init];
        _unknownValue.enumValue = MSGraphEducationUserRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEducationUserRole*) educationUserRoleWithEnumValue:(MSGraphEducationUserRoleValue)val {

    switch(val)
    {
        case MSGraphEducationUserRoleStudent:
            return [MSGraphEducationUserRole student];
        case MSGraphEducationUserRoleTeacher:
            return [MSGraphEducationUserRole teacher];
        case MSGraphEducationUserRoleNone:
            return [MSGraphEducationUserRole none];
        case MSGraphEducationUserRoleUnknownFutureValue:
            return [MSGraphEducationUserRole unknownFutureValue];
        case MSGraphEducationUserRoleEndOfEnum:
        default:
            return [MSGraphEducationUserRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEducationUserRoleStudent:
            return @"student";
        case MSGraphEducationUserRoleTeacher:
            return @"teacher";
        case MSGraphEducationUserRoleNone:
            return @"none";
        case MSGraphEducationUserRoleUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEducationUserRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEducationUserRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEducationUserRole)

- (MSGraphEducationUserRole*) toMSGraphEducationUserRole{

    if([self isEqualToString:@"student"])
    {
          return [MSGraphEducationUserRole student];
    }
    else if([self isEqualToString:@"teacher"])
    {
          return [MSGraphEducationUserRole teacher];
    }
    else if([self isEqualToString:@"none"])
    {
          return [MSGraphEducationUserRole none];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEducationUserRole unknownFutureValue];
    }
    else {
        return [MSGraphEducationUserRole UnknownEnumValue];
    }
}

@end
