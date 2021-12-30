// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAndroidRequiredPasswordTypeValue){

	MSGraphAndroidRequiredPasswordTypeDeviceDefault = 0,
	MSGraphAndroidRequiredPasswordTypeAlphabetic = 1,
	MSGraphAndroidRequiredPasswordTypeAlphanumeric = 2,
	MSGraphAndroidRequiredPasswordTypeAlphanumericWithSymbols = 3,
	MSGraphAndroidRequiredPasswordTypeLowSecurityBiometric = 4,
	MSGraphAndroidRequiredPasswordTypeNumeric = 5,
	MSGraphAndroidRequiredPasswordTypeNumericComplex = 6,
	MSGraphAndroidRequiredPasswordTypeAny = 7,
    MSGraphAndroidRequiredPasswordTypeEndOfEnum
};

@interface MSGraphAndroidRequiredPasswordType : NSObject

+(MSGraphAndroidRequiredPasswordType*) deviceDefault;
+(MSGraphAndroidRequiredPasswordType*) alphabetic;
+(MSGraphAndroidRequiredPasswordType*) alphanumeric;
+(MSGraphAndroidRequiredPasswordType*) alphanumericWithSymbols;
+(MSGraphAndroidRequiredPasswordType*) lowSecurityBiometric;
+(MSGraphAndroidRequiredPasswordType*) numeric;
+(MSGraphAndroidRequiredPasswordType*) numericComplex;
+(MSGraphAndroidRequiredPasswordType*) any;

+(MSGraphAndroidRequiredPasswordType*) UnknownEnumValue;

+(MSGraphAndroidRequiredPasswordType*) androidRequiredPasswordTypeWithEnumValue:(MSGraphAndroidRequiredPasswordTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAndroidRequiredPasswordTypeValue enumValue;

@end


@interface NSString (MSGraphAndroidRequiredPasswordType)

- (MSGraphAndroidRequiredPasswordType*) toMSGraphAndroidRequiredPasswordType;

@end
