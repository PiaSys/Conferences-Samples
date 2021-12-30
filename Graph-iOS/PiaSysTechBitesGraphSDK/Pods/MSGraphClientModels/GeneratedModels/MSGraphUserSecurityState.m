// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUserSecurityState()
{
    NSString* _aadUserId;
    NSString* _accountName;
    NSString* _domainName;
    MSGraphEmailRole* _emailRole;
    BOOL _isVpn;
    NSDate* _logonDateTime;
    NSString* _logonId;
    NSString* _logonIp;
    NSString* _logonLocation;
    MSGraphLogonType* _logonType;
    NSString* _onPremisesSecurityIdentifier;
    NSString* _riskScore;
    MSGraphUserAccountSecurityType* _userAccountType;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphUserSecurityState

- (NSString*) aadUserId
{
    if([[NSNull null] isEqual:self.dictionary[@"aadUserId"]])
    {
        return nil;
    }   
    return self.dictionary[@"aadUserId"];
}

- (void) setAadUserId: (NSString*) val
{
    self.dictionary[@"aadUserId"] = val;
}

- (NSString*) accountName
{
    if([[NSNull null] isEqual:self.dictionary[@"accountName"]])
    {
        return nil;
    }   
    return self.dictionary[@"accountName"];
}

- (void) setAccountName: (NSString*) val
{
    self.dictionary[@"accountName"] = val;
}

- (NSString*) domainName
{
    if([[NSNull null] isEqual:self.dictionary[@"domainName"]])
    {
        return nil;
    }   
    return self.dictionary[@"domainName"];
}

- (void) setDomainName: (NSString*) val
{
    self.dictionary[@"domainName"] = val;
}

- (MSGraphEmailRole*) emailRole
{
    if(!_emailRole){
        _emailRole = [self.dictionary[@"emailRole"] toMSGraphEmailRole];
    }
    return _emailRole;
}

- (void) setEmailRole: (MSGraphEmailRole*) val
{
    _emailRole = val;
    self.dictionary[@"emailRole"] = val;
}

- (BOOL) isVpn
{
    _isVpn = [self.dictionary[@"isVpn"] boolValue];
    return _isVpn;
}

- (void) setIsVpn: (BOOL) val
{
    _isVpn = val;
    self.dictionary[@"isVpn"] = @(val);
}

- (NSDate*) logonDateTime
{
    if(!_logonDateTime){
        _logonDateTime = [NSDate ms_dateFromString: self.dictionary[@"logonDateTime"]];
    }
    return _logonDateTime;
}

- (void) setLogonDateTime: (NSDate*) val
{
    _logonDateTime = val;
    self.dictionary[@"logonDateTime"] = [val ms_toString];
}

- (NSString*) logonId
{
    if([[NSNull null] isEqual:self.dictionary[@"logonId"]])
    {
        return nil;
    }   
    return self.dictionary[@"logonId"];
}

- (void) setLogonId: (NSString*) val
{
    self.dictionary[@"logonId"] = val;
}

- (NSString*) logonIp
{
    if([[NSNull null] isEqual:self.dictionary[@"logonIp"]])
    {
        return nil;
    }   
    return self.dictionary[@"logonIp"];
}

- (void) setLogonIp: (NSString*) val
{
    self.dictionary[@"logonIp"] = val;
}

- (NSString*) logonLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"logonLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"logonLocation"];
}

- (void) setLogonLocation: (NSString*) val
{
    self.dictionary[@"logonLocation"] = val;
}

- (MSGraphLogonType*) logonType
{
    if(!_logonType){
        _logonType = [self.dictionary[@"logonType"] toMSGraphLogonType];
    }
    return _logonType;
}

- (void) setLogonType: (MSGraphLogonType*) val
{
    _logonType = val;
    self.dictionary[@"logonType"] = val;
}

- (NSString*) onPremisesSecurityIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"onPremisesSecurityIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"onPremisesSecurityIdentifier"];
}

- (void) setOnPremisesSecurityIdentifier: (NSString*) val
{
    self.dictionary[@"onPremisesSecurityIdentifier"] = val;
}

- (NSString*) riskScore
{
    if([[NSNull null] isEqual:self.dictionary[@"riskScore"]])
    {
        return nil;
    }   
    return self.dictionary[@"riskScore"];
}

- (void) setRiskScore: (NSString*) val
{
    self.dictionary[@"riskScore"] = val;
}

- (MSGraphUserAccountSecurityType*) userAccountType
{
    if(!_userAccountType){
        _userAccountType = [self.dictionary[@"userAccountType"] toMSGraphUserAccountSecurityType];
    }
    return _userAccountType;
}

- (void) setUserAccountType: (MSGraphUserAccountSecurityType*) val
{
    _userAccountType = val;
    self.dictionary[@"userAccountType"] = val;
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

@end
