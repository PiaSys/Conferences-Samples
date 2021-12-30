// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphHostSecurityState()
{
    NSString* _fqdn;
    BOOL _isAzureAdJoined;
    BOOL _isAzureAdRegistered;
    BOOL _isHybridAzureDomainJoined;
    NSString* _netBiosName;
    NSString* _os;
    NSString* _privateIpAddress;
    NSString* _publicIpAddress;
    NSString* _riskScore;
}
@end

@implementation MSGraphHostSecurityState

- (NSString*) fqdn
{
    if([[NSNull null] isEqual:self.dictionary[@"fqdn"]])
    {
        return nil;
    }   
    return self.dictionary[@"fqdn"];
}

- (void) setFqdn: (NSString*) val
{
    self.dictionary[@"fqdn"] = val;
}

- (BOOL) isAzureAdJoined
{
    _isAzureAdJoined = [self.dictionary[@"isAzureAdJoined"] boolValue];
    return _isAzureAdJoined;
}

- (void) setIsAzureAdJoined: (BOOL) val
{
    _isAzureAdJoined = val;
    self.dictionary[@"isAzureAdJoined"] = @(val);
}

- (BOOL) isAzureAdRegistered
{
    _isAzureAdRegistered = [self.dictionary[@"isAzureAdRegistered"] boolValue];
    return _isAzureAdRegistered;
}

- (void) setIsAzureAdRegistered: (BOOL) val
{
    _isAzureAdRegistered = val;
    self.dictionary[@"isAzureAdRegistered"] = @(val);
}

- (BOOL) isHybridAzureDomainJoined
{
    _isHybridAzureDomainJoined = [self.dictionary[@"isHybridAzureDomainJoined"] boolValue];
    return _isHybridAzureDomainJoined;
}

- (void) setIsHybridAzureDomainJoined: (BOOL) val
{
    _isHybridAzureDomainJoined = val;
    self.dictionary[@"isHybridAzureDomainJoined"] = @(val);
}

- (NSString*) netBiosName
{
    if([[NSNull null] isEqual:self.dictionary[@"netBiosName"]])
    {
        return nil;
    }   
    return self.dictionary[@"netBiosName"];
}

- (void) setNetBiosName: (NSString*) val
{
    self.dictionary[@"netBiosName"] = val;
}

- (NSString*) os
{
    if([[NSNull null] isEqual:self.dictionary[@"os"]])
    {
        return nil;
    }   
    return self.dictionary[@"os"];
}

- (void) setOs: (NSString*) val
{
    self.dictionary[@"os"] = val;
}

- (NSString*) privateIpAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"privateIpAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"privateIpAddress"];
}

- (void) setPrivateIpAddress: (NSString*) val
{
    self.dictionary[@"privateIpAddress"] = val;
}

- (NSString*) publicIpAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"publicIpAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"publicIpAddress"];
}

- (void) setPublicIpAddress: (NSString*) val
{
    self.dictionary[@"publicIpAddress"] = val;
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

@end
