// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationUserRoleValue){

	MSGraphEducationUserRoleStudent = 0,
	MSGraphEducationUserRoleTeacher = 1,
	MSGraphEducationUserRoleNone = 2,
	MSGraphEducationUserRoleUnknownFutureValue = 3,
    MSGraphEducationUserRoleEndOfEnum
};

@interface MSGraphEducationUserRole : NSObject

+(MSGraphEducationUserRole*) student;
+(MSGraphEducationUserRole*) teacher;
+(MSGraphEducationUserRole*) none;
+(MSGraphEducationUserRole*) unknownFutureValue;

+(MSGraphEducationUserRole*) UnknownEnumValue;

+(MSGraphEducationUserRole*) educationUserRoleWithEnumValue:(MSGraphEducationUserRoleValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationUserRoleValue enumValue;

@end


@interface NSString (MSGraphEducationUserRole)

- (MSGraphEducationUserRole*) toMSGraphEducationUserRole;

@end
