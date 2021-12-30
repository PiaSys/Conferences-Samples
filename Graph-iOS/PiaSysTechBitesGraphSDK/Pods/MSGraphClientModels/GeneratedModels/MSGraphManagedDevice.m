// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphManagedDevice()
{
    NSString* _userId;
    NSString* _deviceName;
    MSGraphManagedDeviceOwnerType* _managedDeviceOwnerType;
    NSArray* _deviceActionResults;
    NSDate* _enrolledDateTime;
    NSDate* _lastSyncDateTime;
    NSString* _operatingSystem;
    MSGraphComplianceState* _complianceState;
    NSString* _jailBroken;
    MSGraphManagementAgentType* _managementAgent;
    NSString* _osVersion;
    BOOL _easActivated;
    NSString* _easDeviceId;
    NSDate* _easActivationDateTime;
    BOOL _azureADRegistered;
    MSGraphDeviceEnrollmentType* _deviceEnrollmentType;
    NSString* _activationLockBypassCode;
    NSString* _emailAddress;
    NSString* _azureADDeviceId;
    MSGraphDeviceRegistrationState* _deviceRegistrationState;
    NSString* _deviceCategoryDisplayName;
    BOOL _isSupervised;
    NSDate* _exchangeLastSuccessfulSyncDateTime;
    MSGraphDeviceManagementExchangeAccessState* _exchangeAccessState;
    MSGraphDeviceManagementExchangeAccessStateReason* _exchangeAccessStateReason;
    NSString* _remoteAssistanceSessionUrl;
    NSString* _remoteAssistanceSessionErrorDetails;
    BOOL _isEncrypted;
    NSString* _userPrincipalName;
    NSString* _model;
    NSString* _manufacturer;
    NSString* _imei;
    NSDate* _complianceGracePeriodExpirationDateTime;
    NSString* _serialNumber;
    NSString* _phoneNumber;
    NSString* _androidSecurityPatchLevel;
    NSString* _userDisplayName;
    MSGraphConfigurationManagerClientEnabledFeatures* _configurationManagerClientEnabledFeatures;
    NSString* _wiFiMacAddress;
    MSGraphDeviceHealthAttestationState* _deviceHealthAttestationState;
    NSString* _subscriberCarrier;
    NSString* _meid;
    int64_t _totalStorageSpaceInBytes;
    int64_t _freeStorageSpaceInBytes;
    NSString* _managedDeviceName;
    MSGraphManagedDevicePartnerReportedHealthState* _partnerReportedThreatState;
    NSArray* _deviceConfigurationStates;
    NSArray* _deviceCompliancePolicyStates;
    MSGraphDeviceCategory* _deviceCategory;
}
@end

@implementation MSGraphManagedDevice

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.managedDevice";
    }
    return self;
}
- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) deviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceName"];
}

- (void) setDeviceName: (NSString*) val
{
    self.dictionary[@"deviceName"] = val;
}

- (MSGraphManagedDeviceOwnerType*) managedDeviceOwnerType
{
    if(!_managedDeviceOwnerType){
        _managedDeviceOwnerType = [self.dictionary[@"managedDeviceOwnerType"] toMSGraphManagedDeviceOwnerType];
    }
    return _managedDeviceOwnerType;
}

- (void) setManagedDeviceOwnerType: (MSGraphManagedDeviceOwnerType*) val
{
    _managedDeviceOwnerType = val;
    self.dictionary[@"managedDeviceOwnerType"] = val;
}

- (NSArray*) deviceActionResults
{
    if(!_deviceActionResults){
        
    NSMutableArray *deviceActionResultsResult = [NSMutableArray array];
    NSArray *deviceActionResults = self.dictionary[@"deviceActionResults"];

    if ([deviceActionResults isKindOfClass:[NSArray class]]){
        for (id tempDeviceActionResult in deviceActionResults){
            [deviceActionResultsResult addObject:tempDeviceActionResult];
        }
    }

    _deviceActionResults = deviceActionResultsResult;
        
    }
    return _deviceActionResults;
}

- (void) setDeviceActionResults: (NSArray*) val
{
    _deviceActionResults = val;
    self.dictionary[@"deviceActionResults"] = val;
}

- (NSDate*) enrolledDateTime
{
    if(!_enrolledDateTime){
        _enrolledDateTime = [NSDate ms_dateFromString: self.dictionary[@"enrolledDateTime"]];
    }
    return _enrolledDateTime;
}

- (void) setEnrolledDateTime: (NSDate*) val
{
    _enrolledDateTime = val;
    self.dictionary[@"enrolledDateTime"] = [val ms_toString];
}

- (NSDate*) lastSyncDateTime
{
    if(!_lastSyncDateTime){
        _lastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSyncDateTime"]];
    }
    return _lastSyncDateTime;
}

- (void) setLastSyncDateTime: (NSDate*) val
{
    _lastSyncDateTime = val;
    self.dictionary[@"lastSyncDateTime"] = [val ms_toString];
}

- (NSString*) operatingSystem
{
    if([[NSNull null] isEqual:self.dictionary[@"operatingSystem"]])
    {
        return nil;
    }   
    return self.dictionary[@"operatingSystem"];
}

- (void) setOperatingSystem: (NSString*) val
{
    self.dictionary[@"operatingSystem"] = val;
}

- (MSGraphComplianceState*) complianceState
{
    if(!_complianceState){
        _complianceState = [self.dictionary[@"complianceState"] toMSGraphComplianceState];
    }
    return _complianceState;
}

- (void) setComplianceState: (MSGraphComplianceState*) val
{
    _complianceState = val;
    self.dictionary[@"complianceState"] = val;
}

- (NSString*) jailBroken
{
    if([[NSNull null] isEqual:self.dictionary[@"jailBroken"]])
    {
        return nil;
    }   
    return self.dictionary[@"jailBroken"];
}

- (void) setJailBroken: (NSString*) val
{
    self.dictionary[@"jailBroken"] = val;
}

- (MSGraphManagementAgentType*) managementAgent
{
    if(!_managementAgent){
        _managementAgent = [self.dictionary[@"managementAgent"] toMSGraphManagementAgentType];
    }
    return _managementAgent;
}

- (void) setManagementAgent: (MSGraphManagementAgentType*) val
{
    _managementAgent = val;
    self.dictionary[@"managementAgent"] = val;
}

- (NSString*) osVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osVersion"];
}

- (void) setOsVersion: (NSString*) val
{
    self.dictionary[@"osVersion"] = val;
}

- (BOOL) easActivated
{
    _easActivated = [self.dictionary[@"easActivated"] boolValue];
    return _easActivated;
}

- (void) setEasActivated: (BOOL) val
{
    _easActivated = val;
    self.dictionary[@"easActivated"] = @(val);
}

- (NSString*) easDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"easDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"easDeviceId"];
}

- (void) setEasDeviceId: (NSString*) val
{
    self.dictionary[@"easDeviceId"] = val;
}

- (NSDate*) easActivationDateTime
{
    if(!_easActivationDateTime){
        _easActivationDateTime = [NSDate ms_dateFromString: self.dictionary[@"easActivationDateTime"]];
    }
    return _easActivationDateTime;
}

- (void) setEasActivationDateTime: (NSDate*) val
{
    _easActivationDateTime = val;
    self.dictionary[@"easActivationDateTime"] = [val ms_toString];
}

- (BOOL) azureADRegistered
{
    _azureADRegistered = [self.dictionary[@"azureADRegistered"] boolValue];
    return _azureADRegistered;
}

- (void) setAzureADRegistered: (BOOL) val
{
    _azureADRegistered = val;
    self.dictionary[@"azureADRegistered"] = @(val);
}

- (MSGraphDeviceEnrollmentType*) deviceEnrollmentType
{
    if(!_deviceEnrollmentType){
        _deviceEnrollmentType = [self.dictionary[@"deviceEnrollmentType"] toMSGraphDeviceEnrollmentType];
    }
    return _deviceEnrollmentType;
}

- (void) setDeviceEnrollmentType: (MSGraphDeviceEnrollmentType*) val
{
    _deviceEnrollmentType = val;
    self.dictionary[@"deviceEnrollmentType"] = val;
}

- (NSString*) activationLockBypassCode
{
    if([[NSNull null] isEqual:self.dictionary[@"activationLockBypassCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"activationLockBypassCode"];
}

- (void) setActivationLockBypassCode: (NSString*) val
{
    self.dictionary[@"activationLockBypassCode"] = val;
}

- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSString*) azureADDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"azureADDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureADDeviceId"];
}

- (void) setAzureADDeviceId: (NSString*) val
{
    self.dictionary[@"azureADDeviceId"] = val;
}

- (MSGraphDeviceRegistrationState*) deviceRegistrationState
{
    if(!_deviceRegistrationState){
        _deviceRegistrationState = [self.dictionary[@"deviceRegistrationState"] toMSGraphDeviceRegistrationState];
    }
    return _deviceRegistrationState;
}

- (void) setDeviceRegistrationState: (MSGraphDeviceRegistrationState*) val
{
    _deviceRegistrationState = val;
    self.dictionary[@"deviceRegistrationState"] = val;
}

- (NSString*) deviceCategoryDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceCategoryDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceCategoryDisplayName"];
}

- (void) setDeviceCategoryDisplayName: (NSString*) val
{
    self.dictionary[@"deviceCategoryDisplayName"] = val;
}

- (BOOL) isSupervised
{
    _isSupervised = [self.dictionary[@"isSupervised"] boolValue];
    return _isSupervised;
}

- (void) setIsSupervised: (BOOL) val
{
    _isSupervised = val;
    self.dictionary[@"isSupervised"] = @(val);
}

- (NSDate*) exchangeLastSuccessfulSyncDateTime
{
    if(!_exchangeLastSuccessfulSyncDateTime){
        _exchangeLastSuccessfulSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"exchangeLastSuccessfulSyncDateTime"]];
    }
    return _exchangeLastSuccessfulSyncDateTime;
}

- (void) setExchangeLastSuccessfulSyncDateTime: (NSDate*) val
{
    _exchangeLastSuccessfulSyncDateTime = val;
    self.dictionary[@"exchangeLastSuccessfulSyncDateTime"] = [val ms_toString];
}

- (MSGraphDeviceManagementExchangeAccessState*) exchangeAccessState
{
    if(!_exchangeAccessState){
        _exchangeAccessState = [self.dictionary[@"exchangeAccessState"] toMSGraphDeviceManagementExchangeAccessState];
    }
    return _exchangeAccessState;
}

- (void) setExchangeAccessState: (MSGraphDeviceManagementExchangeAccessState*) val
{
    _exchangeAccessState = val;
    self.dictionary[@"exchangeAccessState"] = val;
}

- (MSGraphDeviceManagementExchangeAccessStateReason*) exchangeAccessStateReason
{
    if(!_exchangeAccessStateReason){
        _exchangeAccessStateReason = [self.dictionary[@"exchangeAccessStateReason"] toMSGraphDeviceManagementExchangeAccessStateReason];
    }
    return _exchangeAccessStateReason;
}

- (void) setExchangeAccessStateReason: (MSGraphDeviceManagementExchangeAccessStateReason*) val
{
    _exchangeAccessStateReason = val;
    self.dictionary[@"exchangeAccessStateReason"] = val;
}

- (NSString*) remoteAssistanceSessionUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"remoteAssistanceSessionUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"remoteAssistanceSessionUrl"];
}

- (void) setRemoteAssistanceSessionUrl: (NSString*) val
{
    self.dictionary[@"remoteAssistanceSessionUrl"] = val;
}

- (NSString*) remoteAssistanceSessionErrorDetails
{
    if([[NSNull null] isEqual:self.dictionary[@"remoteAssistanceSessionErrorDetails"]])
    {
        return nil;
    }   
    return self.dictionary[@"remoteAssistanceSessionErrorDetails"];
}

- (void) setRemoteAssistanceSessionErrorDetails: (NSString*) val
{
    self.dictionary[@"remoteAssistanceSessionErrorDetails"] = val;
}

- (BOOL) isEncrypted
{
    _isEncrypted = [self.dictionary[@"isEncrypted"] boolValue];
    return _isEncrypted;
}

- (void) setIsEncrypted: (BOOL) val
{
    _isEncrypted = val;
    self.dictionary[@"isEncrypted"] = @(val);
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}

- (NSString*) model
{
    if([[NSNull null] isEqual:self.dictionary[@"model"]])
    {
        return nil;
    }   
    return self.dictionary[@"model"];
}

- (void) setModel: (NSString*) val
{
    self.dictionary[@"model"] = val;
}

- (NSString*) manufacturer
{
    if([[NSNull null] isEqual:self.dictionary[@"manufacturer"]])
    {
        return nil;
    }   
    return self.dictionary[@"manufacturer"];
}

- (void) setManufacturer: (NSString*) val
{
    self.dictionary[@"manufacturer"] = val;
}

- (NSString*) imei
{
    if([[NSNull null] isEqual:self.dictionary[@"imei"]])
    {
        return nil;
    }   
    return self.dictionary[@"imei"];
}

- (void) setImei: (NSString*) val
{
    self.dictionary[@"imei"] = val;
}

- (NSDate*) complianceGracePeriodExpirationDateTime
{
    if(!_complianceGracePeriodExpirationDateTime){
        _complianceGracePeriodExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"complianceGracePeriodExpirationDateTime"]];
    }
    return _complianceGracePeriodExpirationDateTime;
}

- (void) setComplianceGracePeriodExpirationDateTime: (NSDate*) val
{
    _complianceGracePeriodExpirationDateTime = val;
    self.dictionary[@"complianceGracePeriodExpirationDateTime"] = [val ms_toString];
}

- (NSString*) serialNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"serialNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"serialNumber"];
}

- (void) setSerialNumber: (NSString*) val
{
    self.dictionary[@"serialNumber"] = val;
}

- (NSString*) phoneNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"phoneNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"phoneNumber"];
}

- (void) setPhoneNumber: (NSString*) val
{
    self.dictionary[@"phoneNumber"] = val;
}

- (NSString*) androidSecurityPatchLevel
{
    if([[NSNull null] isEqual:self.dictionary[@"androidSecurityPatchLevel"]])
    {
        return nil;
    }   
    return self.dictionary[@"androidSecurityPatchLevel"];
}

- (void) setAndroidSecurityPatchLevel: (NSString*) val
{
    self.dictionary[@"androidSecurityPatchLevel"] = val;
}

- (NSString*) userDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"userDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userDisplayName"];
}

- (void) setUserDisplayName: (NSString*) val
{
    self.dictionary[@"userDisplayName"] = val;
}

- (MSGraphConfigurationManagerClientEnabledFeatures*) configurationManagerClientEnabledFeatures
{
    if(!_configurationManagerClientEnabledFeatures){
        _configurationManagerClientEnabledFeatures = [[MSGraphConfigurationManagerClientEnabledFeatures alloc] initWithDictionary: self.dictionary[@"configurationManagerClientEnabledFeatures"]];
    }
    return _configurationManagerClientEnabledFeatures;
}

- (void) setConfigurationManagerClientEnabledFeatures: (MSGraphConfigurationManagerClientEnabledFeatures*) val
{
    _configurationManagerClientEnabledFeatures = val;
    self.dictionary[@"configurationManagerClientEnabledFeatures"] = val;
}

- (NSString*) wiFiMacAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"wiFiMacAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"wiFiMacAddress"];
}

- (void) setWiFiMacAddress: (NSString*) val
{
    self.dictionary[@"wiFiMacAddress"] = val;
}

- (MSGraphDeviceHealthAttestationState*) deviceHealthAttestationState
{
    if(!_deviceHealthAttestationState){
        _deviceHealthAttestationState = [[MSGraphDeviceHealthAttestationState alloc] initWithDictionary: self.dictionary[@"deviceHealthAttestationState"]];
    }
    return _deviceHealthAttestationState;
}

- (void) setDeviceHealthAttestationState: (MSGraphDeviceHealthAttestationState*) val
{
    _deviceHealthAttestationState = val;
    self.dictionary[@"deviceHealthAttestationState"] = val;
}

- (NSString*) subscriberCarrier
{
    if([[NSNull null] isEqual:self.dictionary[@"subscriberCarrier"]])
    {
        return nil;
    }   
    return self.dictionary[@"subscriberCarrier"];
}

- (void) setSubscriberCarrier: (NSString*) val
{
    self.dictionary[@"subscriberCarrier"] = val;
}

- (NSString*) meid
{
    if([[NSNull null] isEqual:self.dictionary[@"meid"]])
    {
        return nil;
    }   
    return self.dictionary[@"meid"];
}

- (void) setMeid: (NSString*) val
{
    self.dictionary[@"meid"] = val;
}

- (int64_t) totalStorageSpaceInBytes
{
    _totalStorageSpaceInBytes = [self.dictionary[@"totalStorageSpaceInBytes"] longLongValue];
    return _totalStorageSpaceInBytes;
}

- (void) setTotalStorageSpaceInBytes: (int64_t) val
{
    _totalStorageSpaceInBytes = val;
    self.dictionary[@"totalStorageSpaceInBytes"] = @(val);
}

- (int64_t) freeStorageSpaceInBytes
{
    _freeStorageSpaceInBytes = [self.dictionary[@"freeStorageSpaceInBytes"] longLongValue];
    return _freeStorageSpaceInBytes;
}

- (void) setFreeStorageSpaceInBytes: (int64_t) val
{
    _freeStorageSpaceInBytes = val;
    self.dictionary[@"freeStorageSpaceInBytes"] = @(val);
}

- (NSString*) managedDeviceName
{
    if([[NSNull null] isEqual:self.dictionary[@"managedDeviceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"managedDeviceName"];
}

- (void) setManagedDeviceName: (NSString*) val
{
    self.dictionary[@"managedDeviceName"] = val;
}

- (MSGraphManagedDevicePartnerReportedHealthState*) partnerReportedThreatState
{
    if(!_partnerReportedThreatState){
        _partnerReportedThreatState = [self.dictionary[@"partnerReportedThreatState"] toMSGraphManagedDevicePartnerReportedHealthState];
    }
    return _partnerReportedThreatState;
}

- (void) setPartnerReportedThreatState: (MSGraphManagedDevicePartnerReportedHealthState*) val
{
    _partnerReportedThreatState = val;
    self.dictionary[@"partnerReportedThreatState"] = val;
}

- (NSArray*) deviceConfigurationStates
{
    if(!_deviceConfigurationStates){
        
    NSMutableArray *deviceConfigurationStatesResult = [NSMutableArray array];
    NSArray *deviceConfigurationStates = self.dictionary[@"deviceConfigurationStates"];

    if ([deviceConfigurationStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceConfigurationState in deviceConfigurationStates){
            [deviceConfigurationStatesResult addObject:tempDeviceConfigurationState];
        }
    }

    _deviceConfigurationStates = deviceConfigurationStatesResult;
        
    }
    return _deviceConfigurationStates;
}

- (void) setDeviceConfigurationStates: (NSArray*) val
{
    _deviceConfigurationStates = val;
    self.dictionary[@"deviceConfigurationStates"] = val;
}

- (NSArray*) deviceCompliancePolicyStates
{
    if(!_deviceCompliancePolicyStates){
        
    NSMutableArray *deviceCompliancePolicyStatesResult = [NSMutableArray array];
    NSArray *deviceCompliancePolicyStates = self.dictionary[@"deviceCompliancePolicyStates"];

    if ([deviceCompliancePolicyStates isKindOfClass:[NSArray class]]){
        for (id tempDeviceCompliancePolicyState in deviceCompliancePolicyStates){
            [deviceCompliancePolicyStatesResult addObject:tempDeviceCompliancePolicyState];
        }
    }

    _deviceCompliancePolicyStates = deviceCompliancePolicyStatesResult;
        
    }
    return _deviceCompliancePolicyStates;
}

- (void) setDeviceCompliancePolicyStates: (NSArray*) val
{
    _deviceCompliancePolicyStates = val;
    self.dictionary[@"deviceCompliancePolicyStates"] = val;
}

- (MSGraphDeviceCategory*) deviceCategory
{
    if(!_deviceCategory){
        _deviceCategory = [[MSGraphDeviceCategory alloc] initWithDictionary: self.dictionary[@"deviceCategory"]];
    }
    return _deviceCategory;
}

- (void) setDeviceCategory: (MSGraphDeviceCategory*) val
{
    _deviceCategory = val;
    self.dictionary[@"deviceCategory"] = val;
}


@end
