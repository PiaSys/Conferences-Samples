// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedDeviceOwnerType.h"

@interface MSGraphManagedDeviceOwnerType () {
    MSGraphManagedDeviceOwnerTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedDeviceOwnerTypeValue enumValue;
@end

@implementation MSGraphManagedDeviceOwnerType

+ (MSGraphManagedDeviceOwnerType*) unknown {
    static MSGraphManagedDeviceOwnerType *_unknown;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknown = [[MSGraphManagedDeviceOwnerType alloc] init];
        _unknown.enumValue = MSGraphManagedDeviceOwnerTypeUnknown;
    });
    return _unknown;
}
+ (MSGraphManagedDeviceOwnerType*) company {
    static MSGraphManagedDeviceOwnerType *_company;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _company = [[MSGraphManagedDeviceOwnerType alloc] init];
        _company.enumValue = MSGraphManagedDeviceOwnerTypeCompany;
    });
    return _company;
}
+ (MSGraphManagedDeviceOwnerType*) personal {
    static MSGraphManagedDeviceOwnerType *_personal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _personal = [[MSGraphManagedDeviceOwnerType alloc] init];
        _personal.enumValue = MSGraphManagedDeviceOwnerTypePersonal;
    });
    return _personal;
}

+ (MSGraphManagedDeviceOwnerType*) UnknownEnumValue {
    static MSGraphManagedDeviceOwnerType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedDeviceOwnerType alloc] init];
        _unknownValue.enumValue = MSGraphManagedDeviceOwnerTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedDeviceOwnerType*) managedDeviceOwnerTypeWithEnumValue:(MSGraphManagedDeviceOwnerTypeValue)val {

    switch(val)
    {
        case MSGraphManagedDeviceOwnerTypeUnknown:
            return [MSGraphManagedDeviceOwnerType unknown];
        case MSGraphManagedDeviceOwnerTypeCompany:
            return [MSGraphManagedDeviceOwnerType company];
        case MSGraphManagedDeviceOwnerTypePersonal:
            return [MSGraphManagedDeviceOwnerType personal];
        case MSGraphManagedDeviceOwnerTypeEndOfEnum:
        default:
            return [MSGraphManagedDeviceOwnerType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedDeviceOwnerTypeUnknown:
            return @"unknown";
        case MSGraphManagedDeviceOwnerTypeCompany:
            return @"company";
        case MSGraphManagedDeviceOwnerTypePersonal:
            return @"personal";
        case MSGraphManagedDeviceOwnerTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedDeviceOwnerTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedDeviceOwnerType)

- (MSGraphManagedDeviceOwnerType*) toMSGraphManagedDeviceOwnerType{

    if([self isEqualToString:@"unknown"])
    {
          return [MSGraphManagedDeviceOwnerType unknown];
    }
    else if([self isEqualToString:@"company"])
    {
          return [MSGraphManagedDeviceOwnerType company];
    }
    else if([self isEqualToString:@"personal"])
    {
          return [MSGraphManagedDeviceOwnerType personal];
    }
    else {
        return [MSGraphManagedDeviceOwnerType UnknownEnumValue];
    }
}

@end
