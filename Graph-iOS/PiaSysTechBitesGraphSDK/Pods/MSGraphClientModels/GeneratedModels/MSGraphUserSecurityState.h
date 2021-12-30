// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEmailRole.h"
#import "MSGraphLogonType.h"
#import "MSGraphUserAccountSecurityType.h"


#import "MSObject.h"

@interface MSGraphUserSecurityState : MSObject

@property (nullable, nonatomic, setter=setAadUserId:, getter=aadUserId) NSString* aadUserId;
@property (nullable, nonatomic, setter=setAccountName:, getter=accountName) NSString* accountName;
@property (nullable, nonatomic, setter=setDomainName:, getter=domainName) NSString* domainName;
@property (nullable, nonatomic, setter=setEmailRole:, getter=emailRole) MSGraphEmailRole* emailRole;
@property (nonatomic, setter=setIsVpn:, getter=isVpn) BOOL isVpn;
@property (nullable, nonatomic, setter=setLogonDateTime:, getter=logonDateTime) NSDate* logonDateTime;
@property (nullable, nonatomic, setter=setLogonId:, getter=logonId) NSString* logonId;
@property (nullable, nonatomic, setter=setLogonIp:, getter=logonIp) NSString* logonIp;
@property (nullable, nonatomic, setter=setLogonLocation:, getter=logonLocation) NSString* logonLocation;
@property (nullable, nonatomic, setter=setLogonType:, getter=logonType) MSGraphLogonType* logonType;
@property (nullable, nonatomic, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString* onPremisesSecurityIdentifier;
@property (nullable, nonatomic, setter=setRiskScore:, getter=riskScore) NSString* riskScore;
@property (nullable, nonatomic, setter=setUserAccountType:, getter=userAccountType) MSGraphUserAccountSecurityType* userAccountType;
@property (nullable, nonatomic, setter=setUserPrincipalName:, getter=userPrincipalName) NSString* userPrincipalName;

@end
