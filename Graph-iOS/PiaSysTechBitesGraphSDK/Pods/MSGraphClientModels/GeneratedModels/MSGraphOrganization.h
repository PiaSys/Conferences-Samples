// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAssignedPlan, MSGraphPrivacyProfile, MSGraphProvisionedPlan, MSGraphVerifiedDomain, MSGraphCertificateBasedAuthConfiguration, MSGraphExtension; 
#import "MSGraphMdmAuthority.h"


#import "MSGraphDirectoryObject.h"

@interface MSGraphOrganization : MSGraphDirectoryObject

  @property (nonnull, nonatomic, setter=setAssignedPlans:, getter=assignedPlans) NSArray* assignedPlans;
    @property (nonnull, nonatomic, setter=setBusinessPhones:, getter=businessPhones) NSArray* businessPhones;
    @property (nullable, nonatomic, setter=setCity:, getter=city) NSString* city;
    @property (nullable, nonatomic, setter=setCountry:, getter=country) NSString* country;
    @property (nullable, nonatomic, setter=setCountryLetterCode:, getter=countryLetterCode) NSString* countryLetterCode;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setMarketingNotificationEmails:, getter=marketingNotificationEmails) NSArray* marketingNotificationEmails;
    @property (nullable, nonatomic, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate* onPremisesLastSyncDateTime;
    @property (nonatomic, setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) BOOL onPremisesSyncEnabled;
    @property (nullable, nonatomic, setter=setPostalCode:, getter=postalCode) NSString* postalCode;
    @property (nullable, nonatomic, setter=setPreferredLanguage:, getter=preferredLanguage) NSString* preferredLanguage;
    @property (nullable, nonatomic, setter=setPrivacyProfile:, getter=privacyProfile) MSGraphPrivacyProfile* privacyProfile;
    @property (nonnull, nonatomic, setter=setProvisionedPlans:, getter=provisionedPlans) NSArray* provisionedPlans;
    @property (nonnull, nonatomic, setter=setSecurityComplianceNotificationMails:, getter=securityComplianceNotificationMails) NSArray* securityComplianceNotificationMails;
    @property (nonnull, nonatomic, setter=setSecurityComplianceNotificationPhones:, getter=securityComplianceNotificationPhones) NSArray* securityComplianceNotificationPhones;
    @property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
    @property (nullable, nonatomic, setter=setStreet:, getter=street) NSString* street;
    @property (nonnull, nonatomic, setter=setTechnicalNotificationMails:, getter=technicalNotificationMails) NSArray* technicalNotificationMails;
    @property (nonnull, nonatomic, setter=setVerifiedDomains:, getter=verifiedDomains) NSArray* verifiedDomains;
    @property (nonnull, nonatomic, setter=setMobileDeviceManagementAuthority:, getter=mobileDeviceManagementAuthority) MSGraphMdmAuthority* mobileDeviceManagementAuthority;
    @property (nullable, nonatomic, setter=setCertificateBasedAuthConfiguration:, getter=certificateBasedAuthConfiguration) NSArray* certificateBasedAuthConfiguration;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
  
@end
