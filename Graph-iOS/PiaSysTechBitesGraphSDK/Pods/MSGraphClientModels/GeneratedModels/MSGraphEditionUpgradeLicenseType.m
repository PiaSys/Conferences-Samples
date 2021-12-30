// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEditionUpgradeLicenseType.h"

@interface MSGraphEditionUpgradeLicenseType () {
    MSGraphEditionUpgradeLicenseTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEditionUpgradeLicenseTypeValue enumValue;
@end

@implementation MSGraphEditionUpgradeLicenseType

+ (MSGraphEditionUpgradeLicenseType*) productKey {
    static MSGraphEditionUpgradeLicenseType *_productKey;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _productKey = [[MSGraphEditionUpgradeLicenseType alloc] init];
        _productKey.enumValue = MSGraphEditionUpgradeLicenseTypeProductKey;
    });
    return _productKey;
}
+ (MSGraphEditionUpgradeLicenseType*) licenseFile {
    static MSGraphEditionUpgradeLicenseType *_licenseFile;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _licenseFile = [[MSGraphEditionUpgradeLicenseType alloc] init];
        _licenseFile.enumValue = MSGraphEditionUpgradeLicenseTypeLicenseFile;
    });
    return _licenseFile;
}

+ (MSGraphEditionUpgradeLicenseType*) UnknownEnumValue {
    static MSGraphEditionUpgradeLicenseType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEditionUpgradeLicenseType alloc] init];
        _unknownValue.enumValue = MSGraphEditionUpgradeLicenseTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEditionUpgradeLicenseType*) editionUpgradeLicenseTypeWithEnumValue:(MSGraphEditionUpgradeLicenseTypeValue)val {

    switch(val)
    {
        case MSGraphEditionUpgradeLicenseTypeProductKey:
            return [MSGraphEditionUpgradeLicenseType productKey];
        case MSGraphEditionUpgradeLicenseTypeLicenseFile:
            return [MSGraphEditionUpgradeLicenseType licenseFile];
        case MSGraphEditionUpgradeLicenseTypeEndOfEnum:
        default:
            return [MSGraphEditionUpgradeLicenseType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEditionUpgradeLicenseTypeProductKey:
            return @"productKey";
        case MSGraphEditionUpgradeLicenseTypeLicenseFile:
            return @"licenseFile";
        case MSGraphEditionUpgradeLicenseTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEditionUpgradeLicenseTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEditionUpgradeLicenseType)

- (MSGraphEditionUpgradeLicenseType*) toMSGraphEditionUpgradeLicenseType{

    if([self isEqualToString:@"productKey"])
    {
          return [MSGraphEditionUpgradeLicenseType productKey];
    }
    else if([self isEqualToString:@"licenseFile"])
    {
          return [MSGraphEditionUpgradeLicenseType licenseFile];
    }
    else {
        return [MSGraphEditionUpgradeLicenseType UnknownEnumValue];
    }
}

@end
