// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSharedPCAllowedAccountType.h"

@interface MSGraphSharedPCAllowedAccountType () {
    MSGraphSharedPCAllowedAccountTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSharedPCAllowedAccountTypeValue enumValue;
@end

@implementation MSGraphSharedPCAllowedAccountType

+ (MSGraphSharedPCAllowedAccountType*) guest {
    static MSGraphSharedPCAllowedAccountType *_guest;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _guest = [[MSGraphSharedPCAllowedAccountType alloc] init];
        _guest.enumValue = MSGraphSharedPCAllowedAccountTypeGuest;
    });
    return _guest;
}
+ (MSGraphSharedPCAllowedAccountType*) domain {
    static MSGraphSharedPCAllowedAccountType *_domain;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _domain = [[MSGraphSharedPCAllowedAccountType alloc] init];
        _domain.enumValue = MSGraphSharedPCAllowedAccountTypeDomain;
    });
    return _domain;
}

+ (MSGraphSharedPCAllowedAccountType*) UnknownEnumValue {
    static MSGraphSharedPCAllowedAccountType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSharedPCAllowedAccountType alloc] init];
        _unknownValue.enumValue = MSGraphSharedPCAllowedAccountTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSharedPCAllowedAccountType*) sharedPCAllowedAccountTypeWithEnumValue:(MSGraphSharedPCAllowedAccountTypeValue)val {

    switch(val)
    {
        case MSGraphSharedPCAllowedAccountTypeGuest:
            return [MSGraphSharedPCAllowedAccountType guest];
        case MSGraphSharedPCAllowedAccountTypeDomain:
            return [MSGraphSharedPCAllowedAccountType domain];
        case MSGraphSharedPCAllowedAccountTypeEndOfEnum:
        default:
            return [MSGraphSharedPCAllowedAccountType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSharedPCAllowedAccountTypeGuest:
            return @"guest";
        case MSGraphSharedPCAllowedAccountTypeDomain:
            return @"domain";
        case MSGraphSharedPCAllowedAccountTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSharedPCAllowedAccountTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSharedPCAllowedAccountType)

- (MSGraphSharedPCAllowedAccountType*) toMSGraphSharedPCAllowedAccountType{

    if([self isEqualToString:@"guest"])
    {
          return [MSGraphSharedPCAllowedAccountType guest];
    }
    else if([self isEqualToString:@"domain"])
    {
          return [MSGraphSharedPCAllowedAccountType domain];
    }
    else {
        return [MSGraphSharedPCAllowedAccountType UnknownEnumValue];
    }
}

@end
