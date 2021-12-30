// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAttendeeType.h"

@interface MSGraphAttendeeType () {
    MSGraphAttendeeTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAttendeeTypeValue enumValue;
@end

@implementation MSGraphAttendeeType

+ (MSGraphAttendeeType*) required {
    static MSGraphAttendeeType *_required;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _required = [[MSGraphAttendeeType alloc] init];
        _required.enumValue = MSGraphAttendeeTypeRequired;
    });
    return _required;
}
+ (MSGraphAttendeeType*) optional {
    static MSGraphAttendeeType *_optional;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _optional = [[MSGraphAttendeeType alloc] init];
        _optional.enumValue = MSGraphAttendeeTypeOptional;
    });
    return _optional;
}
+ (MSGraphAttendeeType*) resource {
    static MSGraphAttendeeType *_resource;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _resource = [[MSGraphAttendeeType alloc] init];
        _resource.enumValue = MSGraphAttendeeTypeResource;
    });
    return _resource;
}

+ (MSGraphAttendeeType*) UnknownEnumValue {
    static MSGraphAttendeeType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAttendeeType alloc] init];
        _unknownValue.enumValue = MSGraphAttendeeTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAttendeeType*) attendeeTypeWithEnumValue:(MSGraphAttendeeTypeValue)val {

    switch(val)
    {
        case MSGraphAttendeeTypeRequired:
            return [MSGraphAttendeeType required];
        case MSGraphAttendeeTypeOptional:
            return [MSGraphAttendeeType optional];
        case MSGraphAttendeeTypeResource:
            return [MSGraphAttendeeType resource];
        case MSGraphAttendeeTypeEndOfEnum:
        default:
            return [MSGraphAttendeeType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAttendeeTypeRequired:
            return @"required";
        case MSGraphAttendeeTypeOptional:
            return @"optional";
        case MSGraphAttendeeTypeResource:
            return @"resource";
        case MSGraphAttendeeTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAttendeeTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAttendeeType)

- (MSGraphAttendeeType*) toMSGraphAttendeeType{

    if([self isEqualToString:@"required"])
    {
          return [MSGraphAttendeeType required];
    }
    else if([self isEqualToString:@"optional"])
    {
          return [MSGraphAttendeeType optional];
    }
    else if([self isEqualToString:@"resource"])
    {
          return [MSGraphAttendeeType resource];
    }
    else {
        return [MSGraphAttendeeType UnknownEnumValue];
    }
}

@end
