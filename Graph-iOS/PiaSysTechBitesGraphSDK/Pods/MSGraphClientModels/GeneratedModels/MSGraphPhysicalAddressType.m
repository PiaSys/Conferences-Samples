// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPhysicalAddressType.h"

@interface MSGraphPhysicalAddressType () {
    MSGraphPhysicalAddressTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPhysicalAddressTypeValue enumValue;
@end

@implementation MSGraphPhysicalAddressType

+ (MSGraphPhysicalAddressType*) unknown {
    static MSGraphPhysicalAddressType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphPhysicalAddressType alloc] init];
        _unknown.enumValue = MSGraphPhysicalAddressTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphPhysicalAddressType*) home {
    static MSGraphPhysicalAddressType *_home;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _home = [[MSGraphPhysicalAddressType alloc] init];
        _home.enumValue = MSGraphPhysicalAddressTypeHome;
    });
    return _home;
}
+ (MSGraphPhysicalAddressType*) business {
    static MSGraphPhysicalAddressType *_business;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _business = [[MSGraphPhysicalAddressType alloc] init];
        _business.enumValue = MSGraphPhysicalAddressTypeBusiness;
    });
    return _business;
}
+ (MSGraphPhysicalAddressType*) other {
    static MSGraphPhysicalAddressType *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphPhysicalAddressType alloc] init];
        _other.enumValue = MSGraphPhysicalAddressTypeOther;
    });
    return _other;
}

+ (MSGraphPhysicalAddressType*) UnknownEnumValue {
    static MSGraphPhysicalAddressType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPhysicalAddressType alloc] init];
        _unknownValue.enumValue = MSGraphPhysicalAddressTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPhysicalAddressType*) physicalAddressTypeWithEnumValue:(MSGraphPhysicalAddressTypeValue)val {

    switch(val)
    {
        case MSGraphPhysicalAddressTypeUnknown:
            return [MSGraphPhysicalAddressType unknown];
        case MSGraphPhysicalAddressTypeHome:
            return [MSGraphPhysicalAddressType home];
        case MSGraphPhysicalAddressTypeBusiness:
            return [MSGraphPhysicalAddressType business];
        case MSGraphPhysicalAddressTypeOther:
            return [MSGraphPhysicalAddressType other];
        case MSGraphPhysicalAddressTypeEndOfEnum:
        default:
            return [MSGraphPhysicalAddressType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPhysicalAddressTypeUnknown:
            return @"unknown";
        case MSGraphPhysicalAddressTypeHome:
            return @"home";
        case MSGraphPhysicalAddressTypeBusiness:
            return @"business";
        case MSGraphPhysicalAddressTypeOther:
            return @"other";
        case MSGraphPhysicalAddressTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPhysicalAddressTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPhysicalAddressType)

- (MSGraphPhysicalAddressType*) toMSGraphPhysicalAddressType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphPhysicalAddressType unknown];
    }
    else if([self isEqualToString:@"home"])
    {
          return [MSGraphPhysicalAddressType home];
    }
    else if([self isEqualToString:@"business"])
    {
          return [MSGraphPhysicalAddressType business];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphPhysicalAddressType other];
    }
    else {
        return [MSGraphPhysicalAddressType UnknownEnumValue];
    }
}

@end
