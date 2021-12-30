// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEducationGenderValue){

	MSGraphEducationGenderFemale = 0,
	MSGraphEducationGenderMale = 1,
	MSGraphEducationGenderOther = 2,
	MSGraphEducationGenderUnknownFutureValue = 3,
    MSGraphEducationGenderEndOfEnum
};

@interface MSGraphEducationGender : NSObject

+(MSGraphEducationGender*) female;
+(MSGraphEducationGender*) male;
+(MSGraphEducationGender*) other;
+(MSGraphEducationGender*) unknownFutureValue;

+(MSGraphEducationGender*) UnknownEnumValue;

+(MSGraphEducationGender*) educationGenderWithEnumValue:(MSGraphEducationGenderValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEducationGenderValue enumValue;

@end


@interface NSString (MSGraphEducationGender)

- (MSGraphEducationGender*) toMSGraphEducationGender;

@end
