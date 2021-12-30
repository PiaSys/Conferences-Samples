// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEditionUpgradeLicenseTypeValue){

	MSGraphEditionUpgradeLicenseTypeProductKey = 0,
	MSGraphEditionUpgradeLicenseTypeLicenseFile = 1,
    MSGraphEditionUpgradeLicenseTypeEndOfEnum
};

@interface MSGraphEditionUpgradeLicenseType : NSObject

+(MSGraphEditionUpgradeLicenseType*) productKey;
+(MSGraphEditionUpgradeLicenseType*) licenseFile;

+(MSGraphEditionUpgradeLicenseType*) UnknownEnumValue;

+(MSGraphEditionUpgradeLicenseType*) editionUpgradeLicenseTypeWithEnumValue:(MSGraphEditionUpgradeLicenseTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEditionUpgradeLicenseTypeValue enumValue;

@end


@interface NSString (MSGraphEditionUpgradeLicenseType)

- (MSGraphEditionUpgradeLicenseType*) toMSGraphEditionUpgradeLicenseType;

@end
