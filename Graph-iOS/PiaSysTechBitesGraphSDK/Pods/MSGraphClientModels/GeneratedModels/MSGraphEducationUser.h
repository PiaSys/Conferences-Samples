// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPhysicalAddress, MSGraphEducationStudent, MSGraphEducationTeacher, MSGraphIdentitySet, MSGraphAssignedLicense, MSGraphAssignedPlan, MSGraphPasswordProfile, MSGraphProvisionedPlan, MSGraphEducationSchool, MSGraphEducationClass, MSGraphUser; 
#import "MSGraphEducationUserRole.h"
#import "MSGraphEducationExternalSource.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationUser : MSGraphEntity

  @property (nonnull, nonatomic, setter=setPrimaryRole:, getter=primaryRole) MSGraphEducationUserRole* primaryRole;
    @property (nullable, nonatomic, setter=setMiddleName:, getter=middleName) NSString* middleName;
    @property (nullable, nonatomic, setter=setExternalSource:, getter=externalSource) MSGraphEducationExternalSource* externalSource;
    @property (nullable, nonatomic, setter=setResidenceAddress:, getter=residenceAddress) MSGraphPhysicalAddress* residenceAddress;
    @property (nullable, nonatomic, setter=setMailingAddress:, getter=mailingAddress) MSGraphPhysicalAddress* mailingAddress;
    @property (nullable, nonatomic, setter=setStudent:, getter=student) MSGraphEducationStudent* student;
    @property (nullable, nonatomic, setter=setTeacher:, getter=teacher) MSGraphEducationTeacher* teacher;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nonatomic, setter=setAccountEnabled:, getter=accountEnabled) BOOL accountEnabled;
    @property (nonnull, nonatomic, setter=setAssignedLicenses:, getter=assignedLicenses) NSArray* assignedLicenses;
    @property (nonnull, nonatomic, setter=setAssignedPlans:, getter=assignedPlans) NSArray* assignedPlans;
    @property (nonnull, nonatomic, setter=setBusinessPhones:, getter=businessPhones) NSArray* businessPhones;
    @property (nullable, nonatomic, setter=setDepartment:, getter=department) NSString* department;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGivenName:, getter=givenName) NSString* givenName;
    @property (nullable, nonatomic, setter=setMail:, getter=mail) NSString* mail;
    @property (nullable, nonatomic, setter=setMailNickname:, getter=mailNickname) NSString* mailNickname;
    @property (nullable, nonatomic, setter=setMobilePhone:, getter=mobilePhone) NSString* mobilePhone;
    @property (nullable, nonatomic, setter=setPasswordPolicies:, getter=passwordPolicies) NSString* passwordPolicies;
    @property (nullable, nonatomic, setter=setPasswordProfile:, getter=passwordProfile) MSGraphPasswordProfile* passwordProfile;
    @property (nullable, nonatomic, setter=setOfficeLocation:, getter=officeLocation) NSString* officeLocation;
    @property (nullable, nonatomic, setter=setPreferredLanguage:, getter=preferredLanguage) NSString* preferredLanguage;
    @property (nonnull, nonatomic, setter=setProvisionedPlans:, getter=provisionedPlans) NSArray* provisionedPlans;
    @property (nullable, nonatomic, setter=setRefreshTokensValidFromDateTime:, getter=refreshTokensValidFromDateTime) NSDate* refreshTokensValidFromDateTime;
    @property (nonatomic, setter=setShowInAddressList:, getter=showInAddressList) BOOL showInAddressList;
    @property (nullable, nonatomic, setter=setSurname:, getter=surname) NSString* surname;
    @property (nullable, nonatomic, setter=setUsageLocation:, getter=usageLocation) NSString* usageLocation;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nullable, nonatomic, setter=setUserType:, getter=userType) NSString* userType;
    @property (nullable, nonatomic, setter=setSchools:, getter=schools) NSArray* schools;
    @property (nullable, nonatomic, setter=setClasses:, getter=classes) NSArray* classes;
    @property (nullable, nonatomic, setter=setUser:, getter=user) MSGraphUser* user;
  
@end
