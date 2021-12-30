// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationUser()
{
    MSGraphEducationUserRole* _primaryRole;
    NSString* _middleName;
    MSGraphEducationExternalSource* _externalSource;
    MSGraphPhysicalAddress* _residenceAddress;
    MSGraphPhysicalAddress* _mailingAddress;
    MSGraphEducationStudent* _student;
    MSGraphEducationTeacher* _teacher;
    MSGraphIdentitySet* _createdBy;
    BOOL _accountEnabled;
    NSArray* _assignedLicenses;
    NSArray* _assignedPlans;
    NSArray* _businessPhones;
    NSString* _department;
    NSString* _displayName;
    NSString* _givenName;
    NSString* _mail;
    NSString* _mailNickname;
    NSString* _mobilePhone;
    NSString* _passwordPolicies;
    MSGraphPasswordProfile* _passwordProfile;
    NSString* _officeLocation;
    NSString* _preferredLanguage;
    NSArray* _provisionedPlans;
    NSDate* _refreshTokensValidFromDateTime;
    BOOL _showInAddressList;
    NSString* _surname;
    NSString* _usageLocation;
    NSString* _userPrincipalName;
    NSString* _userType;
    NSArray* _schools;
    NSArray* _classes;
    MSGraphUser* _user;
}
@end

@implementation MSGraphEducationUser

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.educationUser";
    }
    return self;
}
- (MSGraphEducationUserRole*) primaryRole
{
    if(!_primaryRole){
        _primaryRole = [self.dictionary[@"primaryRole"] toMSGraphEducationUserRole];
    }
    return _primaryRole;
}

- (void) setPrimaryRole: (MSGraphEducationUserRole*) val
{
    _primaryRole = val;
    self.dictionary[@"primaryRole"] = val;
}

- (NSString*) middleName
{
    if([[NSNull null] isEqual:self.dictionary[@"middleName"]])
    {
        return nil;
    }   
    return self.dictionary[@"middleName"];
}

- (void) setMiddleName: (NSString*) val
{
    self.dictionary[@"middleName"] = val;
}

- (MSGraphEducationExternalSource*) externalSource
{
    if(!_externalSource){
        _externalSource = [self.dictionary[@"externalSource"] toMSGraphEducationExternalSource];
    }
    return _externalSource;
}

- (void) setExternalSource: (MSGraphEducationExternalSource*) val
{
    _externalSource = val;
    self.dictionary[@"externalSource"] = val;
}

- (MSGraphPhysicalAddress*) residenceAddress
{
    if(!_residenceAddress){
        _residenceAddress = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"residenceAddress"]];
    }
    return _residenceAddress;
}

- (void) setResidenceAddress: (MSGraphPhysicalAddress*) val
{
    _residenceAddress = val;
    self.dictionary[@"residenceAddress"] = val;
}

- (MSGraphPhysicalAddress*) mailingAddress
{
    if(!_mailingAddress){
        _mailingAddress = [[MSGraphPhysicalAddress alloc] initWithDictionary: self.dictionary[@"mailingAddress"]];
    }
    return _mailingAddress;
}

- (void) setMailingAddress: (MSGraphPhysicalAddress*) val
{
    _mailingAddress = val;
    self.dictionary[@"mailingAddress"] = val;
}

- (MSGraphEducationStudent*) student
{
    if(!_student){
        _student = [[MSGraphEducationStudent alloc] initWithDictionary: self.dictionary[@"student"]];
    }
    return _student;
}

- (void) setStudent: (MSGraphEducationStudent*) val
{
    _student = val;
    self.dictionary[@"student"] = val;
}

- (MSGraphEducationTeacher*) teacher
{
    if(!_teacher){
        _teacher = [[MSGraphEducationTeacher alloc] initWithDictionary: self.dictionary[@"teacher"]];
    }
    return _teacher;
}

- (void) setTeacher: (MSGraphEducationTeacher*) val
{
    _teacher = val;
    self.dictionary[@"teacher"] = val;
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (BOOL) accountEnabled
{
    _accountEnabled = [self.dictionary[@"accountEnabled"] boolValue];
    return _accountEnabled;
}

- (void) setAccountEnabled: (BOOL) val
{
    _accountEnabled = val;
    self.dictionary[@"accountEnabled"] = @(val);
}

- (NSArray*) assignedLicenses
{
    if(!_assignedLicenses){
        
    NSMutableArray *assignedLicensesResult = [NSMutableArray array];
    NSArray *assignedLicenses = self.dictionary[@"assignedLicenses"];

    if ([assignedLicenses isKindOfClass:[NSArray class]]){
        for (id tempAssignedLicense in assignedLicenses){
            [assignedLicensesResult addObject:tempAssignedLicense];
        }
    }

    _assignedLicenses = assignedLicensesResult;
        
    }
    return _assignedLicenses;
}

- (void) setAssignedLicenses: (NSArray*) val
{
    _assignedLicenses = val;
    self.dictionary[@"assignedLicenses"] = val;
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

- (NSString*) mobilePhone
{
    if([[NSNull null] isEqual:self.dictionary[@"mobilePhone"]])
    {
        return nil;
    }   
    return self.dictionary[@"mobilePhone"];
}

- (void) setMobilePhone: (NSString*) val
{
    self.dictionary[@"mobilePhone"] = val;
}

- (NSString*) passwordPolicies
{
    if([[NSNull null] isEqual:self.dictionary[@"passwordPolicies"]])
    {
        return nil;
    }   
    return self.dictionary[@"passwordPolicies"];
}

- (void) setPasswordPolicies: (NSString*) val
{
    self.dictionary[@"passwordPolicies"] = val;
}

- (MSGraphPasswordProfile*) passwordProfile
{
    if(!_passwordProfile){
        _passwordProfile = [[MSGraphPasswordProfile alloc] initWithDictionary: self.dictionary[@"passwordProfile"]];
    }
    return _passwordProfile;
}

- (void) setPasswordProfile: (MSGraphPasswordProfile*) val
{
    _passwordProfile = val;
    self.dictionary[@"passwordProfile"] = val;
}

- (NSString*) officeLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"officeLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"officeLocation"];
}

- (void) setOfficeLocation: (NSString*) val
{
    self.dictionary[@"officeLocation"] = val;
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

- (NSDate*) refreshTokensValidFromDateTime
{
    if(!_refreshTokensValidFromDateTime){
        _refreshTokensValidFromDateTime = [NSDate ms_dateFromString: self.dictionary[@"refreshTokensValidFromDateTime"]];
    }
    return _refreshTokensValidFromDateTime;
}

- (void) setRefreshTokensValidFromDateTime: (NSDate*) val
{
    _refreshTokensValidFromDateTime = val;
    self.dictionary[@"refreshTokensValidFromDateTime"] = [val ms_toString];
}

- (BOOL) showInAddressList
{
    _showInAddressList = [self.dictionary[@"showInAddressList"] boolValue];
    return _showInAddressList;
}

- (void) setShowInAddressList: (BOOL) val
{
    _showInAddressList = val;
    self.dictionary[@"showInAddressList"] = @(val);
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

- (NSString*) usageLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"usageLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"usageLocation"];
}

- (void) setUsageLocation: (NSString*) val
{
    self.dictionary[@"usageLocation"] = val;
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

- (NSString*) userType
{
    if([[NSNull null] isEqual:self.dictionary[@"userType"]])
    {
        return nil;
    }   
    return self.dictionary[@"userType"];
}

- (void) setUserType: (NSString*) val
{
    self.dictionary[@"userType"] = val;
}

- (NSArray*) schools
{
    if(!_schools){
        
    NSMutableArray *schoolsResult = [NSMutableArray array];
    NSArray *schools = self.dictionary[@"schools"];

    if ([schools isKindOfClass:[NSArray class]]){
        for (id tempEducationSchool in schools){
            [schoolsResult addObject:tempEducationSchool];
        }
    }

    _schools = schoolsResult;
        
    }
    return _schools;
}

- (void) setSchools: (NSArray*) val
{
    _schools = val;
    self.dictionary[@"schools"] = val;
}

- (NSArray*) classes
{
    if(!_classes){
        
    NSMutableArray *classesResult = [NSMutableArray array];
    NSArray *classes = self.dictionary[@"classes"];

    if ([classes isKindOfClass:[NSArray class]]){
        for (id tempEducationClass in classes){
            [classesResult addObject:tempEducationClass];
        }
    }

    _classes = classesResult;
        
    }
    return _classes;
}

- (void) setClasses: (NSArray*) val
{
    _classes = val;
    self.dictionary[@"classes"] = val;
}

- (MSGraphUser*) user
{
    if(!_user){
        _user = [[MSGraphUser alloc] initWithDictionary: self.dictionary[@"user"]];
    }
    return _user;
}

- (void) setUser: (MSGraphUser*) val
{
    _user = val;
    self.dictionary[@"user"] = val;
}


@end
