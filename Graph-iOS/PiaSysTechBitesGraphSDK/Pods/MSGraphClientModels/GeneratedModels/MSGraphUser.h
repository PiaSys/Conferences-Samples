// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAssignedLicense, MSGraphAssignedPlan, MSGraphLicenseAssignmentState, MSGraphOnPremisesExtensionAttributes, MSGraphOnPremisesProvisioningError, MSGraphPasswordProfile, MSGraphProvisionedPlan, MSGraphMailboxSettings, MSGraphDirectoryObject, MSGraphLicenseDetails, MSGraphOutlookUser, MSGraphMessage, MSGraphMailFolder, MSGraphCalendar, MSGraphCalendarGroup, MSGraphEvent, MSGraphPerson, MSGraphContact, MSGraphContactFolder, MSGraphInferenceClassification, MSGraphProfilePhoto, MSGraphDrive, MSGraphExtension, MSGraphManagedDevice, MSGraphManagedAppRegistration, MSGraphDeviceManagementTroubleshootingEvent, MSGraphPlannerUser, MSGraphOfficeGraphInsights, MSGraphUserSettings, MSGraphOnenote, MSGraphUserActivity, MSGraphOnlineMeeting, MSGraphGroup; 


#import "MSGraphDirectoryObject.h"

@interface MSGraphUser : MSGraphDirectoryObject

  @property (nonatomic, setter=setAccountEnabled:, getter=accountEnabled) BOOL accountEnabled;
    @property (nullable, nonatomic, setter=setAgeGroup:, getter=ageGroup) NSString* ageGroup;
    @property (nonnull, nonatomic, setter=setAssignedLicenses:, getter=assignedLicenses) NSArray* assignedLicenses;
    @property (nonnull, nonatomic, setter=setAssignedPlans:, getter=assignedPlans) NSArray* assignedPlans;
    @property (nonnull, nonatomic, setter=setBusinessPhones:, getter=businessPhones) NSArray* businessPhones;
    @property (nullable, nonatomic, setter=setCity:, getter=city) NSString* city;
    @property (nullable, nonatomic, setter=setCompanyName:, getter=companyName) NSString* companyName;
    @property (nullable, nonatomic, setter=setConsentProvidedForMinor:, getter=consentProvidedForMinor) NSString* consentProvidedForMinor;
    @property (nullable, nonatomic, setter=setCountry:, getter=country) NSString* country;
    @property (nullable, nonatomic, setter=setDepartment:, getter=department) NSString* department;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEmployeeId:, getter=employeeId) NSString* employeeId;
    @property (nullable, nonatomic, setter=setFaxNumber:, getter=faxNumber) NSString* faxNumber;
    @property (nullable, nonatomic, setter=setGivenName:, getter=givenName) NSString* givenName;
    @property (nullable, nonatomic, setter=setImAddresses:, getter=imAddresses) NSArray* imAddresses;
    @property (nonatomic, setter=setIsResourceAccount:, getter=isResourceAccount) BOOL isResourceAccount;
    @property (nullable, nonatomic, setter=setJobTitle:, getter=jobTitle) NSString* jobTitle;
    @property (nullable, nonatomic, setter=setLegalAgeGroupClassification:, getter=legalAgeGroupClassification) NSString* legalAgeGroupClassification;
    @property (nullable, nonatomic, setter=setLicenseAssignmentStates:, getter=licenseAssignmentStates) NSArray* licenseAssignmentStates;
    @property (nullable, nonatomic, setter=setMail:, getter=mail) NSString* mail;
    @property (nullable, nonatomic, setter=setMailNickname:, getter=mailNickname) NSString* mailNickname;
    @property (nullable, nonatomic, setter=setMobilePhone:, getter=mobilePhone) NSString* mobilePhone;
    @property (nullable, nonatomic, setter=setOnPremisesDistinguishedName:, getter=onPremisesDistinguishedName) NSString* onPremisesDistinguishedName;
    @property (nullable, nonatomic, setter=setOnPremisesExtensionAttributes:, getter=onPremisesExtensionAttributes) MSGraphOnPremisesExtensionAttributes* onPremisesExtensionAttributes;
    @property (nullable, nonatomic, setter=setOnPremisesImmutableId:, getter=onPremisesImmutableId) NSString* onPremisesImmutableId;
    @property (nullable, nonatomic, setter=setOnPremisesLastSyncDateTime:, getter=onPremisesLastSyncDateTime) NSDate* onPremisesLastSyncDateTime;
    @property (nullable, nonatomic, setter=setOnPremisesProvisioningErrors:, getter=onPremisesProvisioningErrors) NSArray* onPremisesProvisioningErrors;
    @property (nullable, nonatomic, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString* onPremisesSecurityIdentifier;
    @property (nonatomic, setter=setOnPremisesSyncEnabled:, getter=onPremisesSyncEnabled) BOOL onPremisesSyncEnabled;
    @property (nullable, nonatomic, setter=setOnPremisesDomainName:, getter=onPremisesDomainName) NSString* onPremisesDomainName;
    @property (nullable, nonatomic, setter=setOnPremisesSamAccountName:, getter=onPremisesSamAccountName) NSString* onPremisesSamAccountName;
    @property (nullable, nonatomic, setter=setOnPremisesUserPrincipalName:, getter=onPremisesUserPrincipalName) NSString* onPremisesUserPrincipalName;
    @property (nonnull, nonatomic, setter=setOtherMails:, getter=otherMails) NSArray* otherMails;
    @property (nullable, nonatomic, setter=setPasswordPolicies:, getter=passwordPolicies) NSString* passwordPolicies;
    @property (nullable, nonatomic, setter=setPasswordProfile:, getter=passwordProfile) MSGraphPasswordProfile* passwordProfile;
    @property (nullable, nonatomic, setter=setOfficeLocation:, getter=officeLocation) NSString* officeLocation;
    @property (nullable, nonatomic, setter=setPostalCode:, getter=postalCode) NSString* postalCode;
    @property (nullable, nonatomic, setter=setPreferredLanguage:, getter=preferredLanguage) NSString* preferredLanguage;
    @property (nonnull, nonatomic, setter=setProvisionedPlans:, getter=provisionedPlans) NSArray* provisionedPlans;
    @property (nonnull, nonatomic, setter=setProxyAddresses:, getter=proxyAddresses) NSArray* proxyAddresses;
    @property (nonatomic, setter=setShowInAddressList:, getter=showInAddressList) BOOL showInAddressList;
    @property (nullable, nonatomic, setter=setSignInSessionsValidFromDateTime:, getter=signInSessionsValidFromDateTime) NSDate* signInSessionsValidFromDateTime;
    @property (nullable, nonatomic, setter=setState:, getter=state) NSString* state;
    @property (nullable, nonatomic, setter=setStreetAddress:, getter=streetAddress) NSString* streetAddress;
    @property (nullable, nonatomic, setter=setSurname:, getter=surname) NSString* surname;
    @property (nullable, nonatomic, setter=setUsageLocation:, getter=usageLocation) NSString* usageLocation;
    @property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;
    @property (nullable, nonatomic, setter=setUserType:, getter=userType) NSString* userType;
    @property (nullable, nonatomic, setter=setMailboxSettings:, getter=mailboxSettings) MSGraphMailboxSettings* mailboxSettings;
    @property (nonatomic, setter=setDeviceEnrollmentLimit:, getter=deviceEnrollmentLimit) int32_t deviceEnrollmentLimit;
    @property (nullable, nonatomic, setter=setAboutMe:, getter=aboutMe) NSString* aboutMe;
    @property (nonnull, nonatomic, setter=setBirthday:, getter=birthday) NSDate* birthday;
    @property (nonnull, nonatomic, setter=setHireDate:, getter=hireDate) NSDate* hireDate;
    @property (nullable, nonatomic, setter=setInterests:, getter=interests) NSArray* interests;
    @property (nullable, nonatomic, setter=setMySite:, getter=mySite) NSString* mySite;
    @property (nullable, nonatomic, setter=setPastProjects:, getter=pastProjects) NSArray* pastProjects;
    @property (nullable, nonatomic, setter=setPreferredName:, getter=preferredName) NSString* preferredName;
    @property (nullable, nonatomic, setter=setResponsibilities:, getter=responsibilities) NSArray* responsibilities;
    @property (nullable, nonatomic, setter=setSchools:, getter=schools) NSArray* schools;
    @property (nullable, nonatomic, setter=setSkills:, getter=skills) NSArray* skills;
    @property (nullable, nonatomic, setter=setOwnedDevices:, getter=ownedDevices) NSArray* ownedDevices;
    @property (nullable, nonatomic, setter=setRegisteredDevices:, getter=registeredDevices) NSArray* registeredDevices;
    @property (nullable, nonatomic, setter=setManager:, getter=manager) MSGraphDirectoryObject* manager;
    @property (nullable, nonatomic, setter=setDirectReports:, getter=directReports) NSArray* directReports;
    @property (nullable, nonatomic, setter=setMemberOf:, getter=memberOf) NSArray* memberOf;
    @property (nullable, nonatomic, setter=setCreatedObjects:, getter=createdObjects) NSArray* createdObjects;
    @property (nullable, nonatomic, setter=setOwnedObjects:, getter=ownedObjects) NSArray* ownedObjects;
    @property (nullable, nonatomic, setter=setLicenseDetails:, getter=licenseDetails) NSArray* licenseDetails;
    @property (nullable, nonatomic, setter=setTransitiveMemberOf:, getter=transitiveMemberOf) NSArray* transitiveMemberOf;
    @property (nullable, nonatomic, setter=setOutlook:, getter=outlook) MSGraphOutlookUser* outlook;
    @property (nullable, nonatomic, setter=setMessages:, getter=messages) NSArray* messages;
    @property (nullable, nonatomic, setter=setMailFolders:, getter=mailFolders) NSArray* mailFolders;
    @property (nullable, nonatomic, setter=setCalendar:, getter=calendar) MSGraphCalendar* calendar;
    @property (nullable, nonatomic, setter=setCalendars:, getter=calendars) NSArray* calendars;
    @property (nullable, nonatomic, setter=setCalendarGroups:, getter=calendarGroups) NSArray* calendarGroups;
    @property (nullable, nonatomic, setter=setCalendarView:, getter=calendarView) NSArray* calendarView;
    @property (nullable, nonatomic, setter=setEvents:, getter=events) NSArray* events;
    @property (nullable, nonatomic, setter=setPeople:, getter=people) NSArray* people;
    @property (nullable, nonatomic, setter=setContacts:, getter=contacts) NSArray* contacts;
    @property (nullable, nonatomic, setter=setContactFolders:, getter=contactFolders) NSArray* contactFolders;
    @property (nullable, nonatomic, setter=setInferenceClassification:, getter=inferenceClassification) MSGraphInferenceClassification* inferenceClassification;
    @property (nullable, nonatomic, setter=setPhoto:, getter=photo) MSGraphProfilePhoto* photo;
    @property (nullable, nonatomic, setter=setPhotos:, getter=photos) NSArray* photos;
    @property (nullable, nonatomic, setter=setDrive:, getter=drive) MSGraphDrive* drive;
    @property (nullable, nonatomic, setter=setDrives:, getter=drives) NSArray* drives;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
    @property (nullable, nonatomic, setter=setManagedDevices:, getter=managedDevices) NSArray* managedDevices;
    @property (nullable, nonatomic, setter=setManagedAppRegistrations:, getter=managedAppRegistrations) NSArray* managedAppRegistrations;
    @property (nullable, nonatomic, setter=setDeviceManagementTroubleshootingEvents:, getter=deviceManagementTroubleshootingEvents) NSArray* deviceManagementTroubleshootingEvents;
    @property (nullable, nonatomic, setter=setPlanner:, getter=planner) MSGraphPlannerUser* planner;
    @property (nullable, nonatomic, setter=setInsights:, getter=insights) MSGraphOfficeGraphInsights* insights;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphUserSettings* settings;
    @property (nullable, nonatomic, setter=setOnenote:, getter=onenote) MSGraphOnenote* onenote;
    @property (nullable, nonatomic, setter=setActivities:, getter=activities) NSArray* activities;
    @property (nullable, nonatomic, setter=setOnlineMeetings:, getter=onlineMeetings) NSArray* onlineMeetings;
    @property (nullable, nonatomic, setter=setJoinedTeams:, getter=joinedTeams) NSArray* joinedTeams;
  
@end
