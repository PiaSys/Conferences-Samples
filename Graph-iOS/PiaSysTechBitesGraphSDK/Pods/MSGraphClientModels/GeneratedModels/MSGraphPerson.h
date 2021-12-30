// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphScoredEmailAddress, MSGraphPhone, MSGraphLocation, MSGraphWebsite, MSGraphPersonType; 


#import "MSGraphEntity.h"

@interface MSGraphPerson : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGivenName:, getter=givenName) NSString* givenName;
    @property (nullable, nonatomic, setter=setSurname:, getter=surname) NSString* surname;
    @property (nullable, nonatomic, setter=setBirthday:, getter=birthday) NSString* birthday;
    @property (nullable, nonatomic, setter=setPersonNotes:, getter=personNotes) NSString* personNotes;
    @property (nonatomic, setter=setIsFavorite:, getter=isFavorite) BOOL isFavorite;
    @property (nullable, nonatomic, setter=setScoredEmailAddresses:, getter=scoredEmailAddresses) NSArray* scoredEmailAddresses;
    @property (nullable, nonatomic, setter=setPhones:, getter=phones) NSArray* phones;
    @property (nullable, nonatomic, setter=setPostalAddresses:, getter=postalAddresses) NSArray* postalAddresses;
    @property (nullable, nonatomic, setter=setWebsites:, getter=websites) NSArray* websites;
    @property (nullable, nonatomic, setter=setJobTitle:, getter=jobTitle) NSString* jobTitle;
    @property (nullable, nonatomic, setter=setCompanyName:, getter=companyName) NSString* companyName;
    @property (nullable, nonatomic, setter=setYomiCompany:, getter=yomiCompany) NSString* yomiCompany;
    @property (nullable, nonatomic, setter=setDepartment:, getter=department) NSString* department;
    @property (nullable, nonatomic, setter=setOfficeLocation:, getter=officeLocation) NSString* officeLocation;
    @property (nullable, nonatomic, setter=setProfession:, getter=profession) NSString* profession;
    @property (nullable, nonatomic, setter=setPersonType:, getter=personType) MSGraphPersonType* personType;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nullable, nonatomic, setter=setImAddress:, getter=imAddress) NSString* imAddress;
  
@end
