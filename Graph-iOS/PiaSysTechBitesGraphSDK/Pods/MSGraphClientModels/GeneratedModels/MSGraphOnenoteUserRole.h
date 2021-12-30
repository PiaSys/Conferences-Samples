// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphOnenoteUserRoleValue){

	MSGraphOnenoteUserRoleNone = -1,
	MSGraphOnenoteUserRoleOwner = 0,
	MSGraphOnenoteUserRoleContributor = 1,
	MSGraphOnenoteUserRoleReader = 2,
    MSGraphOnenoteUserRoleEndOfEnum
};

@interface MSGraphOnenoteUserRole : NSObject

+(MSGraphOnenoteUserRole*) none;
+(MSGraphOnenoteUserRole*) owner;
+(MSGraphOnenoteUserRole*) contributor;
+(MSGraphOnenoteUserRole*) reader;

+(MSGraphOnenoteUserRole*) UnknownEnumValue;

+(MSGraphOnenoteUserRole*) onenoteUserRoleWithEnumValue:(MSGraphOnenoteUserRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphOnenoteUserRoleValue enumValue;

@end


@interface NSString (MSGraphOnenoteUserRole)

- (MSGraphOnenoteUserRole*) toMSGraphOnenoteUserRole;

@end
