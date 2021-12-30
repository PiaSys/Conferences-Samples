// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamVisibilityType.h"

@interface MSGraphTeamVisibilityType () {
    MSGraphTeamVisibilityTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamVisibilityTypeValue enumValue;
@end

@implementation MSGraphTeamVisibilityType

+ (MSGraphTeamVisibilityType*) private {
    static MSGraphTeamVisibilityType *_private;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _private = [[MSGraphTeamVisibilityType alloc] init];
        _private.enumValue = MSGraphTeamVisibilityTypePrivate;
    });
    return _private;
}
+ (MSGraphTeamVisibilityType*) public {
    static MSGraphTeamVisibilityType *_public;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _public = [[MSGraphTeamVisibilityType alloc] init];
        _public.enumValue = MSGraphTeamVisibilityTypePublic;
    });
    return _public;
}
+ (MSGraphTeamVisibilityType*) hiddenMembership {
    static MSGraphTeamVisibilityType *_hiddenMembership;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hiddenMembership = [[MSGraphTeamVisibilityType alloc] init];
        _hiddenMembership.enumValue = MSGraphTeamVisibilityTypeHiddenMembership;
    });
    return _hiddenMembership;
}
+ (MSGraphTeamVisibilityType*) unknownFutureValue {
    static MSGraphTeamVisibilityType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamVisibilityType alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamVisibilityTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamVisibilityType*) UnknownEnumValue {
    static MSGraphTeamVisibilityType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamVisibilityType alloc] init];
        _unknownValue.enumValue = MSGraphTeamVisibilityTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamVisibilityType*) teamVisibilityTypeWithEnumValue:(MSGraphTeamVisibilityTypeValue)val {

    switch(val)
    {
        case MSGraphTeamVisibilityTypePrivate:
            return [MSGraphTeamVisibilityType private];
        case MSGraphTeamVisibilityTypePublic:
            return [MSGraphTeamVisibilityType public];
        case MSGraphTeamVisibilityTypeHiddenMembership:
            return [MSGraphTeamVisibilityType hiddenMembership];
        case MSGraphTeamVisibilityTypeUnknownFutureValue:
            return [MSGraphTeamVisibilityType unknownFutureValue];
        case MSGraphTeamVisibilityTypeEndOfEnum:
        default:
            return [MSGraphTeamVisibilityType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamVisibilityTypePrivate:
            return @"private";
        case MSGraphTeamVisibilityTypePublic:
            return @"public";
        case MSGraphTeamVisibilityTypeHiddenMembership:
            return @"hiddenMembership";
        case MSGraphTeamVisibilityTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamVisibilityTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamVisibilityTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamVisibilityType)

- (MSGraphTeamVisibilityType*) toMSGraphTeamVisibilityType{

    if([self isEqualToString:@"private"])
    {
          return [MSGraphTeamVisibilityType private];
    }
    else if([self isEqualToString:@"public"])
    {
          return [MSGraphTeamVisibilityType public];
    }
    else if([self isEqualToString:@"hiddenMembership"])
    {
          return [MSGraphTeamVisibilityType hiddenMembership];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamVisibilityType unknownFutureValue];
    }
    else {
        return [MSGraphTeamVisibilityType UnknownEnumValue];
    }
}

@end
