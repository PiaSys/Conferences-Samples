// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphEducationTeacher : MSObject

@property (nullable, nonatomic, setter=setTeacherNumber:, getter=teacherNumber) NSString* teacherNumber;
@property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;

@end
