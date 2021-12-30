// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphManagedEBook, MSGraphMobileApp, MSGraphMobileAppCategory, MSGraphManagedDeviceMobileAppConfiguration, MSGraphVppToken, MSGraphManagedAppPolicy, MSGraphIosManagedAppProtection, MSGraphAndroidManagedAppProtection, MSGraphDefaultManagedAppProtection, MSGraphTargetedManagedAppConfiguration, MSGraphMdmWindowsInformationProtectionPolicy, MSGraphWindowsInformationProtectionPolicy, MSGraphManagedAppRegistration, MSGraphManagedAppStatus; 


#import "MSGraphEntity.h"

@interface MSGraphDeviceAppManagement : MSGraphEntity

  @property (nonnull, nonatomic, setter=setMicrosoftStoreForBusinessLastSuccessfulSyncDateTime:, getter=microsoftStoreForBusinessLastSuccessfulSyncDateTime) NSDate* microsoftStoreForBusinessLastSuccessfulSyncDateTime;
    @property (nonatomic, setter=setIsEnabledForMicrosoftStoreForBusiness:, getter=isEnabledForMicrosoftStoreForBusiness) BOOL isEnabledForMicrosoftStoreForBusiness;
    @property (nullable, nonatomic, setter=setMicrosoftStoreForBusinessLanguage:, getter=microsoftStoreForBusinessLanguage) NSString* microsoftStoreForBusinessLanguage;
    @property (nonnull, nonatomic, setter=setMicrosoftStoreForBusinessLastCompletedApplicationSyncTime:, getter=microsoftStoreForBusinessLastCompletedApplicationSyncTime) NSDate* microsoftStoreForBusinessLastCompletedApplicationSyncTime;
    @property (nullable, nonatomic, setter=setManagedEBooks:, getter=managedEBooks) NSArray* managedEBooks;
    @property (nullable, nonatomic, setter=setMobileApps:, getter=mobileApps) NSArray* mobileApps;
    @property (nullable, nonatomic, setter=setMobileAppCategories:, getter=mobileAppCategories) NSArray* mobileAppCategories;
    @property (nullable, nonatomic, setter=setMobileAppConfigurations:, getter=mobileAppConfigurations) NSArray* mobileAppConfigurations;
    @property (nullable, nonatomic, setter=setVppTokens:, getter=vppTokens) NSArray* vppTokens;
    @property (nullable, nonatomic, setter=setManagedAppPolicies:, getter=managedAppPolicies) NSArray* managedAppPolicies;
    @property (nullable, nonatomic, setter=setIosManagedAppProtections:, getter=iosManagedAppProtections) NSArray* iosManagedAppProtections;
    @property (nullable, nonatomic, setter=setAndroidManagedAppProtections:, getter=androidManagedAppProtections) NSArray* androidManagedAppProtections;
    @property (nullable, nonatomic, setter=setDefaultManagedAppProtections:, getter=defaultManagedAppProtections) NSArray* defaultManagedAppProtections;
    @property (nullable, nonatomic, setter=setTargetedManagedAppConfigurations:, getter=targetedManagedAppConfigurations) NSArray* targetedManagedAppConfigurations;
    @property (nullable, nonatomic, setter=setMdmWindowsInformationProtectionPolicies:, getter=mdmWindowsInformationProtectionPolicies) NSArray* mdmWindowsInformationProtectionPolicies;
    @property (nullable, nonatomic, setter=setWindowsInformationProtectionPolicies:, getter=windowsInformationProtectionPolicies) NSArray* windowsInformationProtectionPolicies;
    @property (nullable, nonatomic, setter=setManagedAppRegistrations:, getter=managedAppRegistrations) NSArray* managedAppRegistrations;
    @property (nullable, nonatomic, setter=setManagedAppStatuses:, getter=managedAppStatuses) NSArray* managedAppStatuses;
  
@end
