// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphRequiredPasswordTypeValue){

	MSGraphRequiredPasswordTypeDeviceDefault = 0,
	MSGraphRequiredPasswordTypeAlphanumeric = 1,
	MSGraphRequiredPasswordTypeNumeric = 2,
    MSGraphRequiredPasswordTypeEndOfEnum
};

@interface MSGraphRequiredPasswordType : NSObject

+(MSGraphRequiredPasswordType*) deviceDefault;
+(MSGraphRequiredPasswordType*) alphanumeric;
+(MSGraphRequiredPasswordType*) numeric;

+(MSGraphRequiredPasswordType*) UnknownEnumValue;

+(MSGraphRequiredPasswordType*) requiredPasswordTypeWithEnumValue:(MSGraphRequiredPasswordTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphRequiredPasswordTypeValue enumValue;

@end


@interface NSString (MSGraphRequiredPasswordType)

- (MSGraphRequiredPasswordType*) toMSGraphRequiredPasswordType;

@end
