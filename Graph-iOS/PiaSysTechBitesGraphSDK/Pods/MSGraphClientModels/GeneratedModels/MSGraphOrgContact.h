// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPhysicalOfficeAddress, MSGraphOnPremisesProvisioningError, MSGraphPhone, MSGraphDirectoryObject; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphOrgContact : MSGraphDirectoryObject

  @property (nullable, nonatomic, setter=setAddresses:, getter=addresses) NSArray* addresses;
    @property (nullable, nonatomic, setter=setCompanyName:, getter=companyName) NSString* companyName;
    @property (nullable, nonatomic, setter=setDepartment:, getter=department) NSString* department;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setGivenName:, getter=givenName) NSString* givenName;
    @property (nullable, nonatomic, setter=setJobTitle:, getter=jobTitle) NSString* jobTitle;
    @property (nullable, nonatomic, setter=setMail:, getter=mail) NSString* mail;
    @property (nullable, nonatomic, setter=setMailNickname:, getter=mailNickname) NSString* mailNickname;
    @property (nonatomic, setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) BOOL onPremisesSyncEnabled;
    @property (nullable, nonatomic, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate* onPremisesLastSyncDateTime;
    @property (nullable, nonatomic, setter=setOnPremisesProvisioningErrors:, getter=onPremisesProvisioningErrors) NSArray* onPremisesProvisioningErrors;
    @property (nullable, nonatomic, setter=setPhones:, getter=phones) NSArray* phones;
    @property (nonnull, nonatomic, setter=setProxyAddresses:, getter=proxyAddresses) NSArray* proxyAddresses;
    @property (nullable, nonatomic, setter=setSurname:, getter=surname) NSString* surname;
    @property (nullable, nonatomic, setter=setManager:, getter=manager) MSGraphDirectoryObject* manager;
    @property (nullable, nonatomic, setter=setDirectReports:, getter=directReports) NSArray* directReports;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
  
@end
