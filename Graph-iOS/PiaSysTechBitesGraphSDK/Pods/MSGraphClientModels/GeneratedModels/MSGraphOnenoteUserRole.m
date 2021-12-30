// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphOnenoteUserRole.h"

@interface MSGraphOnenoteUserRole () {
    MSGraphOnenoteUserRoleValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphOnenoteUserRoleValue enumValue;
@end

@implementation MSGraphOnenoteUserRole

+ (MSGraphOnenoteUserRole*) none {
    static MSGraphOnenoteUserRole *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphOnenoteUserRole alloc] init];
        _none.enumValue = MSGraphOnenoteUserRoleNone;
    });
    return _none;
}
+ (MSGraphOnenoteUserRole*) owner {
    static MSGraphOnenoteUserRole *_owner;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _owner = [[MSGraphOnenoteUserRole alloc] init];
        _owner.enumValue = MSGraphOnenoteUserRoleOwner;
    });
    return _owner;
}
+ (MSGraphOnenoteUserRole*) contributor {
    static MSGraphOnenoteUserRole *_contributor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _contributor = [[MSGraphOnenoteUserRole alloc] init];
        _contributor.enumValue = MSGraphOnenoteUserRoleContributor;
    });
    return _contributor;
}
+ (MSGraphOnenoteUserRole*) reader {
    static MSGraphOnenoteUserRole *_reader;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _reader = [[MSGraphOnenoteUserRole alloc] init];
        _reader.enumValue = MSGraphOnenoteUserRoleReader;
    });
    return _reader;
}

+ (MSGraphOnenoteUserRole*) UnknownEnumValue {
    static MSGraphOnenoteUserRole *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphOnenoteUserRole alloc] init];
        _unknownValue.enumValue = MSGraphOnenoteUserRoleEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphOnenoteUserRole*) onenoteUserRoleWithEnumValue:(MSGraphOnenoteUserRoleValue)val {

    switch(val)
    {
        case MSGraphOnenoteUserRoleOwner:
            return [MSGraphOnenoteUserRole owner];
        case MSGraphOnenoteUserRoleContributor:
            return [MSGraphOnenoteUserRole contributor];
        case MSGraphOnenoteUserRoleReader:
            return [MSGraphOnenoteUserRole reader];
        case MSGraphOnenoteUserRoleNone:
            return [MSGraphOnenoteUserRole none];
        case MSGraphOnenoteUserRoleEndOfEnum:
        default:
            return [MSGraphOnenoteUserRole UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphOnenoteUserRoleOwner:
            return @"Owner";
        case MSGraphOnenoteUserRoleContributor:
            return @"Contributor";
        case MSGraphOnenoteUserRoleReader:
            return @"Reader";
        case MSGraphOnenoteUserRoleNone:
            return @"None";
        case MSGraphOnenoteUserRoleEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphOnenoteUserRoleValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphOnenoteUserRole)

- (MSGraphOnenoteUserRole*) toMSGraphOnenoteUserRole{

    if([self isEqualToString:@"Owner"])
    {
          return [MSGraphOnenoteUserRole owner];
    }
    else if([self isEqualToString:@"Contributor"])
    {
          return [MSGraphOnenoteUserRole contributor];
    }
    else if([self isEqualToString:@"Reader"])
    {
          return [MSGraphOnenoteUserRole reader];
    }
    else if([self isEqualToString:@"None"])
    {
          return [MSGraphOnenoteUserRole none];
    }
    else {
        return [MSGraphOnenoteUserRole UnknownEnumValue];
    }
}

@end
