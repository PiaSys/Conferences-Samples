// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEmailRoleValue){

	MSGraphEmailRoleUnknown = 0,
	MSGraphEmailRoleSender = 1,
	MSGraphEmailRoleRecipient = 2,
	MSGraphEmailRoleUnknownFutureValue = 127,
    MSGraphEmailRoleEndOfEnum
};

@interface MSGraphEmailRole : NSObject

+(MSGraphEmailRole*) unknown;
+(MSGraphEmailRole*) sender;
+(MSGraphEmailRole*) recipient;
+(MSGraphEmailRole*) unknownFutureValue;

+(MSGraphEmailRole*) UnknownEnumValue;

+(MSGraphEmailRole*) emailRoleWithEnumValue:(MSGraphEmailRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEmailRoleValue enumValue;

@end


@interface NSString (MSGraphEmailRole)

- (MSGraphEmailRole*) toMSGraphEmailRole;

@end
