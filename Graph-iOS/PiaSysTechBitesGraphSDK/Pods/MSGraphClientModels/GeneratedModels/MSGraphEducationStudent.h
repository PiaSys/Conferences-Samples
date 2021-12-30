// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSDate; 
#import "MSGraphEducationGender.h"


#import "MSObject.h"

@interface MSGraphEducationStudent : MSObject

@property (nullable, nonatomic, setter=setGraduationYear:, getter=graduationYear) NSString* graduationYear;
@property (nullable, nonatomic, setter=setGrade:, getter=grade) NSString* grade;
@property (nullable, nonatomic, setter=setBirthDate:, getter=birthDate) MSDate* birthDate;
@property (nullable, nonatomic, setter=setGender:, getter=gender) MSGraphEducationGender* gender;
@property (nullable, nonatomic, setter=setStudentNumber:, getter=studentNumber) NSString* studentNumber;
@property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;

@end
