// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWindows10EditionTypeValue){

	MSGraphWindows10EditionTypeWindows10Enterprise = 0,
	MSGraphWindows10EditionTypeWindows10EnterpriseN = 1,
	MSGraphWindows10EditionTypeWindows10Education = 2,
	MSGraphWindows10EditionTypeWindows10EducationN = 3,
	MSGraphWindows10EditionTypeWindows10MobileEnterprise = 4,
	MSGraphWindows10EditionTypeWindows10HolographicEnterprise = 5,
	MSGraphWindows10EditionTypeWindows10Professional = 6,
	MSGraphWindows10EditionTypeWindows10ProfessionalN = 7,
	MSGraphWindows10EditionTypeWindows10ProfessionalEducation = 8,
	MSGraphWindows10EditionTypeWindows10ProfessionalEducationN = 9,
	MSGraphWindows10EditionTypeWindows10ProfessionalWorkstation = 10,
	MSGraphWindows10EditionTypeWindows10ProfessionalWorkstationN = 11,
    MSGraphWindows10EditionTypeEndOfEnum
};

@interface MSGraphWindows10EditionType : NSObject

+(MSGraphWindows10EditionType*) windows10Enterprise;
+(MSGraphWindows10EditionType*) windows10EnterpriseN;
+(MSGraphWindows10EditionType*) windows10Education;
+(MSGraphWindows10EditionType*) windows10EducationN;
+(MSGraphWindows10EditionType*) windows10MobileEnterprise;
+(MSGraphWindows10EditionType*) windows10HolographicEnterprise;
+(MSGraphWindows10EditionType*) windows10Professional;
+(MSGraphWindows10EditionType*) windows10ProfessionalN;
+(MSGraphWindows10EditionType*) windows10ProfessionalEducation;
+(MSGraphWindows10EditionType*) windows10ProfessionalEducationN;
+(MSGraphWindows10EditionType*) windows10ProfessionalWorkstation;
+(MSGraphWindows10EditionType*) windows10ProfessionalWorkstationN;

+(MSGraphWindows10EditionType*) UnknownEnumValue;

+(MSGraphWindows10EditionType*) windows10EditionTypeWithEnumValue:(MSGraphWindows10EditionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWindows10EditionTypeValue enumValue;

@end


@interface NSString (MSGraphWindows10EditionType)

- (MSGraphWindows10EditionType*) toMSGraphWindows10EditionType;

@end
