// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPhoneTypeValue){

	MSGraphPhoneTypeHome = 0,
	MSGraphPhoneTypeBusiness = 1,
	MSGraphPhoneTypeMobile = 2,
	MSGraphPhoneTypeOther = 3,
	MSGraphPhoneTypeAssistant = 4,
	MSGraphPhoneTypeHomeFax = 5,
	MSGraphPhoneTypeBusinessFax = 6,
	MSGraphPhoneTypeOtherFax = 7,
	MSGraphPhoneTypePager = 8,
	MSGraphPhoneTypeRadio = 9,
    MSGraphPhoneTypeEndOfEnum
};

@interface MSGraphPhoneType : NSObject

+(MSGraphPhoneType*) home;
+(MSGraphPhoneType*) business;
+(MSGraphPhoneType*) mobile;
+(MSGraphPhoneType*) other;
+(MSGraphPhoneType*) assistant;
+(MSGraphPhoneType*) homeFax;
+(MSGraphPhoneType*) businessFax;
+(MSGraphPhoneType*) otherFax;
+(MSGraphPhoneType*) pager;
+(MSGraphPhoneType*) radio;

+(MSGraphPhoneType*) UnknownEnumValue;

+(MSGraphPhoneType*) phoneTypeWithEnumValue:(MSGraphPhoneTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPhoneTypeValue enumValue;

@end


@interface NSString (MSGraphPhoneType)

- (MSGraphPhoneType*) toMSGraphPhoneType;

@end
