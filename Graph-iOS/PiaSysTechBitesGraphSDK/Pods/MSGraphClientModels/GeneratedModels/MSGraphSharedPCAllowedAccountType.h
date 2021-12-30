// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSharedPCAllowedAccountTypeValue){

	MSGraphSharedPCAllowedAccountTypeGuest = 1,
	MSGraphSharedPCAllowedAccountTypeDomain = 2,
    MSGraphSharedPCAllowedAccountTypeEndOfEnum
};

@interface MSGraphSharedPCAllowedAccountType : NSObject

+(MSGraphSharedPCAllowedAccountType*) guest;
+(MSGraphSharedPCAllowedAccountType*) domain;

+(MSGraphSharedPCAllowedAccountType*) UnknownEnumValue;

+(MSGraphSharedPCAllowedAccountType*) sharedPCAllowedAccountTypeWithEnumValue:(MSGraphSharedPCAllowedAccountTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSharedPCAllowedAccountTypeValue enumValue;

@end


@interface NSString (MSGraphSharedPCAllowedAccountType)

- (MSGraphSharedPCAllowedAccountType*) toMSGraphSharedPCAllowedAccountType;

@end
