// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSTimeOfDay; 
#import "MSGraphMiracastChannel.h"
#import "MSGraphWelcomeScreenMeetingInformation.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows10TeamGeneralConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAzureOperationalInsightsBlockTelemetry:, getter=azureOperationalInsightsBlockTelemetry) BOOL azureOperationalInsightsBlockTelemetry;
    @property (nullable, nonatomic, setter=setAzureOperationalInsightsWorkspaceId:, getter=azureOperationalInsightsWorkspaceId) NSString* azureOperationalInsightsWorkspaceId;
    @property (nullable, nonatomic, setter=setAzureOperationalInsightsWorkspaceKey:, getter=azureOperationalInsightsWorkspaceKey) NSString* azureOperationalInsightsWorkspaceKey;
    @property (nonatomic, setter=setConnectAppBlockAutoLaunch:, getter=connectAppBlockAutoLaunch) BOOL connectAppBlockAutoLaunch;
    @property (nonatomic, setter=setMaintenanceWindowBlocked:, getter=maintenanceWindowBlocked) BOOL maintenanceWindowBlocked;
    @property (nonatomic, setter=setMaintenanceWindowDurationInHours:, getter=maintenanceWindowDurationInHours) int32_t maintenanceWindowDurationInHours;
    @property (nullable, nonatomic, setter=setMaintenanceWindowStartTime:, getter=maintenanceWindowStartTime) MSTimeOfDay* maintenanceWindowStartTime;
    @property (nonnull, nonatomic, setter=setMiracastChannel:, getter=miracastChannel) MSGraphMiracastChannel* miracastChannel;
    @property (nonatomic, setter=setMiracastBlocked:, getter=miracastBlocked) BOOL miracastBlocked;
    @property (nonatomic, setter=setMiracastRequirePin:, getter=miracastRequirePin) BOOL miracastRequirePin;
    @property (nonatomic, setter=setSettingsBlockMyMeetingsAndFiles:, getter=settingsBlockMyMeetingsAndFiles) BOOL settingsBlockMyMeetingsAndFiles;
    @property (nonatomic, setter=setSettingsBlockSessionResume:, getter=settingsBlockSessionResume) BOOL settingsBlockSessionResume;
    @property (nonatomic, setter=setSettingsBlockSigninSuggestions:, getter=settingsBlockSigninSuggestions) BOOL settingsBlockSigninSuggestions;
    @property (nonatomic, setter=setSettingsDefaultVolume:, getter=settingsDefaultVolume) int32_t settingsDefaultVolume;
    @property (nonatomic, setter=setSettingsScreenTimeoutInMinutes:, getter=settingsScreenTimeoutInMinutes) int32_t settingsScreenTimeoutInMinutes;
    @property (nonatomic, setter=setSettingsSessionTimeoutInMinutes:, getter=settingsSessionTimeoutInMinutes) int32_t settingsSessionTimeoutInMinutes;
    @property (nonatomic, setter=setSettingsSleepTimeoutInMinutes:, getter=settingsSleepTimeoutInMinutes) int32_t settingsSleepTimeoutInMinutes;
    @property (nonatomic, setter=setWelcomeScreenBlockAutomaticWakeUp:, getter=welcomeScreenBlockAutomaticWakeUp) BOOL welcomeScreenBlockAutomaticWakeUp;
    @property (nullable, nonatomic, setter=setWelcomeScreenBackgroundImageUrl:, getter=welcomeScreenBackgroundImageUrl) NSString* welcomeScreenBackgroundImageUrl;
    @property (nonnull, nonatomic, setter=setWelcomeScreenMeetingInformation:, getter=welcomeScreenMeetingInformation) MSGraphWelcomeScreenMeetingInformation* welcomeScreenMeetingInformation;
  
@end
