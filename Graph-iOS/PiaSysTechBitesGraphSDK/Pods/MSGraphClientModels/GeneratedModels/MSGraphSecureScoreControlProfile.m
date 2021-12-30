// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSecureScoreControlProfile()
{
    NSString* _actionType;
    NSString* _actionUrl;
    NSString* _azureTenantId;
    NSArray* _complianceInformation;
    NSString* _controlCategory;
    NSArray* _controlStateUpdates;
    BOOL _deprecated;
    NSString* _implementationCost;
    NSDate* _lastModifiedDateTime;
    double _maxScore;
    int32_t _rank;
    NSString* _remediation;
    NSString* _remediationImpact;
    NSString* _service;
    NSArray* _threats;
    NSString* _tier;
    NSString* _title;
    NSString* _userImpact;
    MSGraphSecurityVendorInformation* _vendorInformation;
}
@end

@implementation MSGraphSecureScoreControlProfile

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.secureScoreControlProfile";
    }
    return self;
}
- (NSString*) actionType
{
    if([[NSNull null] isEqual:self.dictionary[@"actionType"]])
    {
        return nil;
    }   
    return self.dictionary[@"actionType"];
}

- (void) setActionType: (NSString*) val
{
    self.dictionary[@"actionType"] = val;
}

- (NSString*) actionUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"actionUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"actionUrl"];
}

- (void) setActionUrl: (NSString*) val
{
    self.dictionary[@"actionUrl"] = val;
}

- (NSString*) azureTenantId
{
    return self.dictionary[@"azureTenantId"];
}

- (void) setAzureTenantId: (NSString*) val
{
    self.dictionary[@"azureTenantId"] = val;
}

- (NSArray*) complianceInformation
{
    if(!_complianceInformation){
        
    NSMutableArray *complianceInformationResult = [NSMutableArray array];
    NSArray *complianceInformation = self.dictionary[@"complianceInformation"];

    if ([complianceInformation isKindOfClass:[NSArray class]]){
        for (id tempComplianceInformation in complianceInformation){
            [complianceInformationResult addObject:tempComplianceInformation];
        }
    }

    _complianceInformation = complianceInformationResult;
        
    }
    return _complianceInformation;
}

- (void) setComplianceInformation: (NSArray*) val
{
    _complianceInformation = val;
    self.dictionary[@"complianceInformation"] = val;
}

- (NSString*) controlCategory
{
    if([[NSNull null] isEqual:self.dictionary[@"controlCategory"]])
    {
        return nil;
    }   
    return self.dictionary[@"controlCategory"];
}

- (void) setControlCategory: (NSString*) val
{
    self.dictionary[@"controlCategory"] = val;
}

- (NSArray*) controlStateUpdates
{
    if(!_controlStateUpdates){
        
    NSMutableArray *controlStateUpdatesResult = [NSMutableArray array];
    NSArray *controlStateUpdates = self.dictionary[@"controlStateUpdates"];

    if ([controlStateUpdates isKindOfClass:[NSArray class]]){
        for (id tempSecureScoreControlStateUpdate in controlStateUpdates){
            [controlStateUpdatesResult addObject:tempSecureScoreControlStateUpdate];
        }
    }

    _controlStateUpdates = controlStateUpdatesResult;
        
    }
    return _controlStateUpdates;
}

- (void) setControlStateUpdates: (NSArray*) val
{
    _controlStateUpdates = val;
    self.dictionary[@"controlStateUpdates"] = val;
}

- (BOOL) deprecated
{
    _deprecated = [self.dictionary[@"deprecated"] boolValue];
    return _deprecated;
}

- (void) setDeprecated: (BOOL) val
{
    _deprecated = val;
    self.dictionary[@"deprecated"] = @(val);
}

- (NSString*) implementationCost
{
    if([[NSNull null] isEqual:self.dictionary[@"implementationCost"]])
    {
        return nil;
    }   
    return self.dictionary[@"implementationCost"];
}

- (void) setImplementationCost: (NSString*) val
{
    self.dictionary[@"implementationCost"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (double) maxScore
{
    _maxScore = [self.dictionary[@"maxScore"] floatValue];
    return _maxScore;
}

- (void) setMaxScore: (double) val
{
    _maxScore = val;
    self.dictionary[@"maxScore"] = @(val);
}

- (int32_t) rank
{
    _rank = [self.dictionary[@"rank"] intValue];
    return _rank;
}

- (void) setRank: (int32_t) val
{
    _rank = val;
    self.dictionary[@"rank"] = @(val);
}

- (NSString*) remediation
{
    if([[NSNull null] isEqual:self.dictionary[@"remediation"]])
    {
        return nil;
    }   
    return self.dictionary[@"remediation"];
}

- (void) setRemediation: (NSString*) val
{
    self.dictionary[@"remediation"] = val;
}

- (NSString*) remediationImpact
{
    if([[NSNull null] isEqual:self.dictionary[@"remediationImpact"]])
    {
        return nil;
    }   
    return self.dictionary[@"remediationImpact"];
}

- (void) setRemediationImpact: (NSString*) val
{
    self.dictionary[@"remediationImpact"] = val;
}

- (NSString*) service
{
    if([[NSNull null] isEqual:self.dictionary[@"service"]])
    {
        return nil;
    }   
    return self.dictionary[@"service"];
}

- (void) setService: (NSString*) val
{
    self.dictionary[@"service"] = val;
}

- (NSArray*) threats
{
    if([[NSNull null] isEqual:self.dictionary[@"threats"]])
    {
        return nil;
    }   
    return self.dictionary[@"threats"];
}

- (void) setThreats: (NSArray*) val
{
    self.dictionary[@"threats"] = val;
}

- (NSString*) tier
{
    if([[NSNull null] isEqual:self.dictionary[@"tier"]])
    {
        return nil;
    }   
    return self.dictionary[@"tier"];
}

- (void) setTier: (NSString*) val
{
    self.dictionary[@"tier"] = val;
}

- (NSString*) title
{
    if([[NSNull null] isEqual:self.dictionary[@"title"]])
    {
        return nil;
    }   
    return self.dictionary[@"title"];
}

- (void) setTitle: (NSString*) val
{
    self.dictionary[@"title"] = val;
}

- (NSString*) userImpact
{
    if([[NSNull null] isEqual:self.dictionary[@"userImpact"]])
    {
        return nil;
    }   
    return self.dictionary[@"userImpact"];
}

- (void) setUserImpact: (NSString*) val
{
    self.dictionary[@"userImpact"] = val;
}

- (MSGraphSecurityVendorInformation*) vendorInformation
{
    if(!_vendorInformation){
        _vendorInformation = [[MSGraphSecurityVendorInformation alloc] initWithDictionary: self.dictionary[@"vendorInformation"]];
    }
    return _vendorInformation;
}

- (void) setVendorInformation: (MSGraphSecurityVendorInformation*) val
{
    _vendorInformation = val;
    self.dictionary[@"vendorInformation"] = val;
}


@end
