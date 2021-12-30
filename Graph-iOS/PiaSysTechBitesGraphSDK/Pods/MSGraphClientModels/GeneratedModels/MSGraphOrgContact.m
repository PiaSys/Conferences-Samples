// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOrgContact()
{
    NSArray* _addresses;
    NSString* _companyName;
    NSString* _department;
    NSString* _displayName;
    NSString* _givenName;
    NSString* _jobTitle;
    NSString* _mail;
    NSString* _mailNickname;
    BOOL _onPremisesSyncEnabled;
    NSDate* _onPremisesLastSyncDateTime;
    NSArray* _onPremisesProvisioningErrors;
    NSArray* _phones;
    NSArray* _proxyAddresses;
    NSString* _surname;
    MSGraphDirectoryObject* _manager;
    NSArray* _directReports;
    NSArray* _memberOf;
    NSArray* _transitiveMemberOf;
}
@end

@implementation MSGraphOrgContact

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.orgContact";
    }
    return self;
}
- (NSArray*) addresses
{
    if(!_addresses){
        
    NSMutableArray *addressesResult = [NSMutableArray array];
    NSArray *addresses = self.dictionary[@"addresses"];

    if ([addresses isKindOfClass:[NSArray class]]){
        for (id tempPhysicalOfficeAddress in addresses){
            [addressesResult addObject:tempPhysicalOfficeAddress];
        }
    }

    _addresses = addressesResult;
        
    }
    return _addresses;
}

- (void) setAddresses: (NSArray*) val
{
    _addresses = val;
    self.dictionary[@"addresses"] = val;
}

- (NSString*) companyName
{
    if([[NSNull null] isEqual:self.dictionary[@"companyName"]])
    {
        return nil;
    }   
    return self.dictionary[@"companyName"];
}

- (void) setCompanyName: (NSString*) val
{
    self.dictionary[@"companyName"] = val;
}

- (NSString*) department
{
    if([[NSNull null] isEqual:self.dictionary[@"department"]])
    {
        return nil;
    }   
    return self.dictionary[@"department"];
}

- (void) setDepartment: (NSString*) val
{
    self.dictionary[@"department"] = val;
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

- (NSString*) givenName
{
    if([[NSNull null] isEqual:self.dictionary[@"givenName"]])
    {
        return nil;
    }   
    return self.dictionary[@"givenName"];
}

- (void) setGivenName: (NSString*) val
{
    self.dictionary[@"givenName"] = val;
}

- (NSString*) jobTitle
{
    if([[NSNull null] isEqual:self.dictionary[@"jobTitle"]])
    {
        return nil;
    }   
    return self.dictionary[@"jobTitle"];
}

- (void) setJobTitle: (NSString*) val
{
    self.dictionary[@"jobTitle"] = val;
}

- (NSString*) mail
{
    if([[NSNull null] isEqual:self.dictionary[@"mail"]])
    {
        return nil;
    }   
    return self.dictionary[@"mail"];
}

- (void) setMail: (NSString*) val
{
    self.dictionary[@"mail"] = val;
}

- (NSString*) mailNickname
{
    if([[NSNull null] isEqual:self.dictionary[@"mailNickname"]])
    {
        return nil;
    }   
    return self.dictionary[@"mailNickname"];
}

- (void) setMailNickname: (NSString*) val
{
    self.dictionary[@"mailNickname"] = val;
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

- (NSArray*) onPremisesProvisioningErrors
{
    if(!_onPremisesProvisioningErrors){
        
    NSMutableArray *onPremisesProvisioningErrorsResult = [NSMutableArray array];
    NSArray *onPremisesProvisioningErrors = self.dictionary[@"onPremisesProvisioningErrors"];

    if ([onPremisesProvisioningErrors isKindOfClass:[NSArray class]]){
        for (id tempOnPremisesProvisioningError in onPremisesProvisioningErrors){
            [onPremisesProvisioningErrorsResult addObject:tempOnPremisesProvisioningError];
        }
    }

    _onPremisesProvisioningErrors = onPremisesProvisioningErrorsResult;
        
    }
    return _onPremisesProvisioningErrors;
}

- (void) setOnPremisesProvisioningErrors: (NSArray*) val
{
    _onPremisesProvisioningErrors = val;
    self.dictionary[@"onPremisesProvisioningErrors"] = val;
}

- (NSArray*) phones
{
    if(!_phones){
        
    NSMutableArray *phonesResult = [NSMutableArray array];
    NSArray *phones = self.dictionary[@"phones"];

    if ([phones isKindOfClass:[NSArray class]]){
        for (id tempPhone in phones){
            [phonesResult addObject:tempPhone];
        }
    }

    _phones = phonesResult;
        
    }
    return _phones;
}

- (void) setPhones: (NSArray*) val
{
    _phones = val;
    self.dictionary[@"phones"] = val;
}

- (NSArray*) proxyAddresses
{
    return self.dictionary[@"proxyAddresses"];
}

- (void) setProxyAddresses: (NSArray*) val
{
    self.dictionary[@"proxyAddresses"] = val;
}

- (NSString*) surname
{
    if([[NSNull null] isEqual:self.dictionary[@"surname"]])
    {
        return nil;
    }   
    return self.dictionary[@"surname"];
}

- (void) setSurname: (NSString*) val
{
    self.dictionary[@"surname"] = val;
}

- (MSGraphDirectoryObject*) manager
{
    if(!_manager){
        _manager = [[MSGraphDirectoryObject alloc] initWithDictionary: self.dictionary[@"manager"]];
    }
    return _manager;
}

- (void) setManager: (MSGraphDirectoryObject*) val
{
    _manager = val;
    self.dictionary[@"manager"] = val;
}

- (NSArray*) directReports
{
    if(!_directReports){
        
    NSMutableArray *directReportsResult = [NSMutableArray array];
    NSArray *directReports = self.dictionary[@"directReports"];

    if ([directReports isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in directReports){
            [directReportsResult addObject:tempDirectoryObject];
        }
    }

    _directReports = directReportsResult;
        
    }
    return _directReports;
}

- (void) setDirectReports: (NSArray*) val
{
    _directReports = val;
    self.dictionary[@"directReports"] = val;
}

- (NSArray*) memberOf
{
    if(!_memberOf){
        
    NSMutableArray *memberOfResult = [NSMutableArray array];
    NSArray *memberOf = self.dictionary[@"memberOf"];

    if ([memberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in memberOf){
            [memberOfResult addObject:tempDirectoryObject];
        }
    }

    _memberOf = memberOfResult;
        
    }
    return _memberOf;
}

- (void) setMemberOf: (NSArray*) val
{
    _memberOf = val;
    self.dictionary[@"memberOf"] = val;
}

- (NSArray*) transitiveMemberOf
{
    if(!_transitiveMemberOf){
        
    NSMutableArray *transitiveMemberOfResult = [NSMutableArray array];
    NSArray *transitiveMemberOf = self.dictionary[@"transitiveMemberOf"];

    if ([transitiveMemberOf isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in transitiveMemberOf){
            [transitiveMemberOfResult addObject:tempDirectoryObject];
        }
    }

    _transitiveMemberOf = transitiveMemberOfResult;
        
    }
    return _transitiveMemberOf;
}

- (void) setTransitiveMemberOf: (NSArray*) val
{
    _transitiveMemberOf = val;
    self.dictionary[@"transitiveMemberOf"] = val;
}


@end
