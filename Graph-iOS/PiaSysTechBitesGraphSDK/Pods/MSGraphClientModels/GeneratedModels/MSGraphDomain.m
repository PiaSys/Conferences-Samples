// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDomain()
{
    NSString* _authenticationType;
    NSString* _availabilityStatus;
    BOOL _isAdminManaged;
    BOOL _isDefault;
    BOOL _isInitial;
    BOOL _isRoot;
    BOOL _isVerified;
    int32_t _passwordNotificationWindowInDays;
    int32_t _passwordValidityPeriodInDays;
    NSArray* _supportedServices;
    MSGraphDomainState* _state;
    NSArray* _serviceConfigurationRecords;
    NSArray* _verificationDnsRecords;
    NSArray* _domainNameReferences;
}
@end

@implementation MSGraphDomain

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.domain";
    }
    return self;
}
- (NSString*) authenticationType
{
    return self.dictionary[@"authenticationType"];
}

- (void) setAuthenticationType: (NSString*) val
{
    self.dictionary[@"authenticationType"] = val;
}

- (NSString*) availabilityStatus
{
    if([[NSNull null] isEqual:self.dictionary[@"availabilityStatus"]])
    {
        return nil;
    }   
    return self.dictionary[@"availabilityStatus"];
}

- (void) setAvailabilityStatus: (NSString*) val
{
    self.dictionary[@"availabilityStatus"] = val;
}

- (BOOL) isAdminManaged
{
    _isAdminManaged = [self.dictionary[@"isAdminManaged"] boolValue];
    return _isAdminManaged;
}

- (void) setIsAdminManaged: (BOOL) val
{
    _isAdminManaged = val;
    self.dictionary[@"isAdminManaged"] = @(val);
}

- (BOOL) isDefault
{
    _isDefault = [self.dictionary[@"isDefault"] boolValue];
    return _isDefault;
}

- (void) setIsDefault: (BOOL) val
{
    _isDefault = val;
    self.dictionary[@"isDefault"] = @(val);
}

- (BOOL) isInitial
{
    _isInitial = [self.dictionary[@"isInitial"] boolValue];
    return _isInitial;
}

- (void) setIsInitial: (BOOL) val
{
    _isInitial = val;
    self.dictionary[@"isInitial"] = @(val);
}

- (BOOL) isRoot
{
    _isRoot = [self.dictionary[@"isRoot"] boolValue];
    return _isRoot;
}

- (void) setIsRoot: (BOOL) val
{
    _isRoot = val;
    self.dictionary[@"isRoot"] = @(val);
}

- (BOOL) isVerified
{
    _isVerified = [self.dictionary[@"isVerified"] boolValue];
    return _isVerified;
}

- (void) setIsVerified: (BOOL) val
{
    _isVerified = val;
    self.dictionary[@"isVerified"] = @(val);
}

- (int32_t) passwordNotificationWindowInDays
{
    _passwordNotificationWindowInDays = [self.dictionary[@"passwordNotificationWindowInDays"] intValue];
    return _passwordNotificationWindowInDays;
}

- (void) setPasswordNotificationWindowInDays: (int32_t) val
{
    _passwordNotificationWindowInDays = val;
    self.dictionary[@"passwordNotificationWindowInDays"] = @(val);
}

- (int32_t) passwordValidityPeriodInDays
{
    _passwordValidityPeriodInDays = [self.dictionary[@"passwordValidityPeriodInDays"] intValue];
    return _passwordValidityPeriodInDays;
}

- (void) setPasswordValidityPeriodInDays: (int32_t) val
{
    _passwordValidityPeriodInDays = val;
    self.dictionary[@"passwordValidityPeriodInDays"] = @(val);
}

- (NSArray*) supportedServices
{
    return self.dictionary[@"supportedServices"];
}

- (void) setSupportedServices: (NSArray*) val
{
    self.dictionary[@"supportedServices"] = val;
}

- (MSGraphDomainState*) state
{
    if(!_state){
        _state = [[MSGraphDomainState alloc] initWithDictionary: self.dictionary[@"state"]];
    }
    return _state;
}

- (void) setState: (MSGraphDomainState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (NSArray*) serviceConfigurationRecords
{
    if(!_serviceConfigurationRecords){
        
    NSMutableArray *serviceConfigurationRecordsResult = [NSMutableArray array];
    NSArray *serviceConfigurationRecords = self.dictionary[@"serviceConfigurationRecords"];

    if ([serviceConfigurationRecords isKindOfClass:[NSArray class]]){
        for (id tempDomainDnsRecord in serviceConfigurationRecords){
            [serviceConfigurationRecordsResult addObject:tempDomainDnsRecord];
        }
    }

    _serviceConfigurationRecords = serviceConfigurationRecordsResult;
        
    }
    return _serviceConfigurationRecords;
}

- (void) setServiceConfigurationRecords: (NSArray*) val
{
    _serviceConfigurationRecords = val;
    self.dictionary[@"serviceConfigurationRecords"] = val;
}

- (NSArray*) verificationDnsRecords
{
    if(!_verificationDnsRecords){
        
    NSMutableArray *verificationDnsRecordsResult = [NSMutableArray array];
    NSArray *verificationDnsRecords = self.dictionary[@"verificationDnsRecords"];

    if ([verificationDnsRecords isKindOfClass:[NSArray class]]){
        for (id tempDomainDnsRecord in verificationDnsRecords){
            [verificationDnsRecordsResult addObject:tempDomainDnsRecord];
        }
    }

    _verificationDnsRecords = verificationDnsRecordsResult;
        
    }
    return _verificationDnsRecords;
}

- (void) setVerificationDnsRecords: (NSArray*) val
{
    _verificationDnsRecords = val;
    self.dictionary[@"verificationDnsRecords"] = val;
}

- (NSArray*) domainNameReferences
{
    if(!_domainNameReferences){
        
    NSMutableArray *domainNameReferencesResult = [NSMutableArray array];
    NSArray *domainNameReferences = self.dictionary[@"domainNameReferences"];

    if ([domainNameReferences isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in domainNameReferences){
            [domainNameReferencesResult addObject:tempDirectoryObject];
        }
    }

    _domainNameReferences = domainNameReferencesResult;
        
    }
    return _domainNameReferences;
}

- (void) setDomainNameReferences: (NSArray*) val
{
    _domainNameReferences = val;
    self.dictionary[@"domainNameReferences"] = val;
}


@end
