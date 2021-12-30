// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrganization()
{
    NSArray* _assignedPlans;
    NSArray* _businessPhones;
    NSString* _city;
    NSString* _country;
    NSString* _countryLetterCode;
    NSDate* _createdDateTime;
    NSString* _displayName;
    NSArray* _marketingNotificationEmails;
    NSDate* _onPremisesLastSyncDateTime;
    BOOL _onPremisesSyncEnabled;
    NSString* _postalCode;
    NSString* _preferredLanguage;
    MSGraphPrivacyProfile* _privacyProfile;
    NSArray* _provisionedPlans;
    NSArray* _securityComplianceNotificationMails;
    NSArray* _securityComplianceNotificationPhones;
    NSString* _state;
    NSString* _street;
    NSArray* _technicalNotificationMails;
    NSArray* _verifiedDomains;
    MSGraphMdmAuthority* _mobileDeviceManagementAuthority;
    NSArray* _certificateBasedAuthConfiguration;
    NSArray* _extensions;
}
@end

@implementation MSGraphOrganization

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.organization";
    }
    return self;
}
- (NSArray*) assignedPlans
{
    if(!_assignedPlans){
        
    NSMutableArray *assignedPlansResult = [NSMutableArray array];
    NSArray *assignedPlans = self.dictionary[@"assignedPlans"];

    if ([assignedPlans isKindOfClass:[NSArray class]]){
        for (id tempAssignedPlan in assignedPlans){
            [assignedPlansResult addObject:tempAssignedPlan];
        }
    }

    _assignedPlans = assignedPlansResult;
        
    }
    return _assignedPlans;
}

- (void) setAssignedPlans: (NSArray*) val
{
    _assignedPlans = val;
    self.dictionary[@"assignedPlans"] = val;
}

- (NSArray*) businessPhones
{
    return self.dictionary[@"businessPhones"];
}

- (void) setBusinessPhones: (NSArray*) val
{
    self.dictionary[@"businessPhones"] = val;
}

- (NSString*) city
{
    if([[NSNull null] isEqual:self.dictionary[@"city"]])
    {
        return nil;
    }   
    return self.dictionary[@"city"];
}

- (void) setCity: (NSString*) val
{
    self.dictionary[@"city"] = val;
}

- (NSString*) country
{
    if([[NSNull null] isEqual:self.dictionary[@"country"]])
    {
        return nil;
    }   
    return self.dictionary[@"country"];
}

- (void) setCountry: (NSString*) val
{
    self.dictionary[@"country"] = val;
}

- (NSString*) countryLetterCode
{
    if([[NSNull null] isEqual:self.dictionary[@"countryLetterCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"countryLetterCode"];
}

- (void) setCountryLetterCode: (NSString*) val
{
    self.dictionary[@"countryLetterCode"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSArray*) marketingNotificationEmails
{
    return self.dictionary[@"marketingNotificationEmails"];
}

- (void) setMarketingNotificationEmails: (NSArray*) val
{
    self.dictionary[@"marketingNotificationEmails"] = val;
}

- (NSDate*) onPremisesLastSyncDateTime
{
    if(!_onPremisesLastSyncDateTime){
        _onPremisesLastSyncDateTime = [NSDate ms_dateFromString: self.dictionary[@"onPremisesLastSyncDateTime"]];
    }
    return _onPremisesLastSyncDateTime;
}

- (void) setOnPremisesLastSyncDateTime: (NSDate*) val
{
    _onPremisesLastSyncDateTime = val;
    self.dictionary[@"onPremisesLastSyncDateTime"] = [val ms_toString];
}

- (BOOL) onPremisesSyncEnabled
{
    _onPremisesSyncEnabled = [self.dictionary[@"onPremisesSyncEnabled"] boolValue];
    return _onPremisesSyncEnabled;
}

- (void) setOnPremisesSyncEnabled: (BOOL) val
{
    _onPremisesSyncEnabled = val;
    self.dictionary[@"onPremisesSyncEnabled"] = @(val);
}

- (NSString*) postalCode
{
    if([[NSNull null] isEqual:self.dictionary[@"postalCode"]])
    {
        return nil;
    }   
    return self.dictionary[@"postalCode"];
}

- (void) setPostalCode: (NSString*) val
{
    self.dictionary[@"postalCode"] = val;
}

- (NSString*) preferredLanguage
{
    if([[NSNull null] isEqual:self.dictionary[@"preferredLanguage"]])
    {
        return nil;
    }   
    return self.dictionary[@"preferredLanguage"];
}

- (void) setPreferredLanguage: (NSString*) val
{
    self.dictionary[@"preferredLanguage"] = val;
}

- (MSGraphPrivacyProfile*) privacyProfile
{
    if(!_privacyProfile){
        _privacyProfile = [[MSGraphPrivacyProfile alloc] initWithDictionary: self.dictionary[@"privacyProfile"]];
    }
    return _privacyProfile;
}

- (void) setPrivacyProfile: (MSGraphPrivacyProfile*) val
{
    _privacyProfile = val;
    self.dictionary[@"privacyProfile"] = val;
}

- (NSArray*) provisionedPlans
{
    if(!_provisionedPlans){
        
    NSMutableArray *provisionedPlansResult = [NSMutableArray array];
    NSArray *provisionedPlans = self.dictionary[@"provisionedPlans"];

    if ([provisionedPlans isKindOfClass:[NSArray class]]){
        for (id tempProvisionedPlan in provisionedPlans){
            [provisionedPlansResult addObject:tempProvisionedPlan];
        }
    }

    _provisionedPlans = provisionedPlansResult;
        
    }
    return _provisionedPlans;
}

- (void) setProvisionedPlans: (NSArray*) val
{
    _provisionedPlans = val;
    self.dictionary[@"provisionedPlans"] = val;
}

- (NSArray*) securityComplianceNotificationMails
{
    return self.dictionary[@"securityComplianceNotificationMails"];
}

- (void) setSecurityComplianceNotificationMails: (NSArray*) val
{
    self.dictionary[@"securityComplianceNotificationMails"] = val;
}

- (NSArray*) securityComplianceNotificationPhones
{
    return self.dictionary[@"securityComplianceNotificationPhones"];
}

- (void) setSecurityComplianceNotificationPhones: (NSArray*) val
{
    self.dictionary[@"securityComplianceNotificationPhones"] = val;
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

- (NSString*) street
{
    if([[NSNull null] isEqual:self.dictionary[@"street"]])
    {
        return nil;
    }   
    return self.dictionary[@"street"];
}

- (void) setStreet: (NSString*) val
{
    self.dictionary[@"street"] = val;
}

- (NSArray*) technicalNotificationMails
{
    return self.dictionary[@"technicalNotificationMails"];
}

- (void) setTechnicalNotificationMails: (NSArray*) val
{
    self.dictionary[@"technicalNotificationMails"] = val;
}

- (NSArray*) verifiedDomains
{
    if(!_verifiedDomains){
        
    NSMutableArray *verifiedDomainsResult = [NSMutableArray array];
    NSArray *verifiedDomains = self.dictionary[@"verifiedDomains"];

    if ([verifiedDomains isKindOfClass:[NSArray class]]){
        for (id tempVerifiedDomain in verifiedDomains){
            [verifiedDomainsResult addObject:tempVerifiedDomain];
        }
    }

    _verifiedDomains = verifiedDomainsResult;
        
    }
    return _verifiedDomains;
}

- (void) setVerifiedDomains: (NSArray*) val
{
    _verifiedDomains = val;
    self.dictionary[@"verifiedDomains"] = val;
}

- (MSGraphMdmAuthority*) mobileDeviceManagementAuthority
{
    if(!_mobileDeviceManagementAuthority){
        _mobileDeviceManagementAuthority = [self.dictionary[@"mobileDeviceManagementAuthority"] toMSGraphMdmAuthority];
    }
    return _mobileDeviceManagementAuthority;
}

- (void) setMobileDeviceManagementAuthority: (MSGraphMdmAuthority*) val
{
    _mobileDeviceManagementAuthority = val;
    self.dictionary[@"mobileDeviceManagementAuthority"] = val;
}

- (NSArray*) certificateBasedAuthConfiguration
{
    if(!_certificateBasedAuthConfiguration){
        
    NSMutableArray *certificateBasedAuthConfigurationResult = [NSMutableArray array];
    NSArray *certificateBasedAuthConfiguration = self.dictionary[@"certificateBasedAuthConfiguration"];

    if ([certificateBasedAuthConfiguration isKindOfClass:[NSArray class]]){
        for (id tempCertificateBasedAuthConfiguration in certificateBasedAuthConfiguration){
            [certificateBasedAuthConfigurationResult addObject:tempCertificateBasedAuthConfiguration];
        }
    }

    _certificateBasedAuthConfiguration = certificateBasedAuthConfigurationResult;
        
    }
    return _certificateBasedAuthConfiguration;
}

- (void) setCertificateBasedAuthConfiguration: (NSArray*) val
{
    _certificateBasedAuthConfiguration = val;
    self.dictionary[@"certificateBasedAuthConfiguration"] = val;
}

- (NSArray*) extensions
{
    if(!_extensions){
        
    NSMutableArray *extensionsResult = [NSMutableArray array];
    NSArray *extensions = self.dictionary[@"extensions"];

    if ([extensions isKindOfClass:[NSArray class]]){
        for (id tempExtension in extensions){
            [extensionsResult addObject:tempExtension];
        }
    }

    _extensions = extensionsResult;
        
    }
    return _extensions;
}

- (void) setExtensions: (NSArray*) val
{
    _extensions = val;
    self.dictionary[@"extensions"] = val;
}


@end
