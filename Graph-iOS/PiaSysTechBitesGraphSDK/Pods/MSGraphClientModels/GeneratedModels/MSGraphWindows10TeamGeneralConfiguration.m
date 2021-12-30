// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindows10TeamGeneralConfiguration()
{
    BOOL _azureOperationalInsightsBlockTelemetry;
    NSString* _azureOperationalInsightsWorkspaceId;
    NSString* _azureOperationalInsightsWorkspaceKey;
    BOOL _connectAppBlockAutoLaunch;
    BOOL _maintenanceWindowBlocked;
    int32_t _maintenanceWindowDurationInHours;
    MSTimeOfDay* _maintenanceWindowStartTime;
    MSGraphMiracastChannel* _miracastChannel;
    BOOL _miracastBlocked;
    BOOL _miracastRequirePin;
    BOOL _settingsBlockMyMeetingsAndFiles;
    BOOL _settingsBlockSessionResume;
    BOOL _settingsBlockSigninSuggestions;
    int32_t _settingsDefaultVolume;
    int32_t _settingsScreenTimeoutInMinutes;
    int32_t _settingsSessionTimeoutInMinutes;
    int32_t _settingsSleepTimeoutInMinutes;
    BOOL _welcomeScreenBlockAutomaticWakeUp;
    NSString* _welcomeScreenBackgroundImageUrl;
    MSGraphWelcomeScreenMeetingInformation* _welcomeScreenMeetingInformation;
}
@end

@implementation MSGraphWindows10TeamGeneralConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windows10TeamGeneralConfiguration";
    }
    return self;
}
- (BOOL) azureOperationalInsightsBlockTelemetry
{
    _azureOperationalInsightsBlockTelemetry = [self.dictionary[@"azureOperationalInsightsBlockTelemetry"] boolValue];
    return _azureOperationalInsightsBlockTelemetry;
}

- (void) setAzureOperationalInsightsBlockTelemetry: (BOOL) val
{
    _azureOperationalInsightsBlockTelemetry = val;
    self.dictionary[@"azureOperationalInsightsBlockTelemetry"] = @(val);
}

- (NSString*) azureOperationalInsightsWorkspaceId
{
    if([[NSNull null] isEqual:self.dictionary[@"azureOperationalInsightsWorkspaceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureOperationalInsightsWorkspaceId"];
}

- (void) setAzureOperationalInsightsWorkspaceId: (NSString*) val
{
    self.dictionary[@"azureOperationalInsightsWorkspaceId"] = val;
}

- (NSString*) azureOperationalInsightsWorkspaceKey
{
    if([[NSNull null] isEqual:self.dictionary[@"azureOperationalInsightsWorkspaceKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureOperationalInsightsWorkspaceKey"];
}

- (void) setAzureOperationalInsightsWorkspaceKey: (NSString*) val
{
    self.dictionary[@"azureOperationalInsightsWorkspaceKey"] = val;
}

- (BOOL) connectAppBlockAutoLaunch
{
    _connectAppBlockAutoLaunch = [self.dictionary[@"connectAppBlockAutoLaunch"] boolValue];
    return _connectAppBlockAutoLaunch;
}

- (void) setConnectAppBlockAutoLaunch: (BOOL) val
{
    _connectAppBlockAutoLaunch = val;
    self.dictionary[@"connectAppBlockAutoLaunch"] = @(val);
}

- (BOOL) maintenanceWindowBlocked
{
    _maintenanceWindowBlocked = [self.dictionary[@"maintenanceWindowBlocked"] boolValue];
    return _maintenanceWindowBlocked;
}

- (void) setMaintenanceWindowBlocked: (BOOL) val
{
    _maintenanceWindowBlocked = val;
    self.dictionary[@"maintenanceWindowBlocked"] = @(val);
}

- (int32_t) maintenanceWindowDurationInHours
{
    _maintenanceWindowDurationInHours = [self.dictionary[@"maintenanceWindowDurationInHours"] intValue];
    return _maintenanceWindowDurationInHours;
}

- (void) setMaintenanceWindowDurationInHours: (int32_t) val
{
    _maintenanceWindowDurationInHours = val;
    self.dictionary[@"maintenanceWindowDurationInHours"] = @(val);
}

- (MSTimeOfDay*) maintenanceWindowStartTime
{
    if(!_maintenanceWindowStartTime){
        _maintenanceWindowStartTime = [MSTimeOfDay ms_timeFromString: self.dictionary[@"maintenanceWindowStartTime"]];
    }
    return _maintenanceWindowStartTime;
}

- (void) setMaintenanceWindowStartTime: (MSTimeOfDay*) val
{
    _maintenanceWindowStartTime = val;
    self.dictionary[@"maintenanceWindowStartTime"] = [val ms_toString];
}

- (MSGraphMiracastChannel*) miracastChannel
{
    if(!_miracastChannel){
        _miracastChannel = [self.dictionary[@"miracastChannel"] toMSGraphMiracastChannel];
    }
    return _miracastChannel;
}

- (void) setMiracastChannel: (MSGraphMiracastChannel*) val
{
    _miracastChannel = val;
    self.dictionary[@"miracastChannel"] = val;
}

- (BOOL) miracastBlocked
{
    _miracastBlocked = [self.dictionary[@"miracastBlocked"] boolValue];
    return _miracastBlocked;
}

- (void) setMiracastBlocked: (BOOL) val
{
    _miracastBlocked = val;
    self.dictionary[@"miracastBlocked"] = @(val);
}

- (BOOL) miracastRequirePin
{
    _miracastRequirePin = [self.dictionary[@"miracastRequirePin"] boolValue];
    return _miracastRequirePin;
}

- (void) setMiracastRequirePin: (BOOL) val
{
    _miracastRequirePin = val;
    self.dictionary[@"miracastRequirePin"] = @(val);
}

- (BOOL) settingsBlockMyMeetingsAndFiles
{
    _settingsBlockMyMeetingsAndFiles = [self.dictionary[@"settingsBlockMyMeetingsAndFiles"] boolValue];
    return _settingsBlockMyMeetingsAndFiles;
}

- (void) setSettingsBlockMyMeetingsAndFiles: (BOOL) val
{
    _settingsBlockMyMeetingsAndFiles = val;
    self.dictionary[@"settingsBlockMyMeetingsAndFiles"] = @(val);
}

- (BOOL) settingsBlockSessionResume
{
    _settingsBlockSessionResume = [self.dictionary[@"settingsBlockSessionResume"] boolValue];
    return _settingsBlockSessionResume;
}

- (void) setSettingsBlockSessionResume: (BOOL) val
{
    _settingsBlockSessionResume = val;
    self.dictionary[@"settingsBlockSessionResume"] = @(val);
}

- (BOOL) settingsBlockSigninSuggestions
{
    _settingsBlockSigninSuggestions = [self.dictionary[@"settingsBlockSigninSuggestions"] boolValue];
    return _settingsBlockSigninSuggestions;
}

- (void) setSettingsBlockSigninSuggestions: (BOOL) val
{
    _settingsBlockSigninSuggestions = val;
    self.dictionary[@"settingsBlockSigninSuggestions"] = @(val);
}

- (int32_t) settingsDefaultVolume
{
    _settingsDefaultVolume = [self.dictionary[@"settingsDefaultVolume"] intValue];
    return _settingsDefaultVolume;
}

- (void) setSettingsDefaultVolume: (int32_t) val
{
    _settingsDefaultVolume = val;
    self.dictionary[@"settingsDefaultVolume"] = @(val);
}

- (int32_t) settingsScreenTimeoutInMinutes
{
    _settingsScreenTimeoutInMinutes = [self.dictionary[@"settingsScreenTimeoutInMinutes"] intValue];
    return _settingsScreenTimeoutInMinutes;
}

- (void) setSettingsScreenTimeoutInMinutes: (int32_t) val
{
    _settingsScreenTimeoutInMinutes = val;
    self.dictionary[@"settingsScreenTimeoutInMinutes"] = @(val);
}

- (int32_t) settingsSessionTimeoutInMinutes
{
    _settingsSessionTimeoutInMinutes = [self.dictionary[@"settingsSessionTimeoutInMinutes"] intValue];
    return _settingsSessionTimeoutInMinutes;
}

- (void) setSettingsSessionTimeoutInMinutes: (int32_t) val
{
    _settingsSessionTimeoutInMinutes = val;
    self.dictionary[@"settingsSessionTimeoutInMinutes"] = @(val);
}

- (int32_t) settingsSleepTimeoutInMinutes
{
    _settingsSleepTimeoutInMinutes = [self.dictionary[@"settingsSleepTimeoutInMinutes"] intValue];
    return _settingsSleepTimeoutInMinutes;
}

- (void) setSettingsSleepTimeoutInMinutes: (int32_t) val
{
    _settingsSleepTimeoutInMinutes = val;
    self.dictionary[@"settingsSleepTimeoutInMinutes"] = @(val);
}

- (BOOL) welcomeScreenBlockAutomaticWakeUp
{
    _welcomeScreenBlockAutomaticWakeUp = [self.dictionary[@"welcomeScreenBlockAutomaticWakeUp"] boolValue];
    return _welcomeScreenBlockAutomaticWakeUp;
}

- (void) setWelcomeScreenBlockAutomaticWakeUp: (BOOL) val
{
    _welcomeScreenBlockAutomaticWakeUp = val;
    self.dictionary[@"welcomeScreenBlockAutomaticWakeUp"] = @(val);
}

- (NSString*) welcomeScreenBackgroundImageUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"welcomeScreenBackgroundImageUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"welcomeScreenBackgroundImageUrl"];
}

- (void) setWelcomeScreenBackgroundImageUrl: (NSString*) val
{
    self.dictionary[@"welcomeScreenBackgroundImageUrl"] = val;
}

- (MSGraphWelcomeScreenMeetingInformation*) welcomeScreenMeetingInformation
{
    if(!_welcomeScreenMeetingInformation){
        _welcomeScreenMeetingInformation = [self.dictionary[@"welcomeScreenMeetingInformation"] toMSGraphWelcomeScreenMeetingInformation];
    }
    return _welcomeScreenMeetingInformation;
}

- (void) setWelcomeScreenMeetingInformation: (MSGraphWelcomeScreenMeetingInformation*) val
{
    _welcomeScreenMeetingInformation = val;
    self.dictionary[@"welcomeScreenMeetingInformation"] = val;
}


@end
