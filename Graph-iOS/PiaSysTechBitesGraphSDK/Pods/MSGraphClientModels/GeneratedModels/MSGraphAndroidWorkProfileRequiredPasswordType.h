// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAndroidWorkProfileRequiredPasswordTypeValue){

	MSGraphAndroidWorkProfileRequiredPasswordTypeDeviceDefault = 0,
	MSGraphAndroidWorkProfileRequiredPasswordTypeLowSecurityBiometric = 1,
	MSGraphAndroidWorkProfileRequiredPasswordTypeRequired = 2,
	MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastNumeric = 3,
	MSGraphAndroidWorkProfileRequiredPasswordTypeNumericComplex = 4,
	MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphabetic = 5,
	MSGraphAndroidWorkProfileRequiredPasswordTypeAtLeastAlphanumeric = 6,
	MSGraphAndroidWorkProfileRequiredPasswordTypeAlphanumericWithSymbols = 7,
    MSGraphAndroidWorkProfileRequiredPasswordTypeEndOfEnum
};

@interface MSGraphAndroidWorkProfileRequiredPasswordType : NSObject

+(MSGraphAndroidWorkProfileRequiredPasswordType*) deviceDefault;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) lowSecurityBiometric;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) required;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastNumeric;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) numericComplex;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastAlphabetic;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) atLeastAlphanumeric;
+(MSGraphAndroidWorkProfileRequiredPasswordType*) alphanumericWithSymbols;

+(MSGraphAndroidWorkProfileRequiredPasswordType*) UnknownEnumValue;

+(MSGraphAndroidWorkProfileRequiredPasswordType*) androidWorkProfileRequiredPasswordTypeWithEnumValue:(MSGraphAndroidWorkProfileRequiredPasswordTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAndroidWorkProfileRequiredPasswordTypeValue enumValue;

@end


@interface NSString (MSGraphAndroidWorkProfileRequiredPasswordType)

- (MSGraphAndroidWorkProfileRequiredPasswordType*) toMSGraphAndroidWorkProfileRequiredPasswordType;

@end
