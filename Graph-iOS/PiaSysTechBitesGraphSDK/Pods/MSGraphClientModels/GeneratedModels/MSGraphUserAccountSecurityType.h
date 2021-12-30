// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphUserAccountSecurityTypeValue){

	MSGraphUserAccountSecurityTypeUnknown = 0,
	MSGraphUserAccountSecurityTypeStandard = 1,
	MSGraphUserAccountSecurityTypePower = 2,
	MSGraphUserAccountSecurityTypeAdministrator = 3,
	MSGraphUserAccountSecurityTypeUnknownFutureValue = 127,
    MSGraphUserAccountSecurityTypeEndOfEnum
};

@interface MSGraphUserAccountSecurityType : NSObject

+(MSGraphUserAccountSecurityType*) unknown;
+(MSGraphUserAccountSecurityType*) standard;
+(MSGraphUserAccountSecurityType*) power;
+(MSGraphUserAccountSecurityType*) administrator;
+(MSGraphUserAccountSecurityType*) unknownFutureValue;

+(MSGraphUserAccountSecurityType*) UnknownEnumValue;

+(MSGraphUserAccountSecurityType*) userAccountSecurityTypeWithEnumValue:(MSGraphUserAccountSecurityTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphUserAccountSecurityTypeValue enumValue;

@end


@interface NSString (MSGraphUserAccountSecurityType)

- (MSGraphUserAccountSecurityType*) toMSGraphUserAccountSecurityType;

@end
