// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsFirewallNetworkProfile()
{
    MSGraphStateManagementSetting* _firewallEnabled;
    BOOL _stealthModeBlocked;
    BOOL _incomingTrafficBlocked;
    BOOL _unicastResponsesToMulticastBroadcastsBlocked;
    BOOL _inboundNotificationsBlocked;
    BOOL _authorizedApplicationRulesFromGroupPolicyMerged;
    BOOL _globalPortRulesFromGroupPolicyMerged;
    BOOL _connectionSecurityRulesFromGroupPolicyMerged;
    BOOL _outboundConnectionsBlocked;
    BOOL _inboundConnectionsBlocked;
    BOOL _securedPacketExemptionAllowed;
    BOOL _policyRulesFromGroupPolicyMerged;
}
@end

@implementation MSGraphWindowsFirewallNetworkProfile

- (MSGraphStateManagementSetting*) firewallEnabled
{
    if(!_firewallEnabled){
        _firewallEnabled = [self.dictionary[@"firewallEnabled"] toMSGraphStateManagementSetting];
    }
    return _firewallEnabled;
}

- (void) setFirewallEnabled: (MSGraphStateManagementSetting*) val
{
    _firewallEnabled = val;
    self.dictionary[@"firewallEnabled"] = val;
}

- (BOOL) stealthModeBlocked
{
    _stealthModeBlocked = [self.dictionary[@"stealthModeBlocked"] boolValue];
    return _stealthModeBlocked;
}

- (void) setStealthModeBlocked: (BOOL) val
{
    _stealthModeBlocked = val;
    self.dictionary[@"stealthModeBlocked"] = @(val);
}

- (BOOL) incomingTrafficBlocked
{
    _incomingTrafficBlocked = [self.dictionary[@"incomingTrafficBlocked"] boolValue];
    return _incomingTrafficBlocked;
}

- (void) setIncomingTrafficBlocked: (BOOL) val
{
    _incomingTrafficBlocked = val;
    self.dictionary[@"incomingTrafficBlocked"] = @(val);
}

- (BOOL) unicastResponsesToMulticastBroadcastsBlocked
{
    _unicastResponsesToMulticastBroadcastsBlocked = [self.dictionary[@"unicastResponsesToMulticastBroadcastsBlocked"] boolValue];
    return _unicastResponsesToMulticastBroadcastsBlocked;
}

- (void) setUnicastResponsesToMulticastBroadcastsBlocked: (BOOL) val
{
    _unicastResponsesToMulticastBroadcastsBlocked = val;
    self.dictionary[@"unicastResponsesToMulticastBroadcastsBlocked"] = @(val);
}

- (BOOL) inboundNotificationsBlocked
{
    _inboundNotificationsBlocked = [self.dictionary[@"inboundNotificationsBlocked"] boolValue];
    return _inboundNotificationsBlocked;
}

- (void) setInboundNotificationsBlocked: (BOOL) val
{
    _inboundNotificationsBlocked = val;
    self.dictionary[@"inboundNotificationsBlocked"] = @(val);
}

- (BOOL) authorizedApplicationRulesFromGroupPolicyMerged
{
    _authorizedApplicationRulesFromGroupPolicyMerged = [self.dictionary[@"authorizedApplicationRulesFromGroupPolicyMerged"] boolValue];
    return _authorizedApplicationRulesFromGroupPolicyMerged;
}

- (void) setAuthorizedApplicationRulesFromGroupPolicyMerged: (BOOL) val
{
    _authorizedApplicationRulesFromGroupPolicyMerged = val;
    self.dictionary[@"authorizedApplicationRulesFromGroupPolicyMerged"] = @(val);
}

- (BOOL) globalPortRulesFromGroupPolicyMerged
{
    _globalPortRulesFromGroupPolicyMerged = [self.dictionary[@"globalPortRulesFromGroupPolicyMerged"] boolValue];
    return _globalPortRulesFromGroupPolicyMerged;
}

- (void) setGlobalPortRulesFromGroupPolicyMerged: (BOOL) val
{
    _globalPortRulesFromGroupPolicyMerged = val;
    self.dictionary[@"globalPortRulesFromGroupPolicyMerged"] = @(val);
}

- (BOOL) connectionSecurityRulesFromGroupPolicyMerged
{
    _connectionSecurityRulesFromGroupPolicyMerged = [self.dictionary[@"connectionSecurityRulesFromGroupPolicyMerged"] boolValue];
    return _connectionSecurityRulesFromGroupPolicyMerged;
}

- (void) setConnectionSecurityRulesFromGroupPolicyMerged: (BOOL) val
{
    _connectionSecurityRulesFromGroupPolicyMerged = val;
    self.dictionary[@"connectionSecurityRulesFromGroupPolicyMerged"] = @(val);
}

- (BOOL) outboundConnectionsBlocked
{
    _outboundConnectionsBlocked = [self.dictionary[@"outboundConnectionsBlocked"] boolValue];
    return _outboundConnectionsBlocked;
}

- (void) setOutboundConnectionsBlocked: (BOOL) val
{
    _outboundConnectionsBlocked = val;
    self.dictionary[@"outboundConnectionsBlocked"] = @(val);
}

- (BOOL) inboundConnectionsBlocked
{
    _inboundConnectionsBlocked = [self.dictionary[@"inboundConnectionsBlocked"] boolValue];
    return _inboundConnectionsBlocked;
}

- (void) setInboundConnectionsBlocked: (BOOL) val
{
    _inboundConnectionsBlocked = val;
    self.dictionary[@"inboundConnectionsBlocked"] = @(val);
}

- (BOOL) securedPacketExemptionAllowed
{
    _securedPacketExemptionAllowed = [self.dictionary[@"securedPacketExemptionAllowed"] boolValue];
    return _securedPacketExemptionAllowed;
}

- (void) setSecuredPacketExemptionAllowed: (BOOL) val
{
    _securedPacketExemptionAllowed = val;
    self.dictionary[@"securedPacketExemptionAllowed"] = @(val);
}

- (BOOL) policyRulesFromGroupPolicyMerged
{
    _policyRulesFromGroupPolicyMerged = [self.dictionary[@"policyRulesFromGroupPolicyMerged"] boolValue];
    return _policyRulesFromGroupPolicyMerged;
}

- (void) setPolicyRulesFromGroupPolicyMerged: (BOOL) val
{
    _policyRulesFromGroupPolicyMerged = val;
    self.dictionary[@"policyRulesFromGroupPolicyMerged"] = @(val);
}

@end
