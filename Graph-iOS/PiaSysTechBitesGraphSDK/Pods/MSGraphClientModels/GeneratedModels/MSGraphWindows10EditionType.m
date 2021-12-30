// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWindows10EditionType.h"

@interface MSGraphWindows10EditionType () {
    MSGraphWindows10EditionTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWindows10EditionTypeValue enumValue;
@end

@implementation MSGraphWindows10EditionType

+ (MSGraphWindows10EditionType*) windows10Enterprise {
    static MSGraphWindows10EditionType *_windows10Enterprise;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10Enterprise = [[MSGraphWindows10EditionType alloc] init];
        _windows10Enterprise.enumValue = MSGraphWindows10EditionTypeWindows10Enterprise;
    });
    return _windows10Enterprise;
}
+ (MSGraphWindows10EditionType*) windows10EnterpriseN {
    static MSGraphWindows10EditionType *_windows10EnterpriseN;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10EnterpriseN = [[MSGraphWindows10EditionType alloc] init];
        _windows10EnterpriseN.enumValue = MSGraphWindows10EditionTypeWindows10EnterpriseN;
    });
    return _windows10EnterpriseN;
}
+ (MSGraphWindows10EditionType*) windows10Education {
    static MSGraphWindows10EditionType *_windows10Education;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10Education = [[MSGraphWindows10EditionType alloc] init];
        _windows10Education.enumValue = MSGraphWindows10EditionTypeWindows10Education;
    });
    return _windows10Education;
}
+ (MSGraphWindows10EditionType*) windows10EducationN {
    static MSGraphWindows10EditionType *_windows10EducationN;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10EducationN = [[MSGraphWindows10EditionType alloc] init];
        _windows10EducationN.enumValue = MSGraphWindows10EditionTypeWindows10EducationN;
    });
    return _windows10EducationN;
}
+ (MSGraphWindows10EditionType*) windows10MobileEnterprise {
    static MSGraphWindows10EditionType *_windows10MobileEnterprise;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10MobileEnterprise = [[MSGraphWindows10EditionType alloc] init];
        _windows10MobileEnterprise.enumValue = MSGraphWindows10EditionTypeWindows10MobileEnterprise;
    });
    return _windows10MobileEnterprise;
}
+ (MSGraphWindows10EditionType*) windows10HolographicEnterprise {
    static MSGraphWindows10EditionType *_windows10HolographicEnterprise;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10HolographicEnterprise = [[MSGraphWindows10EditionType alloc] init];
        _windows10HolographicEnterprise.enumValue = MSGraphWindows10EditionTypeWindows10HolographicEnterprise;
    });
    return _windows10HolographicEnterprise;
}
+ (MSGraphWindows10EditionType*) windows10Professional {
    static MSGraphWindows10EditionType *_windows10Professional;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10Professional = [[MSGraphWindows10EditionType alloc] init];
        _windows10Professional.enumValue = MSGraphWindows10EditionTypeWindows10Professional;
    });
    return _windows10Professional;
}
+ (MSGraphWindows10EditionType*) windows10ProfessionalN {
    static MSGraphWindows10EditionType *_windows10ProfessionalN;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10ProfessionalN = [[MSGraphWindows10EditionType alloc] init];
        _windows10ProfessionalN.enumValue = MSGraphWindows10EditionTypeWindows10ProfessionalN;
    });
    return _windows10ProfessionalN;
}
+ (MSGraphWindows10EditionType*) windows10ProfessionalEducation {
    static MSGraphWindows10EditionType *_windows10ProfessionalEducation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10ProfessionalEducation = [[MSGraphWindows10EditionType alloc] init];
        _windows10ProfessionalEducation.enumValue = MSGraphWindows10EditionTypeWindows10ProfessionalEducation;
    });
    return _windows10ProfessionalEducation;
}
+ (MSGraphWindows10EditionType*) windows10ProfessionalEducationN {
    static MSGraphWindows10EditionType *_windows10ProfessionalEducationN;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10ProfessionalEducationN = [[MSGraphWindows10EditionType alloc] init];
        _windows10ProfessionalEducationN.enumValue = MSGraphWindows10EditionTypeWindows10ProfessionalEducationN;
    });
    return _windows10ProfessionalEducationN;
}
+ (MSGraphWindows10EditionType*) windows10ProfessionalWorkstation {
    static MSGraphWindows10EditionType *_windows10ProfessionalWorkstation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10ProfessionalWorkstation = [[MSGraphWindows10EditionType alloc] init];
        _windows10ProfessionalWorkstation.enumValue = MSGraphWindows10EditionTypeWindows10ProfessionalWorkstation;
    });
    return _windows10ProfessionalWorkstation;
}
+ (MSGraphWindows10EditionType*) windows10ProfessionalWorkstationN {
    static MSGraphWindows10EditionType *_windows10ProfessionalWorkstationN;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _windows10ProfessionalWorkstationN = [[MSGraphWindows10EditionType alloc] init];
        _windows10ProfessionalWorkstationN.enumValue = MSGraphWindows10EditionTypeWindows10ProfessionalWorkstationN;
    });
    return _windows10ProfessionalWorkstationN;
}

+ (MSGraphWindows10EditionType*) UnknownEnumValue {
    static MSGraphWindows10EditionType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWindows10EditionType alloc] init];
        _unknownValue.enumValue = MSGraphWindows10EditionTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWindows10EditionType*) windows10EditionTypeWithEnumValue:(MSGraphWindows10EditionTypeValue)val {

    switch(val)
    {
        case MSGraphWindows10EditionTypeWindows10Enterprise:
            return [MSGraphWindows10EditionType windows10Enterprise];
        case MSGraphWindows10EditionTypeWindows10EnterpriseN:
            return [MSGraphWindows10EditionType windows10EnterpriseN];
        case MSGraphWindows10EditionTypeWindows10Education:
            return [MSGraphWindows10EditionType windows10Education];
        case MSGraphWindows10EditionTypeWindows10EducationN:
            return [MSGraphWindows10EditionType windows10EducationN];
        case MSGraphWindows10EditionTypeWindows10MobileEnterprise:
            return [MSGraphWindows10EditionType windows10MobileEnterprise];
        case MSGraphWindows10EditionTypeWindows10HolographicEnterprise:
            return [MSGraphWindows10EditionType windows10HolographicEnterprise];
        case MSGraphWindows10EditionTypeWindows10Professional:
            return [MSGraphWindows10EditionType windows10Professional];
        case MSGraphWindows10EditionTypeWindows10ProfessionalN:
            return [MSGraphWindows10EditionType windows10ProfessionalN];
        case MSGraphWindows10EditionTypeWindows10ProfessionalEducation:
            return [MSGraphWindows10EditionType windows10ProfessionalEducation];
        case MSGraphWindows10EditionTypeWindows10ProfessionalEducationN:
            return [MSGraphWindows10EditionType windows10ProfessionalEducationN];
        case MSGraphWindows10EditionTypeWindows10ProfessionalWorkstation:
            return [MSGraphWindows10EditionType windows10ProfessionalWorkstation];
        case MSGraphWindows10EditionTypeWindows10ProfessionalWorkstationN:
            return [MSGraphWindows10EditionType windows10ProfessionalWorkstationN];
        case MSGraphWindows10EditionTypeEndOfEnum:
        default:
            return [MSGraphWindows10EditionType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWindows10EditionTypeWindows10Enterprise:
            return @"windows10Enterprise";
        case MSGraphWindows10EditionTypeWindows10EnterpriseN:
            return @"windows10EnterpriseN";
        case MSGraphWindows10EditionTypeWindows10Education:
            return @"windows10Education";
        case MSGraphWindows10EditionTypeWindows10EducationN:
            return @"windows10EducationN";
        case MSGraphWindows10EditionTypeWindows10MobileEnterprise:
            return @"windows10MobileEnterprise";
        case MSGraphWindows10EditionTypeWindows10HolographicEnterprise:
            return @"windows10HolographicEnterprise";
        case MSGraphWindows10EditionTypeWindows10Professional:
            return @"windows10Professional";
        case MSGraphWindows10EditionTypeWindows10ProfessionalN:
            return @"windows10ProfessionalN";
        case MSGraphWindows10EditionTypeWindows10ProfessionalEducation:
            return @"windows10ProfessionalEducation";
        case MSGraphWindows10EditionTypeWindows10ProfessionalEducationN:
            return @"windows10ProfessionalEducationN";
        case MSGraphWindows10EditionTypeWindows10ProfessionalWorkstation:
            return @"windows10ProfessionalWorkstation";
        case MSGraphWindows10EditionTypeWindows10ProfessionalWorkstationN:
            return @"windows10ProfessionalWorkstationN";
        case MSGraphWindows10EditionTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWindows10EditionTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWindows10EditionType)

- (MSGraphWindows10EditionType*) toMSGraphWindows10EditionType{

    if([self isEqualToString:@"windows10Enterprise"])
    {
          return [MSGraphWindows10EditionType windows10Enterprise];
    }
    else if([self isEqualToString:@"windows10EnterpriseN"])
    {
          return [MSGraphWindows10EditionType windows10EnterpriseN];
    }
    else if([self isEqualToString:@"windows10Education"])
    {
          return [MSGraphWindows10EditionType windows10Education];
    }
    else if([self isEqualToString:@"windows10EducationN"])
    {
          return [MSGraphWindows10EditionType windows10EducationN];
    }
    else if([self isEqualToString:@"windows10MobileEnterprise"])
    {
          return [MSGraphWindows10EditionType windows10MobileEnterprise];
    }
    else if([self isEqualToString:@"windows10HolographicEnterprise"])
    {
          return [MSGraphWindows10EditionType windows10HolographicEnterprise];
    }
    else if([self isEqualToString:@"windows10Professional"])
    {
          return [MSGraphWindows10EditionType windows10Professional];
    }
    else if([self isEqualToString:@"windows10ProfessionalN"])
    {
          return [MSGraphWindows10EditionType windows10ProfessionalN];
    }
    else if([self isEqualToString:@"windows10ProfessionalEducation"])
    {
          return [MSGraphWindows10EditionType windows10ProfessionalEducation];
    }
    else if([self isEqualToString:@"windows10ProfessionalEducationN"])
    {
          return [MSGraphWindows10EditionType windows10ProfessionalEducationN];
    }
    else if([self isEqualToString:@"windows10ProfessionalWorkstation"])
    {
          return [MSGraphWindows10EditionType windows10ProfessionalWorkstation];
    }
    else if([self isEqualToString:@"windows10ProfessionalWorkstationN"])
    {
          return [MSGraphWindows10EditionType windows10ProfessionalWorkstationN];
    }
    else {
        return [MSGraphWindows10EditionType UnknownEnumValue];
    }
}

@end
