// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphMicrosoftStoreForBusinessLicenseTypeValue){

	MSGraphMicrosoftStoreForBusinessLicenseTypeOffline = 0,
	MSGraphMicrosoftStoreForBusinessLicenseTypeOnline = 1,
    MSGraphMicrosoftStoreForBusinessLicenseTypeEndOfEnum
};

@interface MSGraphMicrosoftStoreForBusinessLicenseType : NSObject

+(MSGraphMicrosoftStoreForBusinessLicenseType*) offline;
+(MSGraphMicrosoftStoreForBusinessLicenseType*) online;

+(MSGraphMicrosoftStoreForBusinessLicenseType*) UnknownEnumValue;

+(MSGraphMicrosoftStoreForBusinessLicenseType*) microsoftStoreForBusinessLicenseTypeWithEnumValue:(MSGraphMicrosoftStoreForBusinessLicenseTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphMicrosoftStoreForBusinessLicenseTypeValue enumValue;

@end


@interface NSString (MSGraphMicrosoftStoreForBusinessLicenseType)

- (MSGraphMicrosoftStoreForBusinessLicenseType*) toMSGraphMicrosoftStoreForBusinessLicenseType;

@end
