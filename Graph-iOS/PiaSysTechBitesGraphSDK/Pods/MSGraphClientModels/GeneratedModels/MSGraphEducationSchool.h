// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphPhysicalAddress, MSGraphEducationClass, MSGraphEducationUser; 


#import "MSGraphEducationOrganization.h"

@interface MSGraphEducationSchool : MSGraphEducationOrganization

  @property (nullable, nonatomic, setter=setPrincipalEmail:, getter=principalEmail) NSString* principalEmail;
    @property (nullable, nonatomic, setter=setPrincipalName:, getter=principalName) NSString* principalName;
    @property (nullable, nonatomic, setter=setExternalPrincipalId:, getter=externalPrincipalId) NSString* externalPrincipalId;
    @property (nullable, nonatomic, setter=setLowestGrade:, getter=lowestGrade) NSString* lowestGrade;
    @property (nullable, nonatomic, setter=setHighestGrade:, getter=highestGrade) NSString* highestGrade;
    @property (nullable, nonatomic, setter=setSchoolNumber:, getter=schoolNumber) NSString* schoolNumber;
    @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nullable, nonatomic, setter=setPhone:, getter=phone) NSString* phone;
    @property (nullable, nonatomic, setter=setFax:, getter=fax) NSString* fax;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setAddress:, getter=address) MSGraphPhysicalAddress* address;
    @property (nullable, nonatomic, setter=setClasses:, getter=classes) NSArray* classes;
    @property (nullable, nonatomic, setter=setUsers:, getter=users) NSArray* users;
  
@end
